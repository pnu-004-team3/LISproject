package com.lis.test;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	/* URL ¸ÊÇÎ */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/AdminUser", method = RequestMethod.GET)
	public String AdminUser(Locale locale, Model model) {
		logger.info("open AdminUser.jsp", locale);
		
		return "AdminUser";
	}
	
	@RequestMapping(value = "/late_fee", method = RequestMethod.GET)
	public String late_fee(Locale locale, Model model) {
		logger.info("open late-fee.jsp", locale);
		
		return "late_fee";
	}
	
	@RequestMapping(value = "/loan_history", method = RequestMethod.GET)
	public String loan_history(Locale locale, Model model) {
		logger.info("open loan-history.jsp", locale);
		
		return "loan_history";
	}
	
	
	@RequestMapping(value = "/loan", method = RequestMethod.GET)
	public String loan(Locale locale, Model model) {
		logger.info("open loan.jsp", locale);
		
		return "loan";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		logger.info("open login.jsp", locale);
		
		return "login";
	}
	
	@RequestMapping(value = "/lost", method = RequestMethod.GET)
	public String lost(Locale locale, Model model) {
		logger.info("open lost.jsp", locale);
		
		return "lost";
	}
	
	@RequestMapping(value = "/main_MyLib", method = RequestMethod.GET)
	public String main_MyLib(Locale locale, Model model) {
		logger.info("open main_MyLib.jsp", locale);
		
		return "main_MyLib";
	}
	
	@RequestMapping(value = "/manager_book_register", method = RequestMethod.GET)
	public String manager_book_register(Locale locale, Model model) {
		logger.info("open manager_book_register.jsp", locale);
		
		return "manager_book_register";
	}
	
	@RequestMapping(value = "/manager_booklist", method = RequestMethod.GET)
	public String manager_booklist(Locale locale, Model model) {
		logger.info("open manager_booklist.jsp", locale);
		
		return "manager_booklist";
	}
	
	@RequestMapping(value = "/manager_monitoring", method = RequestMethod.GET)
	public String manager_monitoring(Locale locale, Model model) {
		logger.info("open manager_monitoring.jsp", locale);
		
		return "manager_monitoring";
	}
	
	@RequestMapping(value = "/manager_rent_return", method = RequestMethod.GET)
	public String manager_rent_return(Locale locale, Model model) {
		logger.info("open manager_rent_return.jsp", locale);
		
		return "manager_rent_return";
	}
	
	@RequestMapping(value = "/managerMain", method = RequestMethod.GET)
	public String managerMain(Locale locale, Model model) {
		logger.info("open managerMain.jsp", locale);
		
		return "managerMain";
	}
	
	@RequestMapping(value = "/ModifyAdmin", method = RequestMethod.GET)
	public String ModifyAdmin(Locale locale, Model model) {
		logger.info("open ModifyAdmin.jsp", locale);
		
		return "ModifyAdmin";
	}
	
	@RequestMapping(value = "/ModifyUser", method = RequestMethod.GET)
	public String ModifyUser(Locale locale, Model model) {
		logger.info("open ModifyUser.jsp", locale);
		
		return "ModifyUser";
	}
	
	@RequestMapping(value = "/product_single", method = RequestMethod.GET)
	public String product_single(Locale locale, Model model) {
		logger.info("open product_single.jsp", locale);
		
		return "product_single";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) {
		logger.info("open reservation.jsp", locale);
		
		return "reservation";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("open search.jsp", locale);
		
		return "search";
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Locale locale, Model model) {
		logger.info("open show.jsp", locale);
		
		return "product_single";
	}
	
	@RequestMapping(value = "/UserInfo_manage", method = RequestMethod.GET)
	public String UserInfo_manage(Locale locale, Model model) {
		logger.info("open UserInfo_manage.jsp", locale);
		
		return "UserInfo_manage";
	}
		
}
