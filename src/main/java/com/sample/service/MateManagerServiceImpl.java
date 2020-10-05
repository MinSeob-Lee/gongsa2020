package com.sample.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.HallDao;
import com.sample.dao.MateDao;
import com.sample.dao.PerformanceDao;
import com.sample.dao.ReserveDao;
import com.sample.dto.JsonHallSeat;
import com.sample.web.form.MateForm;
import com.sample.web.view.HallInfo;
import com.sample.web.view.Mate;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;

@Service
public class MateManagerServiceImpl implements MateManagerService{


	@Autowired
	PerformanceDao performanceDao;

	@Autowired
	HallDao hallDao;

	@Autowired
	MateDao mateDao;
	
	@Autowired
	ReserveDao reserveDao;
	

	@Transactional
	public void addMate(MateForm mateForm) {
		//performance_main insert

		PerformanceSchedule performance = new PerformanceSchedule();
		performance.setInfoId(mateForm.getPerformance().getInfoId());
		HallInfo hallinfo = new HallInfo();
		hallinfo.setId(mateForm.getPerformance().getHallId());
		performance.setHallinfo(hallinfo);
		performance.setShowDate(mateForm.getPerformance().getShowDate());
		performance.setShowTime(mateForm.getPerformance().getShowTime()+":00");
		performance.setShowNumber(mateForm.getPerformance().getShowNumber());
		//퍼포먼스 인서트하기
		performanceDao.insertPerformanceSchedule(performance);

		//mate Seat그룹 만들기
		List<JsonHallSeat> list = mateForm.getSeats();

		
		List<JsonHallSeat> distinctList = new ArrayList<>();
		//인서트할 List :: mate, hall
		List<Mate> mates = new ArrayList<>();
		List<JsonHallSeat> seats = new ArrayList<>();
		for(int i = 0; i < list.size(); i++) {
			
			if(!distinctList.contains(list.get(i))) {
				Mate mate = new Mate();
				System.out.println(list.get(i));
				String firstSeat = list.get(i).getSeatBlock();
				int firstRow = list.get(i).getSeatRow();
				int firstCol = list.get(i).getSeatCol();

				int mateSize = list.get(i).getGroupSize() - 1;
				String secondSeat = list.get(i + mateSize).getSeatBlock();
				int secondRow = list.get(i + mateSize).getSeatRow();
				int secondCol = list.get(i + mateSize).getSeatCol();

				StringBuffer seatGroup = new StringBuffer();
				seatGroup.append(firstSeat).append(firstRow).append("-").append(firstCol).append("~")
					.append(secondSeat).append(secondRow).append("-").append(secondCol);
				
				
				Performance performanceMain = new Performance();
				//인서트한 퍼포먼스 얻어오기, mate객체의 performanceSchedul 대신 performance를 편의상 넣는다. 퍼포먼스 id 만 필요하기에..
				performanceMain.setId(performance.getId());
				mate.setPerformance(performanceMain);
				mate.setSeatGroup(seatGroup.toString());
				//메이트Groupsize에 ajax로부터 받아온 제한 인원수를 넣는다.
				mate.setGroupsize(list.get(i).getGroupSize());
				mate.setSeatRate(list.get(i).getSeatRate());
				mate.setCategoryId((list.get(i).getCategoryId() > 0 )? list.get(i).getCategoryId() : 20 );

				
				mates.add(mate);
				distinctList.add(list.get(i));
				
			}
		
		}
		
		for(JsonHallSeat seat : list) {
			//홀Seat객체 생성
			JsonHallSeat hallSeat = new JsonHallSeat();
			//익서트한 퍼포먼스아이디 입력
			hallSeat.setPerformanceId(performance.getId());
			hallSeat.setSeatBlock(seat.getSeatBlock());
			hallSeat.setHallId(mateForm.getPerformance().getHallId());
			hallSeat.setSeatRow(seat.getSeatRow());
			hallSeat.setSeatCol(seat.getSeatCol());
			hallSeat.setSeatRate(seat.getSeatRate());

			seats.add(hallSeat);
		}
		List<Integer> mateIdArray = new ArrayList<>();
		for(Mate mate : mates) {
			mateDao.insertMate(mate);
			for(int i = 0; i < mate.getGroupsize(); i++) {
				mateIdArray.add(mate.getId());
			}
		}
		int seatSize = seats.size();
		for(int i = 0; i < seatSize; i++) {
			seats.get(i).setMateNo(mateIdArray.get(i));
			hallDao.insertHallSeats(seats.get(i));
		}
		
	}
	
	public void addMateCat(int id, String category) {
		mateDao.insertMateCat(id,category);
	}
	public int countMate(List<JsonHallSeat> list) {
		List<JsonHallSeat> mates = new ArrayList<>();
		for(JsonHallSeat mate : list) {
			if(mate.getMateNo() != 0){
				mates.add(mate);
			}
		}
		
		
		List<JsonHallSeat> distinctList = new ArrayList<>();
		distinctList.addAll(mates.stream().collect(Collectors.toConcurrentMap(JsonHallSeat::getMateNo, Function.identity(), (p, q) -> p)).values());
		for(JsonHallSeat seat : distinctList) {
			System.out.println(seat);
		}
		return distinctList.size();
	}
	public List<JsonHallSeat> getHallSeats(int performanceId) {
		return hallDao.getHallSeats(performanceId);
	}
	/**
	 * 기존에 있는 mate들을 모두 삭제하고 해당 performanceI에 새롭게 갱신시킨다.
	 */
	@Transactional
	public void updateMate(MateForm mateForm) {
		//hall_seats 테이블에서 performanceId 에 해당하는 모든 hall_seats를 삭제시킨다.
		hallDao.deleteAllHallSeatsByPerformanceId(mateForm.getPerformance().getId());
		
		//reserve_main 테이블에서 performanceId 에 해당하는 user의 mateId를 모두  null 시킨다.
		reserveDao.updateMateIdToNull(mateForm.getPerformance().getId());
		
		//mate_tag 테이블에서 performanceId 에 해당하는 모든 mate_tag를 삭제한다.
		mateDao.deleteMateTagByPerformanceId(mateForm.getPerformance().getId());
		
		//mate_timeline 테이블에서 performanceId에 해당하는 모든 mate_timeline 을 삭제한다.
		mateDao.deleteMateTimeLineByPerformanceId(mateForm.getPerformance().getId());
		
		//mate_memebers 테이블에서 performanceId에 해당하는 mateMemeber를 모두 삭제한다.
		mateDao.deleteMateMemberByPerformanceId(mateForm.getPerformance().getId());

		//mate_main 테이블에서 performanceId 에 해당하는 mate를 모두 삭제한다.
		mateDao.deleteMateMainByPerformanceId(mateForm.getPerformance().getId());

		//mate Seat그룹 만들기
		List<JsonHallSeat> list = mateForm.getSeats();

		
		List<JsonHallSeat> distinctList = new ArrayList<>();
		//인서트할 List :: mate, hall
		List<Mate> mates = new ArrayList<>();
		List<JsonHallSeat> seats = new ArrayList<>();
		for(int i = 0; i < list.size(); i++) {
			
			if(!distinctList.contains(list.get(i))) {
				Mate mate = new Mate();
				System.out.println(list.get(i));
				String firstSeat = list.get(i).getSeatBlock();
				int firstRow = list.get(i).getSeatRow();
				int firstCol = list.get(i).getSeatCol();

				int mateSize = list.get(i).getGroupSize() - 1;
				String secondSeat = list.get(i + mateSize).getSeatBlock();
				int secondRow = list.get(i + mateSize).getSeatRow();
				int secondCol = list.get(i + mateSize).getSeatCol();

				StringBuffer seatGroup = new StringBuffer();
				seatGroup.append(firstSeat).append(firstRow).append("-").append(firstCol).append("~")
					.append(secondSeat).append(secondRow).append("-").append(secondCol);
				
				
				Performance performanceMain = new Performance();
				//인서트한 퍼포먼스 얻어오기, mate객체의 performanceSchedul 대신 performance를 편의상 넣는다. 퍼포먼스 id 만 필요하기에..
				performanceMain.setId(mateForm.getPerformance().getId());
				mate.setPerformance(performanceMain);
				mate.setSeatGroup(seatGroup.toString());
				//메이트Groupsize에 ajax로부터 받아온 제한 인원수를 넣는다.
				mate.setGroupsize(list.get(i).getGroupSize());
				mate.setSeatRate(list.get(i).getSeatRate());
				mate.setCategoryId((list.get(i).getCategoryId() > 0 )? list.get(i).getCategoryId() : 20 );

				
				mates.add(mate);
				distinctList.add(list.get(i));
				
			}
		
		}
		
		for(JsonHallSeat seat : list) {
			//홀Seat객체 생성
			JsonHallSeat hallSeat = new JsonHallSeat();
			//익서트한 퍼포먼스아이디 입력
			hallSeat.setPerformanceId(mateForm.getPerformance().getId());
			hallSeat.setSeatBlock(seat.getSeatBlock());
			hallSeat.setHallId(mateForm.getPerformance().getHallId());
			hallSeat.setSeatRow(seat.getSeatRow());
			hallSeat.setSeatCol(seat.getSeatCol());
			hallSeat.setSeatRate(seat.getSeatRate());

			seats.add(hallSeat);
		}
		List<Integer> mateIdArray = new ArrayList<>();
		for(Mate mate : mates) {
			mateDao.insertMate(mate);
			for(int i = 0; i < mate.getGroupsize(); i++) {
				mateIdArray.add(mate.getId());
			}
		}
		int seatSize = seats.size();
		for(int i = 0; i < seatSize; i++) {
			seats.get(i).setMateNo(mateIdArray.get(i));
			hallDao.insertHallSeats(seats.get(i));
		}

	}
	@Transactional
	public void deleteMate(int performanceId) {
		//hall_seats 테이블에서 performanceId 에 해당하는 모든 hall_seats를 삭제시킨다.
		hallDao.deleteAllHallSeatsByPerformanceId(performanceId);

		//reserve_main 테이블에서 performanceId 에 해당하는 user의 mateId를 모두  null 시킨다.
		reserveDao.updateMateIdToNull(performanceId);

		//mate_timeline 테이블에서 performanceId에 해당하는 모든 mate_timeline 을 삭제한다.
		mateDao.deleteMateTimeLineByPerformanceId(performanceId);
		
		//mate_tag 테이블에서 performanceId 에 해당하는 모든 mate_tag를 삭제한다.
		mateDao.deleteMateTagByPerformanceId(performanceId);

		//mate_memebers 테이블에서 performanceId에 해당하는 mateMemeber를 모두 삭제한다.
		mateDao.deleteMateMemberByPerformanceId(performanceId);

		//mate_main 테이블에서 performanceId 에 해당하는 mate를 모두 삭제한다.
		mateDao.deleteMateMainByPerformanceId(performanceId);
		
		//performance_main 테이블삭제
		performanceDao.deletePerformanceMainByPerformanceId(performanceId);
		
	}
}