package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.ContactUs;

public interface ContactUsBO {

	public int create(ContactUs contactUs);
	
	public List<ContactUs> getAllMessages();

}
