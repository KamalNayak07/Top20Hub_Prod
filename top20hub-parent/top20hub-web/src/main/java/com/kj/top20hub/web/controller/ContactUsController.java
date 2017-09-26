package com.kj.top20hub.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kj.top20hub.Exception.UserNotFoundException;
import com.kj.top20hub.bo.ContactUsBO;
import com.kj.top20hub.dto.ContactUs;

@RestController
@RequestMapping("/contactUs")
public class ContactUsController {

	@Autowired 
	private ContactUsBO contactUsService;
	
	@GetMapping(value = "/")
	public List<ContactUs> contactUsMsg() {

		List<ContactUs> contactUs = contactUsService.getAllMessages();
		return contactUs;
	}
	
	@GetMapping(value = "/{id}")
	public ContactUs getUser(@PathVariable int id) {

		ContactUs contactUs = contactUsService.getMessage(id);
		
		if(contactUs == null)
			throw new UserNotFoundException("Message not found for this id : "+id);
		
		return contactUs;
	}

	@PostMapping(value = "/")
	public int createContactUs(@RequestBody ContactUs contact) {
		int result = contactUsService.create(contact);

		return result;
	}
	
	@DeleteMapping("/deleteMessage/{id}")
	public ContactUs deleteMessage(@PathVariable int id)
	{
		
		ContactUs result = contactUsService.deleteMessage(id);
		
		return result;
		
	}
	
	
}
