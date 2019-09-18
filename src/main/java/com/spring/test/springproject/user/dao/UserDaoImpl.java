package com.spring.test.springproject.user.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.test.springproject.user.entity.User;
import com.spring.test.springproject.user.rowMapper.UserRowMapper;

@Service
@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public int create(User user) {
		return jdbcTemplate.update("Insert into user (user_name,user_contact,user_address,user_adhaar) Values (?,?,?,?)", user.getUser_name(),
				user.getUser_contact(),user.getUser_address(),user.getUser_adhaar());
	}

	public List<User> getAllUser() {
		String sql = "Select * from user";
		UserRowMapper rowMapper = new UserRowMapper();
		List<User> result = jdbcTemplate.query(sql, rowMapper);
		return result;
	}

	public User getUserById(int id) {
		String sql = "Select * from user where user_id=?";
		UserRowMapper rowMapper = new UserRowMapper();
		User user = jdbcTemplate.queryForObject(sql, rowMapper, id);
		return user;
	}

	public int updateUser(User user) {
	
		String sql = "UPDATE user SET user_name=?,user_contact=?,user_address=?,user_adhaar=? WHERE user_id=?";
		return jdbcTemplate.update(sql, user.getUser_name(), user.getUser_contact(),user.getUser_address(),user.getUser_adhaar(),user.getUser_id());
		
	}

	public int deleteUser(int id) {
		return jdbcTemplate.update("DELETE From user where user_id=?", id);
	}

}
