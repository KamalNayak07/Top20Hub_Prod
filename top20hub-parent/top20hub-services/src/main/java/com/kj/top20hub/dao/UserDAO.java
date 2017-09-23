package com.kj.top20hub.dao;

import java.util.List;

import com.kj.top20hub.dto.User;
import com.kj.top20hub.dto.UserDetails;
import com.kj.top20hub.dto.UserInterest;

public interface UserDAO {
	
	public List<User> getAlluser();
	
	User getUser(int id);
	
	public int createUser(User user);

	void updateUser(User user);

	public User deleteUser(int id);

}
