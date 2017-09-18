package com.kj.top20hub.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kj.top20hub.dto.Content;

@Repository
public class ContentDAOImpl implements ContentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Content> getAllContent() {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Query<Content> query = currentSession.createQuery("from Content", Content.class);
		List<Content> result = query.getResultList();
		return result;
	}

	@Override
	public Content getContent(int id) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Content content = currentSession.get(Content.class, id);
		return content;
	}
	
	@Override
	public List<Content> getContentbyField(int id) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Query<Content> query = currentSession.createQuery("from Content where field_id=:param", Content.class);
		query.setParameter("param",id);
		List<Content> listOfContent = query.getResultList();
		return listOfContent;
	}

	@Override
	public List<Content> getContentbyTopic(int id) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Query<Content> query = currentSession.createQuery("from Content where topic_id=:param", Content.class);
		query.setParameter("param",id);
		List<Content> listOfContent = query.getResultList();
		return listOfContent;
	}

	@Override
	public List<Content> getContentbyUser(int id) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Query<Content> query = currentSession.createQuery("from Content where user_id=:param", Content.class);
		query.setParameter("param",id);
		List<Content> listOfContent = query.getResultList();
		return listOfContent;
	}

	@Override
	public int createContent(Content content) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		int result = (int) currentSession.save(content);
		return result;
	}

	@Override
	public void updateContent(Content content) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		currentSession.update(content);
	}

	@Override
	public Content deleteContent(int id) {
		Session currentSession = null;
		currentSession = sessionFactory.getCurrentSession();
		Content content = currentSession.get(Content.class,id);
		currentSession.delete(content);
		return content;
	}

	

}
