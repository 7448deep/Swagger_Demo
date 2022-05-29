package com.project;

import java.util.Collections;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@Service
@EnableWebMvc
public class Config {
	
	@Bean
	public Docket swagerConfig()
	{
		return new Docket(DocumentationType.SWAGGER_2)
				.select()
				.paths(PathSelectors.ant("/rest/*"))
				.apis(RequestHandlerSelectors.basePackage("com.project"))
				.build()
				.apiInfo(apiDetails());
	}

	private ApiInfo apiDetails() {
		return new ApiInfo(
				"Rest CRUD App",
				"Demo Project for SWAGGER Testing",
				"1.0",
				"Term of service",
				new Contact("Dipak kadam", "website url", "7448deep@gmail.com"),
				"license",
				"Api License url",
				Collections.EMPTY_LIST
				);
	}
}
