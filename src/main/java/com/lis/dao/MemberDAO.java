package com.lis.dao;

import java.util.ArrayList;
import java.util.List;

import com.lis.dto.MemberVO;

public interface MemberDAO {
	public String register(MemberVO member) throws Exception;
	public MemberVO emailCheck(String Useremail) throws Exception;
	
	public MemberVO login(MemberVO member) throws Exception;
	
	public List<MemberVO> selectMember() throws Exception;
	public int check_id(String user_key) throws Exception;
	public MemberVO check_pw(String user_PW) throws Exception;
	
}
