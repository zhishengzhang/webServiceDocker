package com.slfinance.work.resource;

import org.springframework.stereotype.Component;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Component
@Path("test")
@Produces(MediaType.APPLICATION_JSON)
public class TestResource {

	@GET
	@Consumes(MediaType.APPLICATION_JSON)
	public Response test() {
		return Response.ok("service is OK!", "service is OK!").build();
	}

}
