package com.spring.test.springproject.user.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.spring.test.springproject.user.entity.User;

public class UserRowMapper implements RowMapper<User>{
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUser_id(rs.getInt(1));
		user.setUser_name(rs.getString(2));
		user.setUser_contact(rs.getString(3));
		user.setUser_address(rs.getString(4));
		user.setUser_adhaar(rs.getString(5));
		return user;
	}
}
