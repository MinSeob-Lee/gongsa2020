package com.sample.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sample.dto.PerformanceDto;
import com.sample.dto.PerformanceGenderReserveStats;
import com.sample.web.view.HallInfo;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceGenre;
import com.sample.web.view.PerformanceMain;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;
import com.sample.web.view.UserLikes;
import com.sample.dto.PerformanceAgeReserveStats;
import com.sample.dto.PerformanceDetailDto;

public interface PerformanceDao {
   /**
    * 공연아이디로 공연을 찾아오는 메소드 
    * @param performanceId
    */
   PerformanceDto selectPerformance(int performanceId);
   
   /**
	 * 공연정보 아이디에 해당하는 장르들을 반환한다.
	 * @param id
	 * @return 해당 performanceId가 가진 장르 String 배열
	 */
	String[] getGenreById(int id);

	/**
	 * category에 해당하는 장르들을 반환한다.
	 * @param category
	 * @return 해당 카테고리에 속하는 장르 String 배열
	 */
	String[] getGenreByCategory(String category);
	
	/**
	 * 공연 정보아이디에 해당하는 좋아요수를 반환한다.
	 * @param performanceId
	 * @return
	 */
	int getLikesByPerformanceInfoId(int performanceId);
	
	/**
	 * 공연 정보아이디에 해당하는 예매수를 반환한다.
	 * @param performanceId
	 * @return
	 */
	int getReserveCountByPerformanceInfoId(int performanceId);
	
	/**
	 * 공연 정보아이디와  성별을 입력으로 받아 해당 공연의 해당성별의 공연 구매수를 반환한다.
	 * @param performanceGenderReserveStats
	 * @return
	 */
	int getGenderReserveCountByPerformanceInfoIdAndGender(PerformanceGenderReserveStats performanceGenderReserveStats);	
	
	/**
	 * 공연 정보아이디와 연령대를 입력으로 받아 해당공연의 해당연령대의 공연 구매수를 반환한다.
	 * @param performanceAgeReserveStats
	 * @return
	 */
	int getAgeGroupReserveCountByPerformanceInfoIdAndAge(PerformanceAgeReserveStats performanceAgeReserveStats);
	
	/**
	 * 사용자아이디와 공연정보아이디를 통해 특정공연에대한 사용자의 좋아요 정보를 반환한다.
	 * @param userLikes
	 * @return
	 */
	UserLikes getUserLikesByUserIdAndPerformanceInfoId(UserLikes userLikes);
	
	
	/**
	 * 해당 카테고리에 속하는 모든 공연들을 조회한다. 
	 * @param category
	 * @return 해당 카테고리에 속한 공연들의 상세정보가 담긴 PerformanceDetailDto 배열
	 */
	List<PerformanceDetailDto> getPerformancesByCategory(String category);	
	
	/**
	 * 해당 performanceId에 해당하는 공연의 상세정보를 반환한다. 	
	 * @param id
	 * @return 해당 performanceId에 대한 공연의 상세정보가 담긴 PerformanceDetailDto
	 */	
	PerformanceDetailDto getPerformanceById(int id);
	
	/**
	 * 검색조건에 맞는 공연정보들을 모두 조회한다.
	 * @param map 검색정보가 담긴 map
	 * @return 검색조건에 맞는 공연정보들
	 */
	List<PerformanceDetailDto> searchPerformance(Map<String, Object> map);
	
	/**
	 * 검색조건에 맞는 공연정보들을 조회한다. (페이징처리)
	 * 이때, 조건에 해당하는 공연정보들 중에 해당 인덱스 범위내에 존재하는 공연정보들만 가져온다.
	 * @param map 검색정보가 담긴 map
	 * @return 검색조건에 맞고 해당 인덱스 범위내에 있는 공연정보들
	 */
	List<PerformanceDetailDto> searchPerformanceByPage(Map<String, Object> map);
		
	/***
	 * 검색조건에 맞는 공연정보의 총 줄 수를 반환한다(페이징처리용)
	 * @param map
	 * @return
	 */
	int getTotalRowsOfPerformance(Map<String, Object> map);
	
	/**
	 * 전체검색에서 검색조건에 맞는 공연정보들을 조회한다.(페이징처리)
	 * 이때, 조건에 해당하는 공연정보들중에 해당 인덱스 범위내에 존재하는 공연정보들만 가져온다.
	 * @param map 검색정보가 담긴 map
	 * @return 검색조건에 맞고 해당 인덱스 범위내에 있는 공연정보들
	 */
	List<PerformanceDetailDto> totalSearchPerformanceByPage(Map<String, Object> map);
	
	/**
	 * 전체검색에서 검색조건에 맞는 공연정보의 총 줄 수를 반환한다.(페이징처리용)
	 * @param map
	 * @return
	 */
	int getTotalRowsOfPerformanceForTotalSearch(Map<String, Object> map);
	
	/**
	 * 모든 공연장정보를 조회한다.
	 * @return
	 */
	List<HallInfo> getAllHallInfos();
	
	/**
	 * 공연장 정보 아이디(hallInfoId)에 해당하는 공연정보를 가져온다.
	 * @param id
	 * @return
	 */
	HallInfo getHallInfoById(int HallInfoid);
	
	/**
	 * 공연정보아이디(performanceInfoId)와 일치하는 공연정보를 가져온다.
	 * @param performanceInfoId
	 * @return
	 */
	HallInfo getHallInfoByPerformanceInfoId(int performanceInfoId);
	
	/**
	 * 공연정보아이디에 해당하는 performanceMain 정보를 가져온다.
	 * @param performanceInfoId
	 * @return
	 */
	List<PerformanceMain> getPerformanceMain(int performanceInfoId);
	
	/**
	 * 매개변수로 전달된 공연정보아이디와 공연좌석등급에 해당하는 공연좌석정보를 가져온다.
	 * @param performceSeatPrice
	 * @return
	 */
	PerformanceSeatPrice getPerformanceSeatPriceByPerformanceInfoAndSeatRate(PerformanceSeatPrice performceSeatPrice);	
	
	/**
	 * 공연장정보를 데이터베이스에 저장한다.
	 * @param hallInfo
	 */
	void insertHallInfo(HallInfo hallInfo);
	
	/**
	 * 특정공연과 장르를 연결지어 데이터베이스에 저장한다.
	 * 해당 공연에 대한 장르를 설정한다.
	 * @param performanceGenre
	 */
	void insertGenre(PerformanceGenre performanceGenre);
	
	
	/**
	 * 공연에 대한 좌석정보를 데이터베이스에 저장한다. 
	 * @param performanceSeatPrice
	 */
	void insertPerformanceSeatPrice(PerformanceSeatPrice performanceSeatPrice);
	
	/**
	 * 공연정보를 데이터베이스에 저장한다.
	 * performance_info 정보를 performance_info 테이블에 저장한다.
	 * @param performance
	 */
	void insertPerformance(Performance performance);	
	
	/**
	 * 공연정보아이디에 해당하는 공연정보의 장르들을 모두 삭제한다.
	 * 공연정보장르테이블에서 삭제작업이 이루어지며 해당공연정보가 어떤 장르도 속하지 않게 만들어준다. 
	 * @param performanceInfoId
	 */
	void deletePerformanceGenresByPerformanceInfoId(int performanceInfoId);
	
	/**
	 * 공연정보아이디에 해당하는 공연좌석정보들을 모두 삭제한다.
	 * 공연과석가격테이블에서 삭제작업이 이루어지며 해당공연정보가 어떤 좌석가격정보도 가지지 않게 만들어준다.
	 * @param performanceInfoId
	 */
	void deletePerformanceSeatPricesbyPerformanceInfoId(int performanceInfoId);
	
	/**
	 * 공연정보아이디에 해당하는 공연정보를 삭제한다.
	 * @param performanceInfoId
	 */
	void deletePerformanceInfo(int performanceInfoId);
	
	/**
	 * 매개변수로 전달된 공연정보로 공연정보를 업데이트 한다.
	 * @param performance
	 */
	void updatePerformanceInfo(Performance performance);
	
	/**
	 * 공연정보의 공연장정보아이디를 업데이트한다.
	 * @param performance
	 */
	void updatePerformanceHallInfoId(Performance performance);
	
	/**
	 * 공연정보의 공연정보아이디에 해당하는 좋아요수를 업데이트한다.
	 * @param performance
	 */
	void updatePerformanceLikes(Performance performance);
	
	/**
	 * 공연정보의 공연정보아이디에 해당하는 예매수를 업데이트한다.
	 * @param performance
	 */
	void updatePerformanceReserveCount(Performance performance);
	
	/**
	 * 공연정보아이디와 사용자아이디가 담긴 UserLikes 객체를 입력으로 받아 사용자가 해당공연에 대한 좋아요를 추가한다.
	 * @param userLikes
	 */
	void insertPerformanceLikes(UserLikes userLikes);
	
	/**
	 * 공연정보아이디와 사용자아이디가 담긴 UserLikes 객체를 입력으로 받아 사용자가 해당공연에 대한 좋아요를 삭제한다.
	 * @param userLikes
	 */
	void deletePerformanceLikes(UserLikes userLikes);
	
	
   /**
    * 공연 상영날짜와 공연번호로 공연 찾아오는 메소드
    * @param map
    */
   List<PerformanceSchedule> selectPerformanceByIdAndDate(Map<String, Object> data);
   
   /**
    *  공연 상영날짜로 공연 찾아오는 메소드(오버라이딩 String)
    * @param showDate
    */
   List<PerformanceSchedule> selectPerformanceByDate(String showDate);
   
   /**
    * performance_main 테이블에서 performace id로 PerformanceDetailDto 객체를 반환받는다.
    * @param performanceMainId
    * @return PerformanceDetailDto
    */
   PerformanceDetailDto getPerformanceByPerformanceMainId(int performanceMainId);
   
   /**
    * 공연메인아이디로 공연스케쥴을 찾아오는 메소드
    * @param performanceMainId
    */
   PerformanceSchedule getScheduleByPerformanceMainId(int performanceMainId);

   /**
    * 공연정보아이디로 좌석가격 리스트를 찾아오는 메소드
    * @param performanceId
    */
   List<PerformanceSeatPrice> getPerformanceSeatPrice(int performanceId);
   
   List<PerformanceDto> getPerformanceByUserId(String userId);
   
   /**
    * 모든 공연 정보를 가져오는 메소드
    * @return
    */
   List<PerformanceDetailDto> getAllPerformances();
   
   
   /**
    * 유저 관심공연 리스트를 가져오는 메서드.
    * @param String userId
    * @return List<Performance>
    */
   List<Performance> getLikesList(@Param("offset")int offset,@Param("userId")String userId);
   
   
   /**
    * mate_main, performance_main, hall_seats Table 과 연동하여 mate Insert 시 함께 사용
    * @param performanceSchedule
    */
   void insertPerformanceSchedule(PerformanceSchedule performanceSchedule);
   
   PerformanceMain getPerformanceMainByPerformanceId(int performanceId);
   

   List<PerformanceDetailDto> getPerformanceByCategoryLimit(String category);
   

   /**
    * performanceId로 performance_main 테이블 삭제
    * @param performanceId
    */
   void deletePerformanceMainByPerformanceId(int performanceId);

   
}