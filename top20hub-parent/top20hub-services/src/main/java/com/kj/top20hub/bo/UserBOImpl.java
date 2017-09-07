package com.kj.top20hub.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kj.top20hub.dao.UserDAO;
import com.kj.top20hub.dto.User;

@Service
public class UserBOImpl implements UserBO {

	@Autowired
	private UserDAO userDao;
	
	@Override
	@Transactional
	public List<User> getAllUsers() {

		List<User> user = userDao.getAlluser();
		return user;
	}
	
	@Override
	@Transactional
	public User getUser(int id)
	{
		User user = userDao.getUser(id);
		return user;
	}

	@Override
	@Transactional
	public int createUser(User user) {
		return userDao.createUser(user);
	}

	@Override
	@Transactional
	public void updateUser(User user) {

		userDao.updateUser(user);
	}

	@Override
	@Transactional
	public User deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	
}
