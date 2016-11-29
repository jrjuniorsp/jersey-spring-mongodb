package com.jairrillo.jerseyspringmongodb.users;

public class UserConditionsEntity {
	
	private String condition;
	
	public UserConditionsEntity() {
		
	}
	
	public UserConditionsEntity(String condition) {
		this.condition = condition;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

}
