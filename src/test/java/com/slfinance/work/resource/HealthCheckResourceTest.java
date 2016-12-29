package com.slfinance.work.resource;

import static com.jayway.restassured.RestAssured.expect;
import static org.hamcrest.Matchers.equalTo;

import org.junit.Before;
import org.junit.Test;
import org.springframework.test.context.web.WebAppConfiguration;

import com.jayway.restassured.RestAssured;
import com.slfinance.work.test.TestOnResource;

/**
 * 应用健康检查测试用例
 * 
 * @author larry
 * 
 */
@WebAppConfiguration
public class HealthCheckResourceTest extends TestOnResource {

	@Before
	public void setUp() {
		RestAssured.basePath="/education";
	}
	@Test
	public void testRequest() throws Exception {
		expect().statusCode(200).body("message", equalTo("service is OK!")).when().get("/rest/test");
	}
}
