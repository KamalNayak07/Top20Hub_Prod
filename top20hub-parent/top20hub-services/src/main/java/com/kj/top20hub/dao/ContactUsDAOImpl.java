package com.kj.top20hub.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.kj.top20hub.dto.ContactUs;

@Repository
public class ContactUsDAOImpl implements ContactUsDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public int create(ContactUs contactUs) {

		Session currentSession = null;
		
		currentSession = sessionFactory.getCurrentSession();
		return (int) currentSession.save(contactUs);
	}

	@Override
	public List<ContactUs> getAllMessages() {
		
		Session currentSession = null;
		
		currentSession = sessionFactory.getCurrentSession();
	
		Query<ContactUs> query = currentSession.createQuery("from ContactUs", ContactUs.class);
		
		List<ContactUs> result = query.getResultList();
		
		return result;
	}

	@Override
	public ContactUs getMessage(int id) {

		Session currentSession = null;
		
		currentSession = sessionFactory.getCurrentSession();
		
		ContactUs result = currentSession.get(ContactUs.class, id);
		
		return result;
	}

	@Override
	public ContactUs deleteMessage(int id) {
		
		Session currentSession = null;
		
		currentSession = sessionFactory.getCurrentSession();
		
		ContactUs result = currentSession.get(ContactUs.class, id);
		
		currentSession.delete(result);
		
		
		return result;
		
	}

}
