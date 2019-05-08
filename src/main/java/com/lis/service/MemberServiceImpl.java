package com.lis.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lis.dao.MemberDAO;
import com.lis.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;
	private PasswordEncoder passwordEncoder;

	
	@Override
	public String register(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
	
		return dao.register(member);
	}
	
	 @Override
	    public List<MemberVO> selectMember() throws Exception {
	 
	        return dao.selectMember();
	 }
	 
	 @Override
	 public MemberVO emailCheck(String Useremail) throws Exception{
		 
		 return dao.emailCheck(Useremail);
	 }


}
