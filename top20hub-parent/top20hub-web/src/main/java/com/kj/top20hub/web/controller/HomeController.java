package com.kj.top20hub.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	
	@RequestMapping(value={"/","/home","/index"})
	public ModelAndView index()
	{
		
		ModelAndView mv = new ModelAndView("page");
		return mv;
		
	}
	
	@RequestMapping("/userDetails")
	public String userDetails()
	{
		return "users_details";
	}

	@RequestMapping("/contactPage")
	public String ContactPage()
	{
		return "contact_page";
	}
	
	@RequestMapping("/contactUsMessages")
	public String ContactusMessages()
	{
		return "contactUsMessages";
	}
	

	@RequestMapping("/fieldAdminPage")
	public String fieldAdminPage()
	{
		return "fieldAdminPage";
	}
	
}
