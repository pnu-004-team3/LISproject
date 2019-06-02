package com.lis.dao;
import java.util.List; 
import javax.inject.Inject; 
import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository; 
import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;

  
 
 @Repository public class BookDAOImpl implements BookDAO {
	 @Inject 
	 private SqlSession sqlSession;
	 
	 private static final String Namespace = "com.lis.mapper.bookMapper";
	 
	 public List<BookVO> selectBook() throws Exception{

		 return sqlSession.selectList(Namespace+".selectBook");
	 }
	 

 }