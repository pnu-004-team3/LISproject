package com.lis.test;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lis.dto.BookVO;
import com.lis.service.BookService;

@Controller
public class BookController {
	
	@Inject
	private BookService bookservice;
	
    @RequestMapping(value = "/booklist.do")
    public ModelAndView searchbook(@RequestParam(defaultValue="title") String searchOption, 
    		@RequestParam(defaultValue="") String keyword) throws Exception{
 
      // 레코드의 갯수
     List<BookVO> list = bookservice.searchBook(searchOption, keyword);
     int count = bookservice.countBook(searchOption, keyword);
      
      ModelAndView mav = new ModelAndView();
      //데이터를 맵에 저장
        
      Map<String, Object> map = new HashMap<String, Object>();
      map.put("count", count);
      map.put("list", list);
      map.put("searchOption", searchOption);
      map.put("keyword", keyword);
      
      mav.addObject("map", map);
      mav.setViewName("search/search");
      
      return mav;
      
    }
    
	
  
        
      

}
