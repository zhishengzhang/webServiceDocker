package zhang.work.cfg;

import org.glassfish.jersey.logging.LoggingFeature;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.ServerProperties;
import org.glassfish.jersey.server.spring.scope.RequestContextFilter;

import zhang.work.exception.ServerErrorMapper;
import zhang.work.filter.CharsetResponseFilter;

public class JerseyConfig extends ResourceConfig {
	public JerseyConfig() {
		packages("zhang.work.resource");
		register(RequestContextFilter.class);
		register(LoggingFeature.class);
		register(CharsetResponseFilter.class);
		register(ServerErrorMapper.class);
		property(ServerProperties.BV_SEND_ERROR_IN_RESPONSE, true);
	}
}
