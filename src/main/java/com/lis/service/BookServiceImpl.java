package com.lis.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.lis.dao.BookDAO;
import com.lis.dto.BookVO;

@Service
public class BookServiceImpl implements BookService {
	
	@Inject
	private BookDAO dao;
	

	@Override
	public List<BookVO> searchBook(String searchOption, String keyword) throws Exception{
		
		return dao.searchBook(searchOption, keyword);
	}
	
	@Override
	public int countBook(String searchOption, String keyword) throws Exception{
		return dao.countBook(searchOption, keyword);
	}
	
	
}
