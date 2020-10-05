package com.sample.dao;

import java.util.List;
import java.util.Map;



import com.sample.dto.UserInfoDto;
import com.sample.dto.UserPointHistoryDto;
import com.sample.web.view.*;

public interface UserDao {
    void insertUser(User user);
    void insertUserSub(User user);
    void insertUserAddr(User user);
    // 포인트 정보만 업데이트
    void updateUser(User user);
    void insertUserPoint(UserPoint userPoint);
    void updateUserInterest(Map<String, Object> param);
    void updateUserIntro(Map<String, Object> param);
    void deleteUserInterest(String userId);
    void deleteUserIntro(String userId);
    // 회원정보 수정
    void fixUserMain(User user);
    void fixUserAddr(User user);
    void deleteUser(String userId);   
    
    User getUserById(String id);
    User getUserByCondition(Map<String, Object> condition);
    
    User getUserByEmail(String email);
    User getPasswordByEmail(String email);
    
    List<Coupon> getCouponsByUserId(String userId);
    List<Coupon> getCouponsByUserIdForPagination(Map<String, Object> param);
    List<UserBadge> getBadgesByUserId(String userId);
    List<User> getUsersByMateId(int mateId);
    List<UserInfoDto> getAllUsers(Map<String, Object> param );
    List<String> getUserInterest(String userId);
    List<String> getUserIntro(String userId);
    List<UserPointHistoryDto> getUserPointHistory(String userId);
    List<UserPointHistoryDto> getUserPointHistoryForPagination(Map<String, Object> param);

    UserInfoDto getUserInfoDetail(String id);
    int getAllUsersCount(Map<String, Object> param );
    int getAllUserPointHistoryCount(String userId);
    int getAllUserCouponCount(String userId);
}
