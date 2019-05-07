package com.df.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.df.dao.ExamDAO;
import com.df.domain.Exam;
import com.df.service.ExamService;
@Transactional
@Service(value="examService")
public class ExamServiceImpl implements ExamService {

	@Autowired
	private ExamDAO ExamDAO;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Exam record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Exam record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Exam selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Exam record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Exam record) {
		// TODO Auto-generated method stub
		return 0;
	}
   
}