package com.project.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.project.model.User;
import com.project.repository.UserRepo;

import io.swagger.annotations.ApiOperation;
import io.swagger.models.Response;

@RestController
@RequestMapping("/rest")
public class RestContollerClass {
	
	@Autowired
	UserRepo urepo;
	
	@GetMapping("/list")
	@ApiOperation(value = "Get list of user",
					notes="get list of all user present database"
			)
	public List<User> getList() 
	{
		return urepo.findAll(); 
	}
	
	@GetMapping("/{id}")
	@ApiOperation(value = "Get user by id",
	notes="get user by given id from db",
	response=User.class
)
	public Optional<User> getUser(@PathVariable("id") int id)
	{
		return urepo.findById(id);
	}
	@PostMapping("/")
	public User saveUser(@RequestBody User user)
	{
		return urepo.save(user);
	}
}
