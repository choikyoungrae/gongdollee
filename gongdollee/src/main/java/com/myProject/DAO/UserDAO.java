package com.myProject.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.myProject.DTO.UserDTO;



@Repository
@Transactional
public class UserDAO implements IUserDAO{
	
	JdbcTemplate template ;
	
	
	@Autowired
	public void setTemplate(JdbcTemplate template){
		this.template = template;
	}
	
	
	
	public UserDAO() {
		
	}

	@Override
	public int joinDAO(final String name, final String id, final String password, final Date birthday, final String email, final int gender,
			final String preference) {
		
		int result = 0;
		
		result = this.template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				
				String query = "insert into projectuser (name, id, password, birthday, email, gender, preference)"
						     + "values(?, ?, ?, ?, ?, ?, ?)" ;
				
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, name);
				pstmt.setString(2, id);
				pstmt.setString(3, password);
				pstmt.setDate(4, birthday);
				pstmt.setString(5, email);
				pstmt.setInt(6, gender);
				pstmt.setString(7, preference);
				
				return pstmt;
			};
		});
		
		return result;
	}



	@Override
	public int overlapID(final String id) {		
		int result = 0 ;
		
		result = this.template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "select count(*) from projectuser where id = ? ";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, id);
				
				return pstmt;
			}
		});
		
		return result;
	}



	@Override
	public UserDTO userInfoDAO(String id) {
		UserDTO dto;
		
		String query = "select * from projectuser where id =" + id;
		
        dto = this.template.queryForObject(query, new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
		
		
		return dto;
	}



	@Override
	public UserDTO userFindID(String name, String email) {
		
		UserDTO dto;
		
		String query = "select * from projectuser where name=" + name + " and email=" + email;
		
		dto = this.template.queryForObject(query, new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
		
		return dto;
	}



	@Override
	public UserDTO userFindPW(String name, String id) {

        UserDTO dto;
		
		String query = "select * from projectuser where name=" + name + " and id=" + id;
		
		dto = this.template.queryForObject(query, new BeanPropertyRowMapper<UserDTO>(UserDTO.class));
		
		return dto;
	}



	@Override
	public int changingPW(final String newPW, final String id) {
        int result = 0 ;
        
        System.out.println("��й�ȣ(DAO) : " + newPW);
		
		result = this.template.update(new PreparedStatementCreator() {
			
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				String query = "UPDATE PROJECTUSER SET PASSWORD = ? WHERE ID = ?";
				PreparedStatement pstmt = con.prepareStatement(query);
				pstmt.setString(1, newPW);
				pstmt.setString(2, id);
				
				return pstmt;
			}
		});
		
		return result;
	}

}
