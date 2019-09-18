package com.spring.test.springproject.user.dao;

import java.util.List;

import com.spring.test.springproject.user.entity.User;

public interface UserDao {
	
	public int create(User user);
	public List<User> getAllUser();
	public User getUserById(int id);
	
	public int updateUser(User user);
	public int deleteUser(int id);

}
