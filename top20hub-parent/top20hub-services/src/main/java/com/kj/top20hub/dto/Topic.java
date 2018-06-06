package com.kj.top20hub.dto;

import java.io.Serializable;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.javafx.scene.control.skin.FXVK.Type;

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
	
	@Column
	private String topic_url;
		
	@Column(nullable=true)
	private int topic_rating;

	@Column
	@Temporal(TemporalType.DATE)
	private Date inserted_on;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.PERSIST)
	@JoinColumn(name="field_id",nullable=false)
	private Field field;
	
	@OneToMany(fetch =FetchType.EAGER,cascade = CascadeType.PERSIST,mappedBy="topic")
	private Set<Content> content;
	
	public Topic() {
	}

	public Topic(String subject, String topic_url, Field field, int topic_rating, Date inserted_on) {
		this.subject = subject;
		this.topic_url = topic_url;
		this.field = field;
		this.topic_rating = topic_rating;
		Calendar calendar = Calendar.getInstance();
		this.inserted_on = calendar.getTime();
	}

	
	public int getTopic_rating() {
		return topic_rating;
	}

	public void setTopic_rating(int topic_rating) {
		this.topic_rating = topic_rating;
	}

	public Date getInserted_on() {
		return inserted_on;
	}

	public void setInserted_on(Date inserted_on) {
		this.inserted_on = inserted_on;
	}
	
	public Field getField() {	
		return field;
	}

	public void setField(Field field) {
		this.field = field;
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

	public String getTopic_url() {
		return topic_url;
	}

	public void setTopic_url(String topic_url) {
		this.topic_url = topic_url;
	}

	@Override
	public String toString() {
		return "Topic [topic_id=" + topic_id + ", subject=" + subject + ", topic_url=" + topic_url + ", field=" + field
				+ "]";
	}
	

}
