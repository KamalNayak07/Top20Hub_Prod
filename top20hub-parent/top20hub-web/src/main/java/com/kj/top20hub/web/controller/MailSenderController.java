package com.kj.top20hub.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.kj.top20hub.dto.Messages;

@Controller
public class MailSenderController {
	
	private Logger log = Logger.getLogger(MailSenderController.class);

@Autowired	
private MailSender mailSender;
	

@PostMapping("/sendMessage")
public String sendMessage(@RequestBody Messages message )
{
	String name = message.getName();
	String email = message.getEmail();
	String text = message.getReplyMessage();
	
	log.info("Name : "+name+" email : "+email+" text : "+text);
	
	SimpleMailMessage mail = new SimpleMailMessage();
	mail.setFrom("top20hub@gmail.com");
	mail.setTo(email);
	mail.setSubject("Re : Hello,"+name+", your message from Top20hub.com");
	mail.setText(text);
	
	try
	{
		mailSender.send(mail);
		log.info("Mail send successfully..!");
	}catch(Exception ex)
	{
		log.info("can't send the mail : "+ex.getMessage());
	}
	
	
	return "success";
}



}
