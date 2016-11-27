package com.jairrillo.jerseyspringmongodb.users;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * 
 * @author Jair Rillo Junior - jairrj@br.ibm.com
 *
 */
@Component
@Path("/v1/users")
public class UserResource {
	
	@Autowired
	private UserService userService;
	
	/**
	 * Add a new user into the system
	 * 
	 * @param userTO
	 * @return
	 */
	@POST
	@Path("/add")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response addUser(UserTO userTO) {
		userTO = userService.addUser(userTO);
		//Return success
		return Response.status(201).entity(userTO).build();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getUsers() {	
		List<UserTO> listUsers = userService.getUsers();
		return Response.status(200).entity(listUsers).build();
	}
}
