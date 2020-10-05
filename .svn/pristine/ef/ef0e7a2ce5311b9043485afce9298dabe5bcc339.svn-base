package com.sample.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sample.web.view.HallInfo;
import com.sample.web.view.Mate;
import com.sample.web.view.MateTag;
import com.sample.web.view.MateTimeLine;
import com.sample.web.view.Performance;
import com.sample.web.view.PerformanceSchedule;
import com.sample.web.view.User;

public interface MateDao {
    void insertMate(Mate mate);
    List<MateTimeLine> getTimelinesByMateId(int mateId);
    List<Mate> getMatesByPerformanceId(int performanceId);
    List<Mate> getOldMates();
    
    /**
     * mateId에 해당하는 category의 id 와  category 값을 반환한다.
     * key 는 mate_category 테이블의 id, value는 mate_category 테이블의 category 값이다.
     * @param mateId
     * @return id, category
     */
    Map<Object, String> getMateCategoryByMateId(int mateId);
    /**
     * mateId 에 해당하는 Timeline 을 찾아서 반환한다.
     * @param mateId
     * @return MateTImeLine 객체
     */
    List<MateTimeLine> getMateTimelineByMateId(int mateId);
    /**
     * mateId, performanceId 에 해당하는 Mate 객체 1개를 반환한다.
     * @param mateId
     * @param performanceId
     * @return Mate
     */
    Mate getMateRoomByPerformanceIdAndMateId(@Param("mateId") int mateId,
    									@Param("performanceId") int performanceId);
    /**
     * mate_main, mate_members 테이블 에서
     * mateId 에 해당하는 유저 아이디를 리스트 형태로 가져온다.
     * @param mateId
     * @return userId
     */
    List<User> getMateUserByMateId(int mateId);
    /**
     * performance_main, performance_info 테이블에서
     * performanceId 에 해당하는 공연의 정보를 모두 가져온다.
     * @param performanceId
     * @return Performance객체, PerformanceSchedule 객체 (리스트)
     */
    Performance getMatePerformanceByPerformanceId(int performanceId);
    /**
     * mate_main, mate_tag 테이블에서
     * mateId에 해당하는 mateTag 객체를 반환한다.
     * @param mateId
     * @return mateTag 객체
     */
    List<String> getMateTagByMateId(int mateId);
    /**
     * performance_genre 테이블에서 performanceId에 해당하는
     * 장르를 가져온다.
     * @param performanceId
     * @return string (genre)
     */
    List<String> getMatePerformanceGenre(int performanceId);
    /**
     * performance_main 테이블에서 performanceId 에 해당하는 performanceSchedule 정보를
     * 모두 가져온다.
     * @param performanceId
     * @return List performanceSchedule 
     */
    PerformanceSchedule getPerformanceScheduleByPerformanceId(int performanceId);
    /**
     * hall_info 테이블, performance_main 테이블에서
     * performanceId 에 해당하는 정보를 모두 가져온다. 
     * @param performanceId
     * @return HallInfo 객체
     */
    HallInfo getMateHallInfoByPerformanceId(int performanceId);
    
    /**
     * mate_category 테이블에서 category id, category String 값을 모두 가져온다.
     * Map형태로 가져오며, id 가 key, Category 가value 값형태로 가져온다.
     * @return
     */
    List<Map<Integer, String>> getMateAllCategory();
    /**
     * performanceId에 해당하는 Mate 방의 갯수를 모두 반환한다.
     * @param performanceId
     * @return int (count)
     */
    Integer getCountMateByPerformanceId(int performanceId);
    /**
     * userid 에 해당하는 user의  아이디, 닉네임, 등급, 아이콘을 가져온다.
     * @param userId
     * @return User 객체
     */
    User getUserMateInfoById(String userId);
    /**
     * mateTimeLine 객체의 값 (mateId, content, userId)를 넣어서
     * timeline 테이블에 insert 시킨다.
     * @param mateTimeLine
     */
    void addTimeLine(MateTimeLine mateTimeLine);
    /**
     * mate_main 테이블에서 mateId 에 해당하는 메이트 방을 불러와서
     * 유효성 검사를 한다.
     * @param mateId
     * @return
     */
    Mate getMateByMateId(int mateId);
    
    /**
     * 메이트 Id에 해당하는 mate_timeline 테이블의 총 갯수를 불러온다.
     * @param mateId
     * @return int (count 값)
     */
    Integer getMateTimeLineCountByMateId(int mateId);
    
   
    /**
     * mateTag 객체를 넣어서, 해당 메이트 방의 태그를 추가한다.
     * @param mateTag
     */
    void insertMateTag(MateTag mateTag);
    
    /**
     * mateId에 해당하는 mateTag를 모두 지운다.
     * @param mateId
     */
    void deleteMateTagAllByMateId(int mateId);
    
    void updateMateCategoryByMateId(@Param("catId") int categoryId
    		, @Param("mateId") int mateId);
    
}