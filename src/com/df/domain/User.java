package com.df.domain;

public class User {
    private Integer id;

    private String username;

    private String password;
    
    private int type;

    public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}