package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.ContactUsDAO;
import com.kj.top20hub.dto.ContactUs;

@Service
public class ContactUsBOImpl implements ContactUsBO {

	@Autowired
	ContactUsDAO contactUsDAO;
	
	@Override
	@Transactional
	public int create(ContactUs contactUs) {
		return contactUsDAO.create(contactUs);
	}

	@Override
	@Transactional
	public List<ContactUs> getAllMessages() {
		return contactUsDAO.getAllMessages();
	}

	@Override
	@Transactional
	public ContactUs getMessage(int id) {
		return contactUsDAO.getMessage(id);
	}

	@Override
	@Transactional
	public ContactUs deleteMessage(int id) {
		return contactUsDAO.deleteMessage(id);
	}
	
	

}
