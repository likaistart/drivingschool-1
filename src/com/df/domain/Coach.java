package com.df.domain;

public class Coach {
    private Integer id;

    private String name;

    private String coachCard;

    private String credentNo;

    private String phone;

    private String memo;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCoachCard() {
        return coachCard;
    }

    public void setCoachCard(String coachCard) {
        this.coachCard = coachCard;
    }

    public String getCredentNo() {
        return credentNo;
    }

    public void setCredentNo(String credentNo) {
        this.credentNo = credentNo;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }
}