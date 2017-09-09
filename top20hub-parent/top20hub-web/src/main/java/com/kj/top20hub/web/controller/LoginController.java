
package com.kj.top20hub.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String loginPage()
	{
		return "login"; 
	}
	
	@RequestMapping("/loginError")
	public String loginFailed()
	{
		return "loginError"; 
	}
	

}
