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
	@JoinColumn(name = "contentmedia")
	ContentMedia contentMediaId;

	@Column
	private int user_id;

	public Content() {
	}

	public Content(int content_id, String title, String description, String links, int status,
			ContentMedia contentMediaId, int user_id) {
		this.content_id = content_id;
		this.title = title;
		this.description = description;
		this.links = links;
		this.status = status;
		this.contentMediaId = contentMediaId;
		this.user_id = user_id;
	}


	public int getContent_id() {
		return content_id;
	}

	public void setContent_id(int content_id) {
		this.content_id = content_id;
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

	@Override
	public String toString() {
		return "Content [content_id=" + content_id + ", title=" + title + ", description=" + description + ", links="
				+ links + ", status=" + status + ", contentMediaId=" + contentMediaId + ", user_id=" + user_id + "]";
	}

}