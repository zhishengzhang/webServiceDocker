package com.slfinance.work.exception;

import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Provider
public class ServerErrorMapper implements ExceptionMapper<Exception> {

	@Override
	public Response toResponse(Exception exception) {
		return Response.ok()
				.entity(new ErrorMessage(exception.getMessage(), 1)).build();
	}

	@AllArgsConstructor
	@Getter
	public static class ErrorMessage {
		private String message;
		private int code;
	}

}
