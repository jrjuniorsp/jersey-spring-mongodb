package com.jairrillo.jerseyspringmongodb.users;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public UserTO addUser(UserTO userTO) {
		UserEntity userEntity = new UserEntity();
		//Copy values
		BeanUtils.copyProperties(userTO, userEntity);
		//Conditions
		List<UserConditionsEntity> userConditions = new ArrayList<>();
		userConditions.add(new UserConditionsEntity("CONDITION 1"));
		userConditions.add(new UserConditionsEntity("CONDITION 2"));
		userConditions.add(new UserConditionsEntity("CONDITION 3"));
		
		userEntity.setUserConditions(userConditions);
		
		//Save the Values
		userRepository.save(userEntity);
		//Copy the values again
		BeanUtils.copyProperties(userEntity, userTO);
		return userTO;
	}
	
	public List<UserTO> getUsers() {
		List<UserEntity> listUsersEntity = userRepository.findAll();
		//Copy values
		List<UserTO> listUsers = new ArrayList<>();
		for (UserEntity userEntity : listUsersEntity) {
			UserTO userTO = new UserTO();
			BeanUtils.copyProperties(userEntity, userTO);
			listUsers.add(userTO);
		}
		return listUsers;
	}

}
