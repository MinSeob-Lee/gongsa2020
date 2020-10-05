package com.sample.service;

import java.util.List;
import java.util.Map;

import com.sample.dto.UserPointHistoryDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sample.dao.UserDao;
import com.sample.dto.UserInfoDto;
import com.sample.web.view.Coupon;
import com.sample.web.view.User;
import com.sample.web.view.UserPoint;

@Transactional
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	UserDao userDao;
	
	@Override
	public void addUser(User user) {
		userDao.insertUser(user);
		userDao.insertUserSub(user);
		userDao.insertUserAddr(user);
		
	}
	
	@Override
	public void fixUser(User user) {
		userDao.fixUserMain(user);
		userDao.fixUserAddr(user);
		
	}

	public User loginUser(String id, String password) {
		User user = userDao.getUserById(id);
		
		if(user == null) {
			return null;
		}
		if (!user.getPassword().equals(password)) {
			return null;
		}
		
		return user;
	}

	@Override
	public void updateUser(User user) {
		userDao.updateUser(user);
	}

	@Override
	public User getUserDetail(String id) {
		return userDao.getUserById(id);
	}
	
	@Override
	public User getUserDetailByCondition(Map<String, Object> condition) {
		// TODO Auto-generated method stub
		return userDao.getUserByCondition(condition);
	}

	@Override
	public List<Coupon> getCouponByUserId(String userId) {
		return userDao.getCouponsByUserId(userId);
	}

	@Override
	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.getUserByEmail(email);
	}

	@Override
	public User getPasswordByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.getPasswordByEmail(email);
	}

	@Override
	public void addUserPointHistory(UserPoint userPoint) {
		userDao.insertUserPoint(userPoint);		
	}
	@Override
	public List<UserInfoDto> getAllUsers(Map<String, Object> param) {
		
		return userDao.getAllUsers(param);
	}

	@Override
	public UserInfoDto getUserInfoDetail(String id) {
		
		return userDao.getUserInfoDetail(id);
	}

	
	@Override
	public int getAllUsersCount(Map<String, Object> param) {
	
		return userDao.getAllUsersCount(param);
	}

	@Override
	public int getAllPointHistoryCount(String userId) {
		return userDao.getAllUserPointHistoryCount(userId);
	}

	@Override
	public List<UserPointHistoryDto> getUserPointHistoryForPagination(Map<String, Object> param) {
		return userDao.getUserPointHistoryForPagination(param);
	}

	public int getAllUsersCouponCount(String userId){
		return userDao.getAllUserCouponCount(userId);
	}

	@Override
	public List<Coupon> getCouponByUserIdForPagination(Map<String, Object> param) {
		return userDao.getCouponsByUserIdForPagination(param);
	}

	@Override
	public void deleteUser(String userId) {
		userDao.deleteUser(userId);
	}

	@Override
	public void updateUserInterest(Map<String, Object> param) {
		userDao.updateUserInterest(param);
	}
	@Override
	public void updateUserIntro(Map<String, Object> param) {
		userDao.updateUserIntro(param);
	}

	@Override
	public void deleteUserInterest(String userId) {
		userDao.deleteUserInterest(userId);
	}

	@Override
	public void deleteUserIntro(String userId) {
		userDao.deleteUserIntro(userId);
	}
}
