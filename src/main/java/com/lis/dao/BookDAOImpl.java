package com.lis.dao;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject; 
import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository; 
import com.lis.dto.BookVO;

  
 
 @Repository public class BookDAOImpl implements BookDAO {
	 @Inject 
	 private SqlSession sqlSession;
	 
	 private static final String Namespace = "com.lis.mapper.bookMapper";
	 
	 public List<BookVO> searchBook(String searchOption, String keyword) throws Exception{
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