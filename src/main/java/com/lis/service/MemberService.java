package com.lis.service;

import java.util.ArrayList;
import java.util.List;

import com.lis.dto.MemberVO;

public interface MemberService {
	
	public String register(MemberVO member) throws Exception;
	public List<MemberVO> selectMember() throws Exception;
	public MemberVO emailCheck(String Useremail) throws Exception;

}
