package com.lis.dao;

import java.util.ArrayList;
import java.util.List;

import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;

public interface BookDAO {
	public List<BookVO> selectBook() throws Exception;


}
