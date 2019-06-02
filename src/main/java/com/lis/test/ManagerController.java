package com.lis.test;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lis.dto.BookVO;
import com.lis.service.ManagerService;

@Controller
public class ManagerController {
private ManagerService service;
	
	@Inject
	public ManagerController(ManagerService service) {
		this.service = service;
	}
	
	
	 @RequestMapping(value = "/bookRegistPost", method = RequestMethod.POST)
	 public String bookRegister(BookVO manager) throws Exception {
	
	 System.out.println(manager.getTITLE()); service.bookRegister(manager);
	 
	 return "register"; 
	 }
}
