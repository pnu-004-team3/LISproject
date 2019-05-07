package com.lis.dto;

import java.sql.Timestamp;

public class MemberVO {
	private String User_key;
	private String Name;
	private String Phone_NO;
	private int No_of_Book_Borrowd;
	private String User_type;
	private String City;
	private String District;
	private String User_Status;
	private String User_PW;
	private int isadmin;
	private Timestamp USER_regist_date;
	
	public String getUser_key() {
		return User_key;
	}
	public void setUser_key(String user_key) {
		User_key = user_key;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPhone_NO() {
		return Phone_NO;
	}
	public void setPhone_NO(String phone_NO) {
		Phone_NO = phone_NO;
	}
	public int getNo_of_Book_Borrowd() {
		return No_of_Book_Borrowd;
	}
	public void setNo_of_Book_Borrowd(int no_of_Book_Borrowd) {
		No_of_Book_Borrowd = no_of_Book_Borrowd;
	}
	public String getUser_type() {
		return User_type;
	}
	public void setUser_type(String user_type) {
		User_type = user_type;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public String getDistrict() {
		return District;
	}
	public void setDistrict(String district) {
		District = district;
	}
	public String getUser_Status() {
		return User_Status;
	}
	public void setUser_Status(String user_Status) {
		User_Status = user_Status;
	}
	public String getUser_PW() {
		return User_PW;
	}
	public void setUser_PW(String user_PW) {
		User_PW = user_PW;
	}
	public int getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}
	public Timestamp getUSER_regist_date() {
		return USER_regist_date;
	}
	public void setUSER_regist_date(Timestamp uSER_regist_date) {
		USER_regist_date = uSER_regist_date;
	}
	
	
	
	

}
