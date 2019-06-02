package com.lis.service;

import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lis.dao.ManagerDAO;
import com.lis.dto.BookVO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Inject
	private ManagerDAO dao;
	

	@Override
	public String bookRegister(BookVO manager) throws Exception {
		// TODO Auto-generated method stub
		return dao.bookRegister(manager);
	}

}
