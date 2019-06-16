package com.lis.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private static final String Namespace = "com.lis.mapper.memberMapper";
	private SqlSession sqlSession;
	
	@Inject
	public MemberDAOImpl(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	

	@Override
	public String register(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(Namespace+".register", member);
		return "true";
	}
	
	@Override
	public MemberVO emailCheck(String Useremail) throws Exception{
		
		return sqlSession.selectOne(Namespace+".checkUserEmail", Useremail);
	}
	
	
	@Override
	public MemberVO login(MemberVO member) throws Exception{
		return sqlSession.selectOne(Namespace+".login", member);
	}
	
	@Override
    public List<MemberVO> selectMember() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMember");

    }
	
	

	@Override
	public int check_id(String user_key) throws Exception{
		return sqlSession.selectOne(Namespace+".check_id", user_key);
	}
	
	@Override
	public MemberVO check_pw(String user_PW) throws Exception{
		return sqlSession.selectOne(Namespace+".check_pw", user_PW);
	}
	
	
	public List<MemberVO> searchBook(String searchOption, String keyword) throws Exception{
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("searchOption", searchOption);
		 map.put("keyword", keyword);
		 
		 return sqlSession.selectList(Namespace+".searchBook", map);
	 }

	 
	 public int countBook(String searchOption, String keyword) throws Exception{
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("searchOption", searchOption);
		 map.put("keyword", keyword);
		 
		 return sqlSession.selectOne(Namespace + ".countBook", map);
	 }
	


}
