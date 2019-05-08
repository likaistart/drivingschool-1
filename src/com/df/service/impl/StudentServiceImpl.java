package com.df.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.df.dao.PayDAO;
import com.df.dao.StudentDAO;
import com.df.domain.Student;
import com.df.page.Page;
import com.df.service.StudentService;
@Transactional
@Service(value="studentService")
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentDAO studentDAO;
	@Override
	public int deleteByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Student record) {
		// TODO Auto-generated method stub
		return studentDAO.insert(record);
	}

	@Override
	public int insertSelective(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Student selectByPrimaryKey(Integer id) {
		// TODO Auto-generated method stub
		return studentDAO.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Student record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Student> selectByName(String textName) {
		// TODO Auto-generated method stub
		return studentDAO.selectByName(textName);
	}
	
	@Override
	public List<Student> selectAll() {
		// TODO Auto-generated method stub
		return studentDAO.selectAll();
	}
	
	
	@Override
	public Page<Student> pageFuzzyselect(String roomNumber, Page<Student> vo) {
		// TODO Auto-generated method stub
		return null;
	}
   
}