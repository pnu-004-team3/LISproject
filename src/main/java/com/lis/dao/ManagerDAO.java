package com.lis.dao;

import java.util.ArrayList;
import java.util.List;

import com.lis.dto.BookVO;
import com.lis.dto.ManagerVO;
import com.lis.dto.MemberVO;

public interface ManagerDAO {
	public String bookRegister(ManagerVO manager) throws Exception;
	public ManagerVO KeyCheck(String BARCODE) throws Exception;

}
