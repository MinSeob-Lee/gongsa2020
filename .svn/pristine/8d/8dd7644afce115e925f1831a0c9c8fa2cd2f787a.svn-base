package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.dto.MateDetailDto;
import com.sample.web.view.Mate;
import com.sample.web.view.MateTimeLine;
import com.sample.web.view.User;

public interface MateService {
    void addMate(Mate mate);
    List<Mate> getMatesByPerformanceId(int performanceId);
    Mate getMateById(int mateId);
    void insertMateTimeLine(int mateId, MateTimeLine mateTimeLine);
    void addHashTag(int mateId, List<String> mateTags);
    void addMateMember(int mateId, User newMember);
    void changeCategory(int mateId, String category);
    List<Map<Integer, String>> getMateAllCategory();
    Integer getCountMateByPerformanceId(int performanceId);

    List<User> getMateUserByMateIdAndPerformanceId(int mateId);
    MateDetailDto getMateRoomDetail(int mateId, int performanceId);
    /**
     * mateTimeLine 남기는 기능
     * mateId로 해당 메이트 방을 제한하여 insert 한다.
     * userId로 누가 남겼는지 insert 한다.
     * @param mateId
     * @param userId
     */
    void addMateTimeLineByMateIdAndUserId(MateTimeLine mateTimeLine);
    Map<String, Object> getMateTimeLineCountByMateId(int mateId);
}