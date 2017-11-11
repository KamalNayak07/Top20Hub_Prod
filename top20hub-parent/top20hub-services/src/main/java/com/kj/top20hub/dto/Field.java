package com.kj.top20hub.dto;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "field")
public class Field implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	private int field_id;

	@Column
	private String field_desc;
	
	@Column
	private String field_url;
	
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST, mappedBy="field")
	private Set<Topic> topic;

	public Field() {
	}

	public Field(String field_desc, String field_url, Set<Topic> topic) {
		this.field_desc = field_desc;
		this.field_url = field_url;
		this.topic = topic;
	}
	
	public int getField_id() {
		return field_id;
	}


	public String getField_desc() {
		return field_desc;
	}

	public void setField_desc(String field_desc) {
		this.field_desc = field_desc;
	}

	public Set<Topic> getTopicId() {
		return topic;
	}

	public void setTopicId(Set<Topic> topicId) {
		this.topic = topicId;
	}

	public Set<Topic> getTopic() {
		return topic;
	}

	public String getField_url() {
		return field_url;
	}

	public void setField_url(String field_url) {
		this.field_url = field_url;
	}

	public void setTopic(Set<Topic> topic) {
		this.topic = topic;
	}

	public void add(Topic tempTopic)
	{
		if(topic == null)
		{
			topic = new HashSet<>();
		}
		
		topic.add(tempTopic);
	}

	@Override
	public String toString() {
		return "Field [field_id=" + field_id + ", field_desc=" + field_desc + ", field_url=" + field_url + "]";
	}

	
	
	

}