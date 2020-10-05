package com.sample.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.sample.dto.PerformanceDto;
import com.sample.dto.PerformanceGenderReserveStats;
import com.sample.dto.PerformanceAgeReserveStats;
import com.sample.dto.PerformanceDetailDto;
import com.sample.web.view.HallInfo;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceMain;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.PerformanceSeatPrice;
import com.sample.web.view.UserLikes;

public interface PerformanceService {
    void addPerformance(Performance performance);

    List<PerformanceDetailDto> getAllPerformances();
    List<Performance> searchPerformances(Performance performance);    
    PerformanceDto getPerformanceDetail(int performanceId);        
    List<PerformanceSchedule> getPerformanceDetailByMap(Map<String, Object> data);
    List<PerformanceSchedule> getPerformanceDetailByDate(String performanceDate);
    PerformanceDetailDto getPerformanceByPerformanceMainId(int performanceMainId);
    
    /**
     * 해당 category에 속하는 공연상세정보 리스트 조회한다. 
     * @param category
     * @return 해당 category에 속하는 공연상세정보 리스트 
     */
    List<PerformanceDetailDto> getPerformancesByCategory(String category);	
    
    /**
     * 검색조건에 해당하는 공연상세정보 리스트 조회한다.
     * @param map
     * @return 해당 category에 속하는 
     */
    List<PerformanceDetailDto> searchPerformances(Map<String, Object> map);
    
    /**
     * 공연아이디에 해당하는 공연상세정보를 조회한다.
     * @param performanceId
     * @return
     */
    PerformanceDetailDto getPerformanceDetailById(int performanceId);

    /**
     * 매개변수로 주어진 카테고리에 해당하는 모든 장르들을 반환한다.
     * @param category
     * @return
     */
    String[] getGenreByCategory(String category);
    
    /**
     * 검색조건과 페이지정보에 부합하는 공연상세정보가 담긴 맵를 반환한다. (페이징처리됨)
     * @param map
     * @return
     */
    Map<String, Object> getPerformanceForPaging(Map<String, Object> map);
    
    
    /**
     * 전체 검색에서 검색조건에 부합하는 공연상세정보가 담긴 맵을 반환한다 (페이징처리됨)
     * @param map
     * @return
     */
    Map<String, Object> getTotalSearchForPaging(Map<String, Object> map);
    
    
    /**
     * 모든 공연장소에 대한 정보를 조회한다.
     * @return
     */
    List<HallInfo> getAllHallInfos();
    
    /**
     * 공연정보 번호에 해당하는 공연정보를 조회한다.
     * @param performanceId
     * @return
     */
    HallInfo getHallInfoById(int HallInfoid);
    
    /**
     * 공연정보아이디에 해당하는 PerformanceMain 정보를 조회하여 리스트를 반환한다.
     * @param performanceInfoId
     * @return
     */
    List<PerformanceMain> getPerformanceMain(int performanceInfoId);
    
    /**
     * 공연정보아이디에 해당하는 공연의 장르들을 조회한다.
     * @param id
     * @return
     */
    String[] getGenreById(int id);
    
    /**
     * 매개변수로 전달된 공연좌석정보의 공연정보아이디, 좌석등급에 해당하는 공연좌석정보를 반환한다.
     * @param performceSeatPrice
     * @return
     */
    PerformanceSeatPrice getPerformanceSeatPriceByPerformanceInfoAndSeatRate(PerformanceSeatPrice performceSeatPrice);	
    
    /**
	 * 사용자아이디와 공연정보아이디를 통해 특정공연에대한 사용자의 좋아요 정보를 반환한다.
	 * @param userLikes
	 * @return
	 */
	UserLikes getUserLikesByUserIdAndPerformanceInfoId(UserLikes userLikes);
    
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
     * 공연정보를 데이터베이스에 저장한다.
     * 공연정보, 공연장소, 좌석정보에 해당하는 정보들이 저장된다.
     * @param performance
     * @param hallInfo
     * @param insertHallYn
     * @param seatPrices
     * @throws Exception
     */
    void insertPerformance(Performance performance, HallInfo hallInfo, String insertHallYn
    		,Map<String, Integer> seatPrices)
    				throws Exception;
    
    /**
	 * 공연정보아이디와 사용자아이디가 담긴 UserLikes 객체를 입력으로 받아 사용자가 해당공연에 대한 좋아요를 추가한다.
	 * @param userLikes
	 */
	void insertPerformanceLikes(UserLikes userLikes, Performance performance);
	
    
    /**
     * 공연정보아이디에 해당하는 공연정보를 삭제한다.
     * 공연정보장르, 공연정보과석가격, 공연정보테이블에서 공연정보아이디에 해당하는 행들이 삭제된다. 
     * @param performaneInfoId
     */
    void deletePerformance(int performanceInfoId);
    
    /**
	 * 공연정보아이디와 사용자아이디가 담긴 UserLikes 객체를 입력으로 받아 사용자가 해당공연에 대한 좋아요를 삭제한다.
	 * @param userLikes
	 */
	void deletePerformanceLikes(UserLikes userLikes, Performance performance);
    
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
     * 공연정보를 업데이트한다.
     * 공연정보, 공연장르 테이블이 업데이트 된다.
     * @param performance
     */
    void updatePerformanceInfo(Performance performance);
    
    /**
     * 공연정보와 연결된 공연장정보를 업데이트한다.
     * insertHallInfo가 Y면 새로운 공연장정보를 데이터베이스에 저장한 후 그 공연장정보와 공연정보를 연결시킨다.
     * @param performance
     * @param hallInfo
     * @param insertHallInfo
     */
    void updatePerformanceHallInfo(Performance performance, HallInfo hallInfo, String insertHallInfo);
    
    void updatePerformanceSeatInfo(Performance performance, Map<String, Integer> seatPrices);    
    
    /**
     * 공연정보아이디를 매개변수로 전달받아서 해당하는 공연장 정보를 반환한다.
     * @param performanceInfoId
     * @return
     */
    HallInfo getHallInfoByPerformanceInfoId(int performanceInfoId);
    
    
    List<PerformanceSeatPrice> getPerformanceSeatPriceById(int performanceId);
    PerformanceSchedule getPerformanceScheduleByPerformanceId(int performanceMainId);

	List<PerformanceDto> getPerformanceByUserId(String userId);
    //List<PerformanceDetailDto> searchPerformances(Performance performance);
    //Performance getPerformanceDetail(int performanceId);
	
	List<Performance> getUserLikeList(int offset,String userId);
	
	String saveImage(String strUrl, String fileName, String saveDirectory);
	
	PerformanceMain getPerformanceMainByPerformanceId(int performanceId);
	
	List<PerformanceDetailDto> getPerformanceByCategoryLimit(String category);
	
}