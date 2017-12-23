package com.kj.top20hub.dao;

import java.util.List;
import org.hibernate.query.Query;
import org.apache.commons.collections.bag.SynchronizedSortedBag;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kj.top20hub.dto.Field;
import com.kj.top20hub.dto.Topic;
import com.kj.top20hub.dto.UserDetails;
import com.kj.top20hub.dto.UserInterest;

@Repository
public class TopicDAOImpl implements TopicDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public List<Topic> getAllTopics() {
		Session currentSession = null;
		currentSession = sessionfactory.getCurrentSession();
		Query<Topic> query = currentSession.createQuery("from Topic",Topic.class);
		List<Topic> AllTopicsList = query.getResultList();
		return AllTopicsList;
	}

	@Override
	public Topic getTopic(int id) {
		Session currentSession = null;
		currentSession = sessionfactory.getCurrentSession();
		Topic topic = currentSession.get(Topic.class,id);
		return topic;
	}

	@Override
	public int createTopic(Topic topic) {
		Session currentSession = null;		
		currentSession =  sessionfactory.getCurrentSession();
		int result  = (int) currentSession.save(topic);
		return result;
	}

	@Override
	public void updateTopic(Topic topic) {
		Session currentSession = null;
		currentSession =  sessionfactory.getCurrentSession();
		currentSession.update(topic);
	}

	@Override
	public void deleteTopic(int id) {
		Session currentSession = null;
		currentSession =  sessionfactory.getCurrentSession();
		Topic topic = currentSession.load(Topic.class,id);
		currentSession.delete(topic);
	}

	@Override
	public List<Topic> getAllTopicsbyFieldId(int field_id) {
		Session currentSession = null;
		currentSession = sessionfactory.getCurrentSession();
		Query<Topic> query = currentSession.createQuery("from Topic where field_id=:par",Topic.class);
		query.setParameter("par", field_id);
		List<Topic> AllTopicsListbyFieldId = query.getResultList();
		
		return AllTopicsListbyFieldId;
	}

}
