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

import org.mindrot.jbcrypt.BCrypt;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lis.dto.MemberVO;
import com.lis.service.MemberService;

@Controller
public class UserRegisterController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private MemberService service;
	
	

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerGET(Locale locale, Model model)throws Exception {
		logger.info("open register.jsp", locale);
		return "/user/register";
	}
		
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(MemberVO member) throws Exception {
		
		String hashedPw = BCrypt.hashpw(member.getUser_PW(), BCrypt.gensalt());
		member.setUser_PW(hashedPw);
		service.register(member);
		
		return "redirect:login";
	}
	
	@RequestMapping(value = "/checkUserEmail", method = RequestMethod.POST)
	public void checkUserEmail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String userEmail = request.getParameter("userEmail");
		
		System.out.print(userEmail);
		
		PrintWriter out = response.getWriter();
		String output = "";
		if (service.emailCheck(userEmail) != null) {
			output = "false";
		} else {
			output = "true";
		}
		out.print(output);
		out.flush();
		out.close();
	}
	
}
