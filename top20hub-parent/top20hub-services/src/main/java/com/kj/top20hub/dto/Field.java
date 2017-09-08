package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "field")
public class Field implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int field_id;

	@Column
	private String field_desc;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "topic")
	Topic topic;

	public Field() {
	}

	public Field(int field_id, String field_desc, Topic topicId) {
		this.field_id = field_id;
		this.field_desc = field_desc;
		this.topic = topicId;
	}

	public int getField_id() {
		return field_id;
	}

	public void setField_id(int field_id) {
		this.field_id = field_id;
	}

	public String getField_desc() {
		return field_desc;
	}

	public void setField_desc(String field_desc) {
		this.field_desc = field_desc;
	}

	public Topic getTopicId() {
		return topic;
	}

	public void setTopicId(Topic topicId) {
		this.topic = topicId;
	}

	@Override
	public String toString() {
		return "Field [field_id=" + field_id + ", field_desc=" + field_desc + ", topicId=" + topic + "]";
	}

}