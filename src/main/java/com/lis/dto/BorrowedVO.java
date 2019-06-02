package com.lis.dto;

import java.sql.Timestamp;

public class BorrowedVO {
	  private int Borrowed_ID;
	   private Timestamp Borrowed_Date;
	   private Timestamp Return_Scheduled_Date;
	   private int Extend_Time;
	   private int Overdue_Status;
	   private Timestamp Return_Date;
	   private int Overdue_Date;
	   private String User_key;
	   private String BARCODE;
	   private String TITLE;
	   private String CALL_NO;
	   public int getBorrowed_ID() {
	      return Borrowed_ID;
	   }
	   public void setBorrowed_ID(int borrowed_ID) {
	      Borrowed_ID = borrowed_ID;
	   }
	   public Timestamp getBorrowed_Date() {
	      return Borrowed_Date;
	   }
	   public void setBorrowed_Date(Timestamp borrowed_Date) {
	      Borrowed_Date = borrowed_Date;
	   }
	   public Timestamp getReturn_Scheduled_Date() {
	      return Return_Scheduled_Date;
	   }
	   public void setReturn_Scheduled_Date(Timestamp return_Scheduled_Date) {
	      Return_Scheduled_Date = return_Scheduled_Date;
	   }
	   public int getExtend_Time() {
	      return Extend_Time;
	   }
	   public void setExtend_Time(int extend_Time) {
	      Extend_Time = extend_Time;
	   }
	   public int getOverdue_Status() {
	      return Overdue_Status;
	   }
	   public void setOverdue_Status(int overdue_Status) {
	      Overdue_Status = overdue_Status;
	   }
	   public Timestamp getReturn_Date() {
	      return Return_Date;
	   }
	   public void setReturn_Date(Timestamp return_Date) {
	      Return_Date = return_Date;
	   }
	   public int getOverdue_Date() {
	      return Overdue_Date;
	   }
	   public void setOverdue_Date(int overdue_Date) {
	      Overdue_Date = overdue_Date;
	   }
	   public String getUser_key() {
	      return User_key;
	   }
	   public void setUser_key(String user_key) {
	      User_key = user_key;
	   }
	   public String getBARCODE() {
	      return BARCODE;
	   }
	   public void setBARCODE(String bARCODE) {
	      BARCODE = bARCODE;
	   }
	   public String getTITLE() {
	      return TITLE;
	   }
	   public void setTITLE(String tITLE) {
	      TITLE = tITLE;
	   }
	   public String getCALL_NO() {
	      return CALL_NO;
	   }
	   public void setCALL_NO(String cALL_NO) {
	      CALL_NO = cALL_NO;
	   }

	
	
	
	

}
