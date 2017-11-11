package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "content")
public class Content implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int content_id;

	@Column
	private String title;

	@Column
	private String description;

	@Column
	private String links;

	@Column
	private int status;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "content_media")
	ContentMedia contentMediaId;

	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.PERSIST)
	@JoinColumn(name="topic_id",nullable=false)
	private Topic topic;
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.PERSIST)
	@JoinColumn(name="user_id",nullable=false)
	private User user;
	
	public Content() {
	}
	
	public Content(String title, String description, String links, int status, ContentMedia contentMediaId, User user,Topic topic) {
		this.title = title;
		this.description = description;
		this.links = links;
		this.status = status;
		this.contentMediaId = contentMediaId;
		this.user = user;
		this.topic = topic;
	}

	public int getContent_id() {
		return content_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLinks() {
		return links;
	}

	public void setLinks(String links) {
		this.links = links;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public ContentMedia getContentMediaId() {
		return contentMediaId;
	}

	public void setContentMediaId(ContentMedia contentMediaId) {
		this.contentMediaId = contentMediaId;
	}

	public Topic getTopic() {
		return topic;
	}

	public void setTopic(Topic topic) {
		this.topic = topic;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}