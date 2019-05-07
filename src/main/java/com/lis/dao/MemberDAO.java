package com.lis.dao;

import java.util.ArrayList;
import java.util.List;

import com.lis.dto.MemberVO;

public interface MemberDAO {
	public String register(MemberVO member) throws Exception;
	 public List<MemberVO> selectMember() throws Exception;

}
