package com.lis.test;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lis.dto.MemberVO;
import com.lis.service.MemberService;

@Controller
public class UserLoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private MemberService service;
	
	@Inject
	public UserLoginController(MemberService service) {
		this.service = service;
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginGET(@ModelAttribute("member") MemberVO member) {
		
		return "user/login";
	}
	
	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPOST(MemberVO member, HttpSession session, Model model) throws Exception{
		MemberVO memberVO = service.login(member);
		String returnURL = "";
		if(session.getAttribute("login") !=null) {
			session.removeAttribute("login");
		}
		if(memberVO == null || !BCrypt.checkpw(member.getUser_PW(), memberVO.getUser_PW())) {
			return;
		}
	
		model.addAttribute("user", memberVO);
	}
	
	
	
	@RequestMapping(value = "/check_id", method = RequestMethod.POST)
	public void check_id(@RequestParam("id") String user_key, HttpServletResponse response) throws Exception{
		service.check_id(user_key, response);
	}
	
	
	
	
	
	
}
