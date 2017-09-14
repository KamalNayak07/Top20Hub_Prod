package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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

	@Column
	private int user_id;

	@Column
	private int field_id;

	@Column
	private int topic_id;

	
	public Content() {
	}

	public Content(String title, String description, String links, int status,
			ContentMedia contentMediaId, int user_id,int field_id,int topic_id) {
		this.title = title;
		this.description = description;
		this.links = links;
		this.status = status;
		this.contentMediaId = contentMediaId;
		this.user_id = user_id;
		this.field_id = field_id;
		this.topic_id = topic_id;
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


	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	
	
	public int getField_id() {
		return field_id;
	}

	public void setField_id(int field_id) {
		this.field_id = field_id;
	}

	public int getTopic_id() {
		return topic_id;
	}

	public void setTopic_id(int topic_id) {
		this.topic_id = topic_id;
	}

	@Override
	public String toString() {
		return "Content [content_id=" + content_id + ", title=" + title + ", description=" + description + ", links="
				+ links + ", status=" + status + ", contentMediaId=" + contentMediaId + ", user_id=" + user_id
				+ ", field_id=" + field_id + ", topic_id=" + topic_id + "]";
	}

	

}