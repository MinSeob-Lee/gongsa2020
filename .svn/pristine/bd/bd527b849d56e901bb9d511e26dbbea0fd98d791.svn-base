package com.sample.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.MateDao;
import com.sample.dao.PaymentDao;
import com.sample.dao.PerformanceDao;
import com.sample.dao.ReserveDao;
import com.sample.dao.UserDao;
import com.sample.dto.MateDetailDto;
import com.sample.dto.MateUserDto;
import com.sample.dto.PerformanceDetailDto;
import com.sample.web.form.MateSearchForm;
import com.sample.web.view.Mate;
import com.sample.web.view.MateTag;
import com.sample.web.view.MateTimeLine;
import com.sample.web.view.Pagination;
import com.sample.web.view.Payment;
import com.sample.web.view.Performance;
import com.sample.web.view.Reserve;
import com.sample.web.view.User;

@Service
public class MateServiceImpl implements MateService {
	

	@Autowired
	MateDao mateDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	PaymentDao paymentDao;
	
	@Autowired
	ReserveDao reserveDao;

	@Autowired
	PerformanceDao performanceDao;
	
	/**
	 * 특정 메이트 방에 해시태그를 등록하는 서비스 기능
	 */
	@Transactional
	public List<MateTag> addHashTag(int mateId, List<String> mateTags) {
		//mate테이블에 mateId에 따른 해당 메이트가 있는지 검사한다.
		isExistMateException(mateId);

		//먼저 해당 mate 룸의 해시태글 모두 삭제한다.
		mateDao.deleteMateTagAllByMateId(mateId);
		List<MateTag> savedmateTags = new ArrayList<>();

		//mateTags가 빈값인지 검사한다.
		if(!mateTags.isEmpty()) {
			
			//mateTags List 의 값을 정제하고, 모두 DB에 저장한다.
			for(String tag : mateTags) {
				MateTag mateTag = new MateTag();
				mateTag.setMateId(mateId);
				String tagName = tag.replace("[", "").replace("]", "").replace("\"", "");
				mateTag.setTagName(tagName);
				
				mateDao.insertMateTag(mateTag);
				savedmateTags.add(mateTag);
			}
		} else {
			//빈값일 경우에 mateTag를 하나만 입력하고,아무것도 입력하지 않는다.
			MateTag mateTag = new MateTag();
			mateTag.setMateId(mateId);
			mateTag.setTagName("");
			mateDao.insertMateTag(mateTag);
		}
		// 저장된 mateTag List 를 반환한다.
		return savedmateTags;
	}
	
	@Override
	public void addMate(Mate mate) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * mateId와 User 객체를 넣어서 해당 메이트를 방에 참여시킨다.
	 */
	@Transactional
	public void addMateMember(int mateId, User newMember, int performanceId) {
		// 해당 방이 있는지 조회한다.
//		-- SELECT * FROM mate_main WHERE id = 6;
		// 해당 유저가 결제했는지 여부를 조회한다.
		// reserve_main 테이블에서 해당 회차에  예약 여부를 조회한다.
		// 
		// 해당 메이트방 제한 인원을 조회한다.
		// 제한 인원 미만이면  insert 한다.
//		-- insert into mate_members (userid, id) values ('dahun427', 6)
		
		// 메이트 아이디 있는지 유효성검사
		isExistMateException(mateId);
		
		if(userDao.getUserById(newMember.getId()) == null) {
			throw new RuntimeException("해당 유저가 존재하지 않습니다.");
		}
		Reserve reserve = reserveDao.getReserveByUserIdAndPerformanceId(newMember.getId(), performanceId);
		if(reserve == null) {
			throw new RuntimeException("예약 정보가 없습니다.");
		}
		//해당 유저가 결제했는지 확인한다.
		Payment payment = paymentDao.getPaymentByReserveId(reserve.getId());
		if(payment == null) {
			throw new RuntimeException("결제되지 않은 회원입니다.");
		}
		Mate mate = mateDao.getMateByMateId(mateId);
		reserve.setMate(mate);
		reserveDao.updateReserve(reserve);
		//해당 유저 인서트
		mateDao.insertMateMember(newMember.getId(), mateId);
		// 메이트 타임 라인 자동으로 남기기
		MateTimeLine mateTimeLine = new MateTimeLine();
		mateTimeLine.setId(mateId);
		mateTimeLine.setUser(newMember);
		mateTimeLine.setContent(newMember.getId()+" 님이 입장하셨습니다. 환영해주세요!");
		mateDao.addTimeLine(mateTimeLine);
		
	}
	/**
	 * mateSearchList
	 */
	public Map<String, Object> getMatesByPerformanceIdSearch(int performanceId, String userId,MateSearchForm mateSearchForm) {
		
		
		Map<String, Object> map = new HashMap<>();
		map.put("performanceId", performanceId);
		map.put("userId", userId);
		map.put("categoryId", mateSearchForm.getCategoryId());
		map.put("groupSize", mateSearchForm.getGroupsize());
		map.put("isFull", mateSearchForm.getIsFull());
		map.put("isEmpty", mateSearchForm.getIsEmpty());
		int totalRows = mateDao.getAllMatesCount(map);
		Pagination pagenation = new Pagination(10, 5, mateSearchForm.getPageNo(), totalRows);
		map.put("beginIndex", pagenation.getBeginIndex() -1 );
		map.put("endIndex", pagenation.getEndIndex());
		mateDao.getAllMates(map);
		mateDao.getAllMatesCount(map);
		
		Map<String, Object> searchMap = new HashMap<>();
		searchMap.put("searchList", mateDao.getAllMates(map));
		searchMap.put("searchCount", mateDao.getAllMatesCount(map));

		System.out.println(searchMap);
		return searchMap;
	}
	
	
	/**
     * performanceId에 따른 mate 방의 모든 리스트를 가져온다.
     * @param performanceId
     * @return
     */
	public List<Mate> getMatesByPerformanceId(int performanceId) {
		
		return mateDao.getMatesByPerformanceId(performanceId);
	}
	@Override
	public void insertMateTimeLine(int mateId, MateTimeLine mateTimeLine) {
		// TODO Auto-generated method stub
		
	}
	/**
	 * mate_category 테이블의 모든 카테고리 정보를 가져온다.
	 */
	public List<Map<Integer, String>> getMateAllCategory() {
		return mateDao.getMateAllCategory();
	}
	/**
	 * mate_main 테이블에서 performanceId 에 해당하는 테이블의 숫자를 가져온다.
	 */
	public Integer getCountMateByPerformanceId(int performanceId) {
		return mateDao.getCountMateByPerformanceId(performanceId);
	}
	/**
     * mateId, performanceId 에 해당하는 메이트방의 상세 정보를 조회한다.
     * @param mateId
     * @param performanceId
     * @return
     */
	public MateDetailDto getMateRoomDetail(int mateId, int performanceId) {
		//메이트가 존재하는지 확인
		isExistMateException(mateId);
		
		MateDetailDto matedetail = new MateDetailDto();
		//해당 공연 회차가 존재하는지 확인
		isExistPerformanceTime(performanceId);
		
		//메이트 아이디와 공연회차 아이디로 메이트에 대한 정보 저장
		matedetail.setMate(mateDao.getMateRoomByPerformanceIdAndMateId(mateId, performanceId));
		// 메이트 아이디로 타임라인 정보 저장
		matedetail.setTimeline(mateDao.getMateTimelineByMateId(mateId));
		// 메이트 아이디로 해당 메이트 방 카테고리 정보 저장
		matedetail.setMateCategory(mateDao.getMateCategoryByMateId(mateId));
		
		return matedetail;
	}
	 /**
     * mateId에 해당하는 MateUser에 대한 모든 정보를 가져온다.
     * @param mateId
     * @return
     */
	public List<User> getMateUserByMateId(int mateId) {

		List<User> users = mateDao.getMateUserByMateId(mateId);
		List<User> newUsers = new ArrayList<>();
		for(User user : users) {
			
			User newUser = mateDao.getUserMateInfoById(user.getId());
			newUsers.add(newUser);
		}
		return newUsers;
	}
	 /**
     * mateTimeLine 남기는 기능
     * mateId로 해당 메이트 방을 제한하여 insert 한다.
     * userId로 누가 남겼는지 insert 한다.
     * @param mateId
     * @param userId
     */
	public void addMateTimeLineByMateIdAndUserId(MateTimeLine mateTimeLine) {

		//세션으로부터 userId 여부를 검사한다.
		User user = mateDao.getUserMateInfoById(mateTimeLine.getUser().getId());
		//mate방이 존재하는지 여부를 검사한다.
		Mate mate = mateDao.getMateByMateId(mateTimeLine.getId());
		//해당 user가 mate에 소속되어있는지 검사한다.
		List<User> users = mateDao.getMateUserByMateId(mateTimeLine.getId());
		
		canAccessMate(user,mate,users);
		
		//콘텐트를 받아서 mateDao의 메소드를 실행한다.
		mateDao.addTimeLine(mateTimeLine);
	}
	/**
     * mateId에 해당하는 메이트 방의 타임라인의 갯수를 모두 불러온다.
     * @param mateId
     * @return
     */
	public Map<String, Object> getMateTimeLineCountByMateId(int mateId) {
		List<MateTimeLine> timeLines = mateDao.getMateTimelineByMateId(mateId);
		MateTimeLine time = null;
		Integer count = 0;
		if(timeLines.size() > 0) {
			
			time = timeLines.get(timeLines.size() - 1);
			count = mateDao.getMateTimeLineCountByMateId(mateId);
		}
		Map<String, Object> map = new HashMap<>();
		map.put("count", count);
		map.put("time", time);
		return map;
	}
	  /**
     * categoryId와 mateId 를 받아서 해당 메이트 방의 카테고리를 변경한다.
     * @param categoryId
     * @param mateId
     */
	public void updateMateCategoryByMateId(int categoryId, int mateId) {
		isExistMateException(mateId);
		mateDao.updateMateCategoryByMateId(categoryId,mateId);
	}
	private void canAccessMate(User user, Mate mate, List<User> users) {
		if(user == null) {
			throw new RuntimeException("접근 권한이 없습니다.");
		}
		if(mate == null) {
			throw new RuntimeException("존재하지 않는 메이트 방입니다.");
		}
		User existUser = null;
		for(User savedUser : users) {
			existUser = mateDao.getUserMateInfoById(savedUser.getId());
		}
		if(existUser == null) {
			throw new RuntimeException("접근 권한이 없습니다.");
		}
	
	}
	
	/**
     * mateId와 performanceId 에 해당하는 Mate 방의 member의 총 멤버 숫자를 구한다.
     * @param mateId
     * @param performanceId
     * @return int Count
     */
	public Integer getMateMemberCountInMateByMateId(int mateId, int performanceId) {
		return mateDao.getMateMemberCountInMateByMateId(mateId, performanceId);
	}
	/**
	 * user를 mate에 가입하기 전에 해당 유저가 mate방에 참가할 수 있는지 조건을 알 수 있는 기능
	 * 값이 1 일때만 통과된다.
	 * @param performanceId 해당 공연 main id
	 * @param mateId 해당 mate방의 id
	 * @param userId 유저 id
	 * @return
	 */
	public Map<String, Object> beforAddMateIsPassMate(int performanceId, int mateId, String userId) {
		
		 Map<String, Object> messageMap = new HashMap<>();
		int type = 0;
		String message = "";
		//해당 유저를 메이트 테이블에 인서트한다.
		//해당 유저를 리저브 메인 테이블에 업데이트한다.

		//해당 유저가 리저브 메인테이블에 있는지 확인한다.
		Reserve reserve = reserveDao.getReserveByUserIdAndPerformanceId(userId, performanceId);
		if(reserve == null) {
			message = "예약 정보가없습니다.";
			messageMap.put("type", type);
			messageMap.put("message", message);
			return messageMap;
		}
		//해당 유저가 결제했는지 확인한다.
		Payment payment = paymentDao.getPaymentByReserveId(reserve.getId());
		if(payment == null) {
			message = "결제되지 않은 회원입니다.";
			messageMap.put("type", type);
			messageMap.put("message", message);
			return messageMap;
		}
		//제한인원수를 체크한다.
		int mateNowCount = mateDao.getMateMemberCountInMateByMateId(mateId, performanceId);
		int mateGroupSize = mateDao.getMateByMateId(mateId).getGroupsize();
		if(mateNowCount >= mateGroupSize) {
			message = "이미 가득찬 방 입니다.";
			messageMap.put("type", type);
			messageMap.put("message", message);
			return messageMap;
		}
		//해당 유저가 이미 메이트에 소속되어있는지확인한다.
		Reserve savedReserve = reserveDao.getReservedMateByPerformanceIdAndUserId(performanceId, userId);
		if(savedReserve != null) {
			message= "이미 메이트에 가입한 회원입니다.";
			messageMap.put("type", type);
			messageMap.put("message", message);
			return messageMap;
		}
		type = 1;
		message = "확인되었습니다.";
		messageMap.put("type", type);
		messageMap.put("message", message);
		
		
		return messageMap;
	}
	 /**
     * performanceId, userId로 메이트에 참가되어있는 객체를 한개 반환 받는다.
     * @param performanceId
     * @param userId
     * @return MateUserDto
     */
	public MateUserDto getUserExistMate(int performanceId, String userId) {
		Performance performance = mateDao.getMatePerformanceByPerformanceId(performanceId);
		if(performance == null) {
			throw new RuntimeException("해당 회차의 공연이 존재하지 않습니다.");
		}
		MateUserDto mateUser = mateDao.getUserExistMate(performanceId, userId);
		if(mateUser == null) {
			throw new RuntimeException("해당 메이트 정보가 존재하지 않습니다.");
		}
		//mateUser.setPerformance(mateDao.getMatePerformanceByPerformanceId(performanceId));
		//mateUser.setUser(userDao.getUserById(userId));
		
		return mateUser;
	}
	
	
	
	//Mateid와 userId 를 입력받아서 해당 유저가 있는지 여부를 확인하는 메소드
	public boolean getMateUserByMateIdAndUserId(String userId, int mateId) {
		User user = mateDao.getMateUserByMateIdAndUserId(userId, mateId);
		if(user != null) {
			return true;
		}
		return false;
	}
	
	private void isExistMateException(int mateId) {
		Mate mate = mateDao.getMateByMateId(mateId);
		if(mate == null) {
			throw new RuntimeException("존재하지 않는 메이트 방입니다.");
		}
	}
	private void isExistPerformanceTime(int performanceId) {
		Performance performance = mateDao.getMatePerformanceByPerformanceId(performanceId);
		
		if(performance == null) {
			throw new RuntimeException("해당 공연 회차가 존재하지 않습니다.");
		}
	}
}
