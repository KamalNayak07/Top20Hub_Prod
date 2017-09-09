package com.kj.top20hub.web.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.kj.top20hub.Exception.UserNotFoundException;
import com.kj.top20hub.bo.ContactUsBO;
import com.kj.top20hub.bo.UserBO;
import com.kj.top20hub.dto.ContactUs;
import com.kj.top20hub.dto.User;

@RestController
@RequestMapping("/users")
public class UserController {

	@Autowired
	private UserBO userService;

	@Autowired
	private ContactUsBO contactUsService;

	
	@GetMapping(value = "/")
	public List<User> listUsers() {
		List<User> users = userService.getAllUsers();
		return users;
	}

	@GetMapping(value = "/{id}")
	public User getUser(@PathVariable int id) {
		User user = userService.getUser(id);
		
		if(user == null)
			throw new UserNotFoundException("Id Not found");
		
		return user;
	}

	@PostMapping(value = "/")
	public ResponseEntity<Object> creatUser(@RequestBody User user) {
		int result = userService.createUser(user);
		URI location =  ServletUriComponentsBuilder.fromCurrentRequest()
				.path("/{id}").buildAndExpand(result).toUri();
		return ResponseEntity.created(location).build();
	}

	@PutMapping(value = "/updateUser")
	public void updateUser(@RequestBody User user) {
		int id = user.getUser_id();
		userService.updateUser(user);
	}

	@DeleteMapping(value = "/deleteUser/{id}")
	public void deleteUser(@PathVariable int id) {
		User user = userService.deleteUser(id);
		
		if(user == null)
			throw new UserNotFoundException("User not found");
		
	}

	@RequestMapping("/contactUs")
	public String contactUs(Model theModel) {
		ContactUs contactUs = new ContactUs();
		theModel.addAttribute("contactUs", contactUs);
		return "contact_page";
	}

	@RequestMapping(value = "/contactUsMessages")
	public String contactUsMessages() {

		return "contactUsMessages";
	}

	
	
	@GetMapping(value = "/contactus/messages")
	public List<ContactUs> contactUsMsg() {

		List<ContactUs> contactUs = contactUsService.getAllMessages();
		return contactUs;

	}
	
	@PostMapping("/saveContactUs")
	public int createContactUs(@RequestBody ContactUs contactUs) {
		int result = contactUsService.create(contactUs);

		return result;
	}

}
