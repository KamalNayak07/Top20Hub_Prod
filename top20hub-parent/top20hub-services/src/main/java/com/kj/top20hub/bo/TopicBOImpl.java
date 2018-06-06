package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.TopicDAO;
import com.kj.top20hub.dto.Topic;

@Service
public class TopicBOImpl implements TopicBO {

	@Autowired
	private TopicDAO topicdao;
	
	@Override
	@Transactional
	public List<Topic> getAllTopics() {
		return topicdao.getAllTopics();
	}

	@Override
	@Transactional
	public Topic getTopic(int id) {
		return topicdao.getTopic(id);
	}

	@Override
	@Transactional
	public int createTopic(Topic topic) {
		return topicdao.createTopic(topic);
	}

	@Override
	@Transactional
	public void updateTopic(Topic topic) {
	    topicdao.updateTopic(topic);
	}

	@Override
	@Transactional
	public void deleteTopic(int id) {
		topicdao.deleteTopic(id);
	}

	@Override
	@Transactional
	public List<Topic> getAllTopicsbyFieldId(int field_id) {
		return topicdao.getAllTopicsbyFieldId(field_id);
	}

	@Override
	@Transactional
	public List<Topic> getAllTopicsbyInsertedOn() {
		return topicdao.getAllTopicsbyInsertedOn();
	}

	@Override
	@Transactional
	public List<Topic> getAllTopicsbyRating() {
		return topicdao.getAllTopicsbyRating();
	}


}
