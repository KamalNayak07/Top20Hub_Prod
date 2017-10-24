package com.kj.top20hub.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/admin")
public class MappingController {

	@RequestMapping("/userDetails")
	public String userDetails() {
		return "users_details";
	}

	@RequestMapping("/fieldAdminPage")
	public String fieldAdminPage() {
		return "fieldAdminPage";
	}
	
	@RequestMapping("/topicAdminPage")
	public String topicAdminPage() {
		return "topicAdminPage";
	}
	
	@RequestMapping("/contentAdminPage")
	public String contentAdminPage() {
		return "contentAdminPage";
	}
	
	@RequestMapping("/contactUsMessages")
	public String ContactusMessages()
	{
		return "contactUsMessages";
	}

}
