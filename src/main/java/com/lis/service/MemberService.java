package com.lis.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;

public interface MemberService {
	
	public String register(MemberVO member) throws Exception;
	public MemberVO emailCheck(String Useremail) throws Exception;

	public MemberVO login(MemberVO member) throws Exception;
	
	public List<MemberVO> searchMember(String searchOption, String keyword) throws Exception; 
	public int countMember(String searchOption, String keyword) throws Exception; 
	
	public List<MemberVO> selectMember() throws Exception;
	public void check_id(String user_key, HttpServletResponse response) throws Exception;
	public MemberVO check_pw(String user_PW) throws Exception;

}
