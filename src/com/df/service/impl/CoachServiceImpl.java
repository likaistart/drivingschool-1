package com.df.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.df.dao.CoachDAO;
import  com.df.domain.Coach;
import com.df.service.CoachService;


@Transactional
@Service(value="coachService")
public class CoachServiceImpl implements CoachService  {

	@Autowired
	private CoachDAO coachDAO;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Coach record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Coach record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Coach selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return coachDAO.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Coach record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Coach record) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public List<Coach> selectAll() {
		// TODO Auto-generated method stub
		return coachDAO.selectAll();
	}
   
}