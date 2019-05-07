package com.df.domain;

public class Pay {
    private Integer id;

    private Integer studentId;

    private Float totalPay;

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

    public Float getTotalPay() {
        return totalPay;
    }

    public void setTotalPay(Float totalPay) {
        this.totalPay = totalPay;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}