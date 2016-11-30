package com.jairrillo.jerseyspringmongodb.base;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import com.mongodb.WriteResult;

public abstract class BaseRepository<T> {
	
	protected MongoTemplate mongoTemplate;
			
	/**
	 * Save the object
	 * 
	 * @param entity
	 * @return
	 */
	public T save(T entity, Query query) {
		mongoTemplate.insert(entity);		
		return mongoTemplate.findOne(query, getGenericTypeClass()); 		
	}
	
	/**
	 * Find all
	 * 
	 * @return
	 */
	public List<T> findAll() {
		return mongoTemplate.findAll(getGenericTypeClass());
	}
	
	/**
	 * Find one
	 * @return
	 */
	public T findOne(Query query) {
		return mongoTemplate.findOne(query, getGenericTypeClass());
	}
	
	/**
	 * Update the first record
	 * 
	 * @param query
	 * @param update
	 * @return
	 */
	public WriteResult updateFirst(Query query, Update update) {
		return mongoTemplate.updateFirst(query, update, getGenericTypeClass());
	}
	
	/**
	 * Update Multiple records
	 * 
	 * @param query
	 * @param update
	 * @return
	 */
	public WriteResult updateMulti(Query query, Update update) {
		return mongoTemplate.updateMulti(query, update, getGenericTypeClass());
	}
	
	/**
	 * Remove a object
	 * @param query
	 * @return
	 */
	public WriteResult removeObject(Query query) {
		return mongoTemplate.remove(query, getGenericTypeClass());
	}
	
	
	// -- Private Methods -- //
	@SuppressWarnings("unchecked")
    private Class<T> getGenericTypeClass() {
        try {
            String className = ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0].getTypeName();
            Class<?> clazz = Class.forName(className);
            return (Class<T>) clazz;
        } catch (Exception e) {
            throw new IllegalStateException("Class is not parametrized with generic type!!! Please use extends <> ");
        }
    } 	

}
