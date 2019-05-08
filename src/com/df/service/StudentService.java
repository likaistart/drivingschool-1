package com.df.service;

import java.util.List;

import com.df.domain.Student;
import com.df.page.Page;

public interface StudentService {
	int deleteByPrimaryKey(Integer id);

	int insert(Student record);

	int insertSelective(Student record);

	Student selectByPrimaryKey(Integer id);
	
	List<Student> selectByName(String textName);

	List<Student> selectAll();

	int updateByPrimaryKeySelective(Student record);

	int updateByPrimaryKey(Student record);

	// 分页加模糊查询
	public Page<Student> pageFuzzyselect(String roomNumber, Page<Student> vo);
}