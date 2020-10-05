package com.sample.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sample.dto.UserInfoDto;
import com.sample.web.view.Coupon;
import com.sample.web.view.User;
import com.sample.web.view.UserBadge;
import com.sample.web.view.UserPoint;

public interface UserDao {
    void insertUser(User user);
    void insertUserSub(User user);
    void insertUserAddr(User user);
    void updateUser(User user);
    void insertUserPoint(UserPoint userPoint);
    
    User getUserById(String id);
    
    User getUserByEmail(String email);
    User getPasswordByEmail(String email);
    
    List<Coupon> getCouponsByUserId(String userId);
    List<UserBadge> getBadgesByUserId(String userId);
    List<User> getUsersByMateId(int mateId);
    List<UserInfoDto> getAllUsers(Map<String, Object> param );
    
    UserInfoDto getUserInfoDetail(String id);
    int getAllUsersCount(Map<String, Object> param );
}
