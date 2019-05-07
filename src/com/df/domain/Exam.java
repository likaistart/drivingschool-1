package com.df.domain;

import java.util.Date;

public class Exam {
    private Integer id;

    private Integer studentId;

    private Integer coachId;

    private Date examOne;

    private Date examTwo;

    private Date examThree;

    private Date examFour;

    private Date examTimeOne;

    private Date examTimeTwo;

    private Date examTimeThree;

    private Date examTimeFour;

    private Float resultOne;

    private Float resultTwo;

    private Float resultThree;

    private Float resultFour;

    private String memo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getCoachId() {
        return coachId;
    }

    public void setCoachId(Integer coachId) {
        this.coachId = coachId;
    }

    public Date getExamOne() {
        return examOne;
    }

    public void setExamOne(Date examOne) {
        this.examOne = examOne;
    }

    public Date getExamTwo() {
        return examTwo;
    }

    public void setExamTwo(Date examTwo) {
        this.examTwo = examTwo;
    }

    public Date getExamThree() {
        return examThree;
    }

    public void setExamThree(Date examThree) {
        this.examThree = examThree;
    }

    public Date getExamFour() {
        return examFour;
    }

    public void setExamFour(Date examFour) {
        this.examFour = examFour;
    }

    public Date getExamTimeOne() {
        return examTimeOne;
    }

    public void setExamTimeOne(Date examTimeOne) {
        this.examTimeOne = examTimeOne;
    }

    public Date getExamTimeTwo() {
        return examTimeTwo;
    }

    public void setExamTimeTwo(Date examTimeTwo) {
        this.examTimeTwo = examTimeTwo;
    }

    public Date getExamTimeThree() {
        return examTimeThree;
    }

    public void setExamTimeThree(Date examTimeThree) {
        this.examTimeThree = examTimeThree;
    }

    public Date getExamTimeFour() {
        return examTimeFour;
    }

    public void setExamTimeFour(Date examTimeFour) {
        this.examTimeFour = examTimeFour;
    }

    public Float getResultOne() {
        return resultOne;
    }

    public void setResultOne(Float resultOne) {
        this.resultOne = resultOne;
    }

    public Float getResultTwo() {
        return resultTwo;
    }

    public void setResultTwo(Float resultTwo) {
        this.resultTwo = resultTwo;
    }

    public Float getResultThree() {
        return resultThree;
    }

    public void setResultThree(Float resultThree) {
        this.resultThree = resultThree;
    }

    public Float getResultFour() {
        return resultFour;
    }

    public void setResultFour(Float resultFour) {
        this.resultFour = resultFour;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}