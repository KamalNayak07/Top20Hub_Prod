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
@Table(name = "topic")
public class Topic implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int topic_id;

	@Column
	private String subject;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "content")
	Content contentId;

	public int getTopic_id() {
		return topic_id;
	}

	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Content getContent() {
		return contentId;
	}

	public void setContent(Content content) {
		this.contentId = content;
	}

	public Topic() {
	}

	public Topic(int topic_id, String subject, Content content) {
		super();
		this.topic_id = topic_id;
		this.subject = subject;
		this.contentId = content;
	}

	@Override
	public String toString() {
		return "Topic [topic_id=" + topic_id + ", subject=" + subject + ", contentId=" + contentId + "]";
	}

}
