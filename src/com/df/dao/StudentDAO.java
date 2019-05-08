package com.df.dao;

import java.util.List;

import com.df.domain.Student;

public interface StudentDAO {
    int deleteByPrimaryKey(Integer id);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
    
    List<Student> selectAll();
    
    List<Student> selectByName(String textName);
}