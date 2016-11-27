package com.jairrillo.jerseyspringmongodb.core.config;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

/**
 * Configures a JAX-RS endpoint. Delete this class, if you are not exposing
 * JAX-RS resources in your application.
 *
 * @author Jair Rillo Junior - jairrj@br.ibm.com
 */
@ApplicationPath("/api/")
public class JAXRSConfiguration extends Application {

}
