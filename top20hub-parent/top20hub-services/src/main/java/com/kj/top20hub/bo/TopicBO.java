package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.Topic;

public interface TopicBO {

	public List<Topic> getAllTopics();

	public Topic getTopic(int id);

	public int createTopic(Topic topic);

	void updateTopic(Topic topic);

	public void deleteTopic(int id);


}
