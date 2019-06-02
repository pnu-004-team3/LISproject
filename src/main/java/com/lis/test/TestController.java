package com.lis.test;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lis.dto.BookVO;
import com.lis.dto.MemberVO;
import com.lis.service.BookService;
import com.lis.service.MemberService;

@Controller
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Inject
	private MemberService memberservice;
	private BookService bookservice;
	
    @RequestMapping(value = "/selectTest", method = RequestMethod.GET)
    public String selectTest(Locale locale, Model model) throws Exception{
 
        logger.info("selectTest");
        
       // List<MemberVO> memberList = memberservice.selectMember();
        List<BookVO> bookList = bookservice.selectBook();
        
        //model.addAttribute("memberList", memberList);
        
        model.addAttribute("bookList", bookList);
        
        
        return "/dbtest/selectTest";
    }
    
	
  
        
      

}
