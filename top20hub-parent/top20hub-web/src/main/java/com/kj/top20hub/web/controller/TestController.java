package com.kj.top20hub.web.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class TestController {
	
	
	@GetMapping("/message")
	public String getMessgae()
	{
		return "Hello";
		
	}

}
