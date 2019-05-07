package com.lis.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import com.lis.dto.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.lis.mapper.memberMapper";

	
	@Override
	public String register(MemberVO member) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(Namespace+".register", member);
		return "true";
	}
	
	
	@Override
    public List<MemberVO> selectMember() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectMember");
    }


}
