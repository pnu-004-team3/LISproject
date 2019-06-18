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
	public String loginPOST(MemberVO member, HttpSession session, Model model) throws Exception{
		String returnURL = "";
		if(session.getAttribute("login") != null ) {
			//기존 세션에 로그인 값 존재하면
			//기존값을 제거한다.
			session.removeAttribute("login");
		}
		
		//로그인 성공시 memberVO 객체를 반환함.
		MemberVO memberVO = service.login(member);
		
		//로그인 성공시
		if(memberVO != null) {
			//로그인 성공시 세션에 login이름으로 memberVO넣기
			session.setAttribute("login", memberVO);
			session.setAttribute("userKey", memberVO.getUser_key());
			returnURL="redirect:/";
		}else {
			//로그인 실패시 login 페이지로 이동
			returnURL="redirect:/login";
		}
	
		return returnURL;
	}
	

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(MemberVO member, HttpSession session, Model model) throws Exception{
		//세션 초기화
		session.invalidate();
		
		return "redirect:/login";
		
	}
	
	
	@RequestMapping(value = "/check_id", method = RequestMethod.POST)
	public void check_id(@RequestParam("id") String user_key, HttpServletResponse response) throws Exception{
		service.check_id(user_key, response);
	}
	
	
	
	
	
	
}
