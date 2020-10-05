package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.dto.UserInfoDto;
import com.sample.dto.UserPointHistoryDto;
import com.sample.web.view.Coupon;
import com.sample.web.view.User;
import com.sample.web.view.UserPoint;
import com.sample.web.view.UserIntrest;

public interface UserService {
    void addUser(User user);
    User loginUser(String id, String password);
    // 유저 포인트 업데이트 
    void updateUser(User user);
    void updateUserInterest(Map<String, Object> param);
    void updateUserIntro(Map<String, Object> param);
    void deleteUserInterest(String userId);
    void deleteUserIntro(String userId);
    User getUserDetail(String id);
    User getUserDetailByCondition(Map<String, Object> condition);
    List<Coupon> getCouponByUserId(String userId);
    
    // 유저 정보 업데이트
    void fixUser(User user);
    
    User getUserByEmail(String email);
    User getPasswordByEmail(String email);
    List<UserInfoDto> getAllUsers(Map<String, Object> param);
    
    UserInfoDto getUserInfoDetail(String id);
    
    void addUserPointHistory(UserPoint userPoint);
    void deleteUser(String userId);
    
    int getAllUsersCount(Map<String, Object> param);
    int getAllPointHistoryCount(String userID);
    int getAllUsersCouponCount(String userId);
    List<UserPointHistoryDto> getUserPointHistoryForPagination(Map<String, Object> param);
    List<Coupon> getCouponByUserIdForPagination(Map<String, Object> param);

}