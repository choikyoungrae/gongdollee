package com.myProject.DAO;

import java.sql.Date;

import com.myProject.DTO.UserDTO;

public interface IUserDAO {
	
	public int joinDAO(String name, String id, String password, Date birthday, String email, int gender, String preference);
	
	public int overlapID(String id);
	
	public UserDTO userInfoDAO(String id);

}
