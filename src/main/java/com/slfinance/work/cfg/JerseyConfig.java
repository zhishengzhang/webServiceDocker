package com.slfinance.work.cfg;

import com.slfinance.work.exception.ServerErrorMapper;
import com.slfinance.work.filter.CharsetResponseFilter;
import org.glassfish.jersey.logging.LoggingFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.ServerProperties;
import org.glassfish.jersey.server.spring.scope.RequestContextFilter;

public class JerseyConfig extends ResourceConfig {
	public JerseyConfig() {
		packages("com.slfinance.work.resource");
		register(RequestContextFilter.class);
		register(LoggingFeature.class);
		register(CharsetResponseFilter.class);
		register(ServerErrorMapper.class);
		property(ServerProperties.BV_SEND_ERROR_IN_RESPONSE, true);
	}
}
