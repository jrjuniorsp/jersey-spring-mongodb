package com.jairrillo.jerseyspringmongodb.core.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoTemplate;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

@Configuration
public class MongoConfig {
  
    @Bean
    public Mongo mongo() throws Exception {
        return new MongoClient("127.0.0.1", 27017);
    }
    
    @Bean
    public MongoTemplate mongoTemplate() throws Exception {
        return new MongoTemplate(mongo(), getDatabaseName());
    }
    
    private String getDatabaseName() {
        return "jersey_spring_mongodb";
    }    

}

