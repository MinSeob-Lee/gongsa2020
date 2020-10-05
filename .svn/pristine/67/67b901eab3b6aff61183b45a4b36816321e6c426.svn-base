package com.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sample.dao.ReserveDao;
import com.sample.web.view.Reserve;

@Service
public class ReserveServiceImpl implements ReserveService{

	@Autowired
	private ReserveDao reserveDao;
	
	@Override
	public void addReserve(Reserve reserve) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Reserve> getReservesByUserId(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateReserve(Reserve reserve) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Reserve getLastestReserveByUserId(String userId) {
		// TODO Auto-generated method stub
		return reserveDao.getReserveDetailByUserId(userId);
	}

	
}
