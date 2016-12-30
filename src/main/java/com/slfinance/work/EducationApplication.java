package com.slfinance.work;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

import org.glassfish.jersey.servlet.ServletContainer;
import org.glassfish.jersey.servlet.ServletProperties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.embedded.ServletRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.web.servlet.resource.DefaultServletHttpRequestHandler;

import com.slfinance.work.cfg.JerseyConfig;

@SpringBootApplication
@EnableAsync
public class EducationApplication {

	public static void main(String[] args) {
		SpringApplication.run(EducationApplication.class, args);
	}

	@Bean
	public ServletRegistrationBean jerseyServlet() {
		ServletRegistrationBean registration = new ServletRegistrationBean(
				new ServletContainer(), "/rest/*");
		registration.addInitParameter(
				ServletProperties.JAXRS_APPLICATION_CLASS,
				JerseyConfig.class.getName());
		return registration;
	}

	@Bean
	public DefaultServletHttpRequestHandler createDefaultServletHttpRequestHandler() {
		return new DefaultServletHttpRequestHandler();
	}

	/**
	 * 系统线程池用于执行异步任务
	 * 
	 * @return
	 */
	@Bean
	public Executor threadPool() {
		return Executors.newCachedThreadPool();
	}

}
