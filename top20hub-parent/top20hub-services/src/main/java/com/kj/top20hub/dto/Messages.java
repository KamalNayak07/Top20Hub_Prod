package com.kj.top20hub.dto;

public class Messages {
	
	
	private String name;
	private String email;
	private String replyMessage;
	
	public Messages() {
	}

	public Messages(String name, String email, String replyMessage) {
		this.name = name;
		this.email = email;
		this.replyMessage = replyMessage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getReplyMessage() {
		return replyMessage;
	}

	public void setReplyMessage(String replyMessage) {
		this.replyMessage = replyMessage;
	}
	
	
}
