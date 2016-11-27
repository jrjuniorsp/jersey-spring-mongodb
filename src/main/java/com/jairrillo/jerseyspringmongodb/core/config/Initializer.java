package com.jairrillo.jerseyspringmongodb.core.config;

import javax.annotation.Priority;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;


/**
 * Initializer class
 * 
 * @author Jair Rillo Junior
 *
 */
@Priority(value = 1)
public class Initializer implements WebApplicationInitializer {

	@Override
    public void onStartup(ServletContext container) throws ServletException {
		
		AnnotationConfigWebApplicationContext rootContext = new AnnotationConfigWebApplicationContext();
        rootContext.register(WebAppConfig.class);
        container.addListener(new ContextLoaderListener(rootContext));
        container.addListener(new RequestContextListener());

        // The following line is required to avoid having jersey-spring3 registering it's own Spring root context.
        container.setInitParameter("contextConfigLocation", "");
        
    }

}
