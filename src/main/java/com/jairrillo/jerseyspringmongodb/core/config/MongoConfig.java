package com.jairrillo.jerseyspringmongodb.core.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoConfiguration;
import org.springframework.data.mongodb.core.mapping.event.ValidatingMongoEventListener;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

@Configuration
@EnableMongoRepositories(basePackages = "com.jairrillo.jerseyspringmongodb")
public class MongoConfig extends AbstractMongoConfiguration {
 
    @Override
    protected String getDatabaseName() {
        return "jersey_spring_mongodb";
    }
 
    @Override
    public Mongo mongo() throws Exception {
        return new MongoClient("127.0.0.1", 27017);
    }
    
    @Bean
    public ValidatingMongoEventListener validatingMongoEventListener() {
        return new ValidatingMongoEventListener(validator());
    }

    @Bean
    public LocalValidatorFactoryBean validator() {
        return new LocalValidatorFactoryBean();
    }    

}

