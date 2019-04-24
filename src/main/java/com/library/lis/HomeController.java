package com.library.lis;

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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("open about.jsp", locale);
		
		return "about";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		logger.info("open contact.jsp", locale);
		
		return "contact";
	}
	
	@RequestMapping(value = "/elements", method = RequestMethod.GET)
	public String elements(Locale locale, Model model) {
		logger.info("open elements.jsp", locale);
		
		return "elements";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("open index.jsp", locale);
		
		return "index";
	}
	
	@RequestMapping(value = "/news", method = RequestMethod.GET)
	public String news(Locale locale, Model model) {
		logger.info("open news.jsp", locale);
		
		return "news";
	}
	
	@RequestMapping(value = "/properties", method = RequestMethod.GET)
	public String properties(Locale locale, Model model) {
		logger.info("open properties.jsp", locale);
		
		return "properties";
	}
	
	@RequestMapping(value = "/property", method = RequestMethod.GET)
	public String property(Locale locale, Model model) {
		logger.info("open property.jsp", locale);
		
		return "property";
	}
		
}
