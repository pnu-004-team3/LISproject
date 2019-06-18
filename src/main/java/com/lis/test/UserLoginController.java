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
			//���� ���ǿ� �α��� �� �����ϸ�
			//�������� �����Ѵ�.
			session.removeAttribute("login");
		}
		
		//�α��� ������ memberVO ��ü�� ��ȯ��.
		MemberVO memberVO = service.login(member);
		
		//�α��� ������
		if(memberVO != null) {
			//�α��� ������ ���ǿ� login�̸����� memberVO�ֱ�
			session.setAttribute("login", memberVO);
			session.setAttribute("userKey", memberVO.getUser_key());
			returnURL="redirect:/";
		}else {
			//�α��� ���н� login �������� �̵�
			returnURL="redirect:/login";
		}
	
		return returnURL;
	}
	

	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(MemberVO member, HttpSession session, Model model) throws Exception{
		//���� �ʱ�ȭ
		session.invalidate();
		
		return "redirect:/login";
		
	}
	
	
	@RequestMapping(value = "/check_id", method = RequestMethod.POST)
	public void check_id(@RequestParam("id") String user_key, HttpServletResponse response) throws Exception{
		service.check_id(user_key, response);
	}
	
	
	
	
	
	
}
