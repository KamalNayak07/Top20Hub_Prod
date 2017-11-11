package com.kj.top20hub.dto;

import java.io.Serializable;
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
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User implements Serializable {


	private static final long serialVersionUID = 1L;

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;

	@Column
	private String user_name;

	@Column
	private String email;

	@Column
	private int contact;

	@Column
	private String password;
	
//	@Column
//	private String role_name;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_details")
	private UserDetails userDetails;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="user_interest")
	private UserInterest userIntrest;
	
	@OneToMany(fetch=FetchType.EAGER,cascade=CascadeType.PERSIST,mappedBy="user")
	private Set<Content> content;	
	
	public User(){		
	}

	public User(String user_name, String email, int contact, String passowrd, String role_name) {
			this.user_name = user_name;
			this.email = email;
			this.contact = contact;
			this.password = passowrd;
//			this.role_name = role_name;	
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}

	public UserInterest getUserIntrest() {
		return userIntrest;
	}

	public void setUserIntrest(UserInterest userIntrest) {
		this.userIntrest = userIntrest;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getContact() {
		return contact;
	}

	public void setContact(int contactNo) {
		this.contact = contactNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
	
//	public String getRole_name() {
//		return role_name;
//	}
//
//	public void setRole_name(String role_name) {
//		this.role_name = role_name;
//	}

//	@Override
//	public String toString() {
//		return "User [user_id=" + user_id + ", user_name=" + user_name + ", email=" + email + ", contact=" + contact
//				+ ", password=" + password + ", role_name=" + role_name + ", userDetails=" + userDetails
//				+ ", userIntrest=" + userIntrest + "]";
//	}

	

	
}
