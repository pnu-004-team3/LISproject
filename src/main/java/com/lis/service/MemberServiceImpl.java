package com.lis.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lis.dao.MemberDAO;
import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;

	
	@Override
	public String register(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
	
		return dao.register(member);
	}
	
	 @Override
	 public MemberVO emailCheck(String Useremail) throws Exception{
		 
		 return dao.emailCheck(Useremail);
	 }
	
	@Override
	public MemberVO login(MemberVO member) throws Exception {
		System.out.println("login");
		
		return dao.login(member);
	}
	
	@Override
	public List<MemberVO> searchMember(String searchOption, String keyword) throws Exception{
		
		return dao.searchMember(searchOption, keyword);
	}
	
	@Override
	public int countMember(String searchOption, String keyword) throws Exception{
		return dao.countMember(searchOption, keyword);
	}
	
	
	
	 @Override
	    public List<MemberVO> selectMember() throws Exception {
	 
	        return dao.selectMember();
	 }
	 
	

	 @Override
		public void check_id(String user_key, HttpServletResponse response) throws Exception {
			PrintWriter out = response.getWriter();
			out.println(dao.check_id(user_key));
			out.close();
		}
	 
	 @Override
	 public MemberVO check_pw(String user_PW) throws Exception{
		 return dao.check_pw(user_PW);
	 }
	 
	 



}
