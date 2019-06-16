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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.lis.dto.BookVO;
import com.lis.dto.ManagerVO;
import com.lis.dto.MemberVO;
import com.lis.service.ManagerService;
import com.lis.service.ManagerServiceImpl;
import com.lis.service.MemberService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@Inject
	private ManagerService service;
	
	/* URL ���� */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test(Locale locale, Model model) {
		logger.info("open test.jsp", locale);
		
		return "test";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/AdminUser", method = RequestMethod.GET)
	public String AdminUser(Locale locale, Model model) {
		logger.info("open AdminUser.jsp", locale);
		
		return "admin/AdminUser";
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
		
		return "admin/manager_book_register";
	}
	
	@RequestMapping(value = "/manager_book_register", method = RequestMethod.POST)
	public String manager_book_register(HttpServletRequest request) throws Exception {
		ManagerVO manager = new ManagerVO();
		
		manager.setISBN_ISSN((String) request.getParameter("isbn1"));
		manager.setBARCODE_STRING((String) request.getParameter("BARCODE_STRING"));
		manager.setBARCODE_NUMBER((String) request.getParameter("BARCODE_STRING"));
		manager.setBARCODE((String) request.getParameter("BARCODE"));
		manager.setPRINT_BARCODE((String) request.getParameter("BARCODE"));
		manager.setTITLE((String) request.getParameter("title1"));
		manager.setAUTHOR((String) request.getParameter("author1"));
		manager.setPUBLISHER((String) request.getParameter("publisher1"));
		manager.setPUBLISH_YEAR((String) request.getParameter("pubyear1"));
		manager.setAPART_CODE((String) request.getParameter("APART_CODE"));
		manager.setCLASSIFY_NO((String) request.getParameter("CLASSIFY_NO"));
		manager.setAUTHOR_NO((String) request.getParameter("AUTHOR_NO"));
		manager.setVOLUME((String) request.getParameter("VOLUME"));
		manager.setCOPY_NO((String) request.getParameter("COPY_NO"));
		manager.setDONOR_NAME((String) request.getParameter("DONOR_NAME"));
		manager.setINPUT_NAME((String) request.getParameter("INPUT_NAME"));
		manager.setUPDATE_NAME((String) request.getParameter("UPDATE_NAME"));

		service.bookRegister(manager);
		
		return "managerMain";
	}
	
	@RequestMapping(value = "/manager_booklist", method = RequestMethod.GET)
	public String manager_booklist(Locale locale, Model model) {
		logger.info("open manager_booklist.jsp", locale);
		
		return "admin/manager_booklist";
	}
	
	@RequestMapping(value = "/manager_monitoring", method = RequestMethod.GET)
	public String manager_monitoring(Locale locale, Model model) {
		logger.info("open manager_monitoring.jsp", locale);
		
		return "admin/manager_monitoring";
	}
	
	@RequestMapping(value = "/manager_rent_return", method = RequestMethod.GET)
	public String manager_rent_return(Locale locale, Model model) {
		logger.info("open manager_rent_return.jsp", locale);
		
		return "admin/manager_rent_return";
	}
	
	@RequestMapping(value = "/managerMain", method = RequestMethod.GET)
	public String managerMain(Locale locale, Model model) {
		logger.info("open managerMain.jsp", locale);
		
		return "admin/managerMain";
	}
	
	@RequestMapping(value = "/ModifyAdmin", method = RequestMethod.GET)
	public String ModifyAdmin(Locale locale, Model model) {
		logger.info("open ModifyAdmin.jsp", locale);
		
		return "admin/ModifyAdmin";
	}
	
	@RequestMapping(value = "/ModifyUser", method = RequestMethod.GET)
	public String ModifyUser(Locale locale, Model model) {
		logger.info("open ModifyUser.jsp", locale);
		
		return "admin/ModifyUser";
	}
	
	@RequestMapping(value = "/product_single", method = RequestMethod.GET)
	public String product_single(Locale locale, Model model) {
		logger.info("open product_single.jsp", locale);
		
		return "search/product_single";
	}
	
	@RequestMapping(value = "/reservation", method = RequestMethod.GET)
	public String reservation(Locale locale, Model model) {
		logger.info("open reservation.jsp", locale);
		
		return "reservation";
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(Locale locale, Model model) {
		logger.info("open search.jsp", locale);
		
		return "search/search";
	}
	
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String show(Locale locale, Model model) {
		logger.info("open show.jsp", locale);
		
		return "admin/show";
	}
	
	@RequestMapping(value = "/UserInfo_manage", method = RequestMethod.GET)
	public String UserInfo_manage(Locale locale, Model model) {
		logger.info("open UserInfo_manage.jsp", locale);
		
		return "UserInfo_manage";
	}

	@RequestMapping(value = "/ocr", method = RequestMethod.GET)
	public String ocr(Locale locale, Model model) {
		logger.info("open ocr.jsp", locale);
		
		return "ocr/ocr";
	}
		
}
