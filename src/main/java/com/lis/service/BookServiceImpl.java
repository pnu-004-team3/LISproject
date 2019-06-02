package com.lis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.lis.dao.BookDAO;
import com.lis.dto.BookVO;

@Service
public class BookServiceImpl implements BookService {
	
	@Inject
	private BookDAO dao;
	

	@Override
	public List<BookVO> selectBook() throws Exception{
		return dao.selectBook();
	}
	
}
