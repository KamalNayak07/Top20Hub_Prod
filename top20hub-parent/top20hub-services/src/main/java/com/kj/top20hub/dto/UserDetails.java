package com.kj.top20hub.dto;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

	@Entity
	@Table(name = "user_details")
	public class UserDetails  implements Serializable{

	/**
		 * 
		 */
		private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_details_id;

	@Column
	private String company;

	@Column
	private String designation;

	@Column
	private String f_id;

	@Column
	private String t_id;
	
	@Column
	private String i_id;
	
	@Column
	private int rating;
	
	@Column
	private String image_url;
	
	public UserDetails()
	{
		
	}

	public UserDetails(String company, String designation, String f_id, String t_id, String i_id, int rating,
			String image_url) {
		this.company = company;
		this.designation = designation;
		this.f_id=f_id;
		this.t_id = t_id;
		this.i_id = i_id;
		this.rating = rating;
		this.image_url = image_url;
	}

	public int getUser_details_id() {
		return user_details_id;
	}

	public void setUser_details_id(int user_details_id) {
		this.user_details_id = user_details_id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getF_id() {
		return f_id;
	}

	public void setF_id(String f_id) {
		this.f_id = f_id;
	}

	public String getT_id() {
		return t_id;
	}

	public void setT_id(String t_id) {
		this.t_id = t_id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public String getI_id() {
		return i_id;
	}

	public void setI_id(String i_id) {
		this.i_id = i_id;
	}
	

}
