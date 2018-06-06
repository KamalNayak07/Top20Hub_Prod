package com.kj.top20hub.dao;

import java.util.List;

import com.kj.top20hub.dto.Topic;

public interface TopicDAO {

	public List<Topic> getAllTopics();
	
	public Topic getTopic(int id);

	public int createTopic(Topic topic);
	
	public void updateTopic(Topic topic);

	public void deleteTopic(int id);

	public List<Topic> getAllTopicsbyFieldId(int field_id);

	public List<Topic> getAllTopicsbyInsertedOn();

	public List<Topic> getAllTopicsbyRating();


	
	
}
