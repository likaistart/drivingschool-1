package com.df.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.df.dao.PayDAO;
import com.df.domain.Pay;
import com.df.service.PayService;
@Transactional
@Service(value="payService")
public class PayServiceImpl implements PayService{

	@Autowired
	private PayDAO PayDAO;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Pay record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Pay record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Pay selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Pay record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Pay record) {
		// TODO Auto-generated method stub
		return 0;
	}
  
}