package com.jairrillo.jerseyspringmongodb.users;

import static org.springframework.data.mongodb.core.query.Criteria.where;

import java.util.List;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Component;

import com.jairrillo.jerseyspringmongodb.base.BaseRepository;
import com.mongodb.BasicDBObject;

@Component
public class UserRepository extends BaseRepository<UserEntity> {
	
	/**
	 * Constructor
	 * 
	 * @param mongoTemplate
	 */
	public UserRepository(MongoTemplate mongoTemplate) {
		this.mongoTemplate = mongoTemplate;
	}
	
	public UserEntity save(UserEntity userEntity) {
		Query query = new Query(where("name").is(userEntity.getName()));
		return super.save(userEntity, query); 
	}
	
	public List<UserEntity> findAll() {
		return super.findAll();
	}
	
	public UserEntity findByName(String name) {
		Query query = new Query(where("name").is(name));		
		return super.findOne(query);
	}
	
	public UserEntity findByNameAndEmail(String name, String email) {
		Query query = new Query(where("name").is(name).and("email").is(email));		
		return super.findOne(query);
	}	
	
	public UserEntity findUserByCondition(String condition) {
		Query query = new Query(where("userConditions.condition").is(condition));		
		return super.findOne(query);
	}		
	
	public void addCondition(UserConditionsEntity condition) {
		Query query = new Query(where("name").is("Robin"));		
		Update update = new Update().addToSet("userConditions", condition);		
		super.updateFirst(query, update);
	}
	
	public void deleteCondition(String condition) {		
		Query query = new Query(where("name").is("Robin"));		
		Update update = new Update().pull("userConditions", new BasicDBObject("condition",condition));		
		super.updateFirst(query, update);		
	}

}
