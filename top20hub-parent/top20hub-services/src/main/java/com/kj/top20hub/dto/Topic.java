package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "topic")
public class Topic implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int topic_id;

	@Column
	private String subject;
	
	@ManyToOne
	@JoinColumn(name="field_id",nullable=false)
	private Field field;
	
	public Topic() {
	}

	public Topic(String subject) {
		this.subject = subject;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public int getTopic_id() {
		return topic_id;
	}

	@Override
	public String toString() {
		return "Topic [topic_id=" + topic_id + ", subject=" + subject + ", field=" + field + "]";
	}	

}
