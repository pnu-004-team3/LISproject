package com.lis.dao;

import java.util.List;

import com.lis.dto.BookVO;

public interface BookDAO {
	public List<BookVO> searchBook(String searchOption, String keyword) throws Exception;
	public int countBook(String searchOption, String keyword) throws Exception;
	

}
