package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "content_media")
public class ContentMedia implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cm_id;

	@Column
	private String image_url;

	@Column
	private String video_url;

	public ContentMedia() {

	}

	public ContentMedia(String image_url, String video_url) {
		this.image_url = image_url;
		this.video_url = video_url;
	}

	public int getCm_id() {
		return cm_id;
	}

	public void setCm_id(int cm_id) {
		this.cm_id = cm_id;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getVideo_url() {
		return video_url;
	}

	public void setVideo_url(String video_url) {
		this.video_url = video_url;
	}

	@Override
	public String toString() {
		return "ContentMedia [cm_id=" + cm_id + ", image_url=" + image_url + ", video_url=" + video_url + "]";
	}

}