package com.jairrillo.jerseyspringmongodb.users;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

/**
 * 
 * @author Jair Rillo Junior - jairrj@br.ibm.com
 *
 */
@JsonInclude(Include.NON_NULL)
public class UserTO {
	
	private String userID;
	private String name;	
	private String email;
	private Boolean isActive;		
	private String password;
	
	private Integer role;
	
	// -- Getters and Setters -- //
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

}
