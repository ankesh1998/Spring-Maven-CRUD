package com.spring.test.springproject.user.entity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class User {


	private int user_id;
	
	@Size(min = 1,message = "length must be at least 1")
	private String user_name;

	@Pattern(regexp = "[6789][0-9]{9}",message = "Enter a valid contact e.g.9454192054")
	private String user_contact;
	
	@NotBlank(message = "required")
	private String user_address;
	
	@Pattern(regexp = "^$|[0-9]{12}|null",message = "Adhaar number must be of 12  digits")
	private String user_adhaar;

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

	public String getUser_contact() {
		return user_contact;
	}

	public void setUser_contact(String user_contact) {
		this.user_contact = user_contact;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_adhaar() {
		return user_adhaar;
	}

	public void setUser_adhaar(String user_adhaar) {
		this.user_adhaar = user_adhaar;
	}

	
	

}
