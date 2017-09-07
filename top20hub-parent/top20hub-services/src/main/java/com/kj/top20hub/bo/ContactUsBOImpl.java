package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.ContactUsDAO;
import com.kj.top20hub.dto.ContactUs;

public class ContactUsBOImpl implements ContactUsBO {

	@Autowired
	ContactUsDAO contactUsDAO;
	
	@Override
	@Transactional
	public int create(ContactUs contactUs) {
		return contactUsDAO.create(contactUs);
	}

	@Override
	public List<ContactUs> getAllMessages() {
		return contactUsDAO.getAllMessages();
	}
	
	

}
