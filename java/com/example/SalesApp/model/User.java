package com.example.SalesApp.model;

public class User 
{
	private int userId;
	private String userName;
	private String userPassword;
	private String userEmailid;
	private String userPhone;
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	
	public String getUserEmailid() {
		return userEmailid;
	}
	public void setUserEmailid(String userEmailid) {
		this.userEmailid = userEmailid;
	}
	
	
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", userEmailid="
				+ userEmailid + ", userPhone=" + userPhone + "]";
	}
	
	
}
