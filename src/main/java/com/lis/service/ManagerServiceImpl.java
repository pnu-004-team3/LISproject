package com.lis.service;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lis.dao.ManagerDAO;
import com.lis.dto.BookVO;
import com.lis.dto.ManagerVO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Inject
	private ManagerDAO dao;
	

	@Override
	public String bookRegister(ManagerVO manager) throws Exception {
		// TODO Auto-generated method stub

		return dao.bookRegister(manager);
	}
	
	@Override
	public ManagerVO KeyCheck(String BARCODE) throws Exception {
		return dao.KeyCheck(BARCODE);
	}
	

}
