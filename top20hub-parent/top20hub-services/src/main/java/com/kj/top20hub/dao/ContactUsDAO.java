package com.kj.top20hub.dao;

import java.util.List;

import com.kj.top20hub.dto.ContactUs;

public interface ContactUsDAO {
	
	public int create(ContactUs contactUs);

	public List<ContactUs> getAllMessages();

}
