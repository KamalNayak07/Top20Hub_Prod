package com.kj.top20hub.bo;

import java.util.List;

import com.kj.top20hub.dto.User;

public interface UserBO {
	public List<User> getAllUsers();
	User getUser(int id);
	int createUser(User user);
	public void updateUser(User user);
	public User deleteUser(int id);
}
