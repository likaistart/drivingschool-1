package com.df.service;

import java.util.List;

import  com.df.domain.Coach;

public interface CoachService {
    int deleteByPrimaryKey(Integer id);

    int insert(Coach record);

    int insertSelective(Coach record);

    Coach selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Coach record);

    int updateByPrimaryKey(Coach record);
    
    List<Coach> selectAll();
}