package com.lis.service;

import java.util.List;

import com.lis.dto.BookVO;


public interface BookService {

	public List<BookVO> selectBook() throws Exception;
	
}
