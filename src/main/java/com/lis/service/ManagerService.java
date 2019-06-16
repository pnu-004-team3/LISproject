package com.lis.service;

import com.lis.dto.BookVO;
import com.lis.dto.ManagerVO;


public interface ManagerService {

	public String bookRegister(ManagerVO manager) throws Exception;
	public ManagerVO KeyCheck(String BARCODE) throws Exception;
}
