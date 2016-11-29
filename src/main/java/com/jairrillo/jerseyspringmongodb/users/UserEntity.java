package com.jairrillo.jerseyspringmongodb.users;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class UserEntity {
	
	@Id
	private String userID;	
	private String name;		
	private String email;	
	private Boolean isActive;	
	private String password;	
	private Integer role;
	private List<UserConditionsEntity> userConditions;

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public List<UserConditionsEntity> getUserConditions() {
		return userConditions;
	}

	public void setUserConditions(List<UserConditionsEntity> userConditions) {
		this.userConditions = userConditions;
	}

}
