package com.myProject.DTO;

import java.sql.Date;

public class UserDTO {
	
	String id ;
	String name;
	String password;
	Date birth;
	String email;
	int gender;
	String preference;
	
	public UserDTO() {
		super();
	}

	public UserDTO(String id, String name, String password, Date birth, String email, int gender, String preference) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.birth = birth;
		this.email = email;
		this.gender = gender;
		this.preference = preference;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getPreference() {
		return preference;
	}
	public void setPreference(String preference) {
		this.preference = preference;
	}
	
	

}
