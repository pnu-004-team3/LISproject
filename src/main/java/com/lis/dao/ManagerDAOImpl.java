package com.lis.dao;
import java.util.List; 
import javax.inject.Inject; 
import org.apache.ibatis.session.SqlSession; 
import org.springframework.stereotype.Repository; 
import com.lis.dto.BookVO;
import com.lis.dto.ManagerVO;

  
 
 @Repository public class ManagerDAOImpl implements ManagerDAO {
	 @Inject 
	 private SqlSession sqlSession;
	 
	 private static final String Namespace = "com.lis.mapper.managerMapper";
	 
	 @Override 
	 public String bookRegister(ManagerVO manager) throws Exception { 
		 //TODO Auto-generated method stub 
		 sqlSession.insert(Namespace+".bookRegister",manager); 
		 
		 return "true"; 
	 }
	 @Override
	 public ManagerVO KeyCheck(String BARCODE) throws Exception{
		 return sqlSession.selectOne(Namespace+".KeyCheck", BARCODE);
		 
	 }
 }