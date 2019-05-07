package com.df.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.df.dao.StudentDAO;
import com.df.dao.TrainDAO;
import com.df.domain.Train;
import com.df.service.TrainService;
@Transactional
@Service(value="trainService")
public class TrainServiceImpl implements TrainService{

	@Autowired
	private TrainDAO trainDAO;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Train record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Train record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Train selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Train record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Train record) {
		// TODO Auto-generated method stub
		return 0;
	}
   
}