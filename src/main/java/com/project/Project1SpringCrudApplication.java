package com.project;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.project")
public class Project1SpringCrudApplication {

	public static void main(String[] args) {
		SpringApplication.run(Project1SpringCrudApplication.class, args);
	}

}
