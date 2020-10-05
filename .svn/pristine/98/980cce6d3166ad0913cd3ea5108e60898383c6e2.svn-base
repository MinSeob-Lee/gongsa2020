package com.sample.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.MateDao;
import com.sample.dao.UserDao;
import com.sample.dto.MateDetailDto;
import com.sample.web.view.Mate;
import com.sample.web.view.MateTag;
import com.sample.web.view.MateTimeLine;
import com.sample.web.view.Performance;
import com.sample.web.view.User;

@Service
public class MateServiceImpl implements MateService {
	

	@Autowired
	MateDao mateDao;
	
	@Autowired
	UserDao userDao;

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
	
	@Override
	public void addMateMember(int mateId, User newMember) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public void changeCategory(int mateId, String category) {
		// TODO Auto-generated method stub
		
	}
	
	@Override
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
