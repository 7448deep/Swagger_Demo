package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.User;
import com.project.repository.UserRepo;

@Controller
public class UserController {
	
	@RequestMapping("/")
	public String homepage()
	{
		return "login";
	}
	
	
	@RequestMapping("/logout")
	public String logout()
	{
		return "login";
	}
	@RequestMapping("/home")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		List<User> list=urepo.findAll();
		mv.addObject("list",list);
		mv.setViewName("dashboard");
		return mv;
	
	}

	
	@Autowired 
	private UserRepo urepo;
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String username,@RequestParam String password)
	{
		ModelAndView mv=new ModelAndView();
		
		if(username.equals("Admin")&&password.equals("password"))
		{
			List<User> list=urepo.findAll();
			mv.addObject("list",list);
			mv.setViewName("dashboard");
			return mv;
		}
		else
		{
			mv.setViewName("login");
			return mv;
		}
	}
	
	@RequestMapping("/openfrom")
	public String openform()
	{
		return "registerform";
	}
	
	
	@RequestMapping("/OpenEditform")
	public ModelAndView openeditform(@RequestParam("userId") int userId)
	{
		ModelAndView mv=new ModelAndView();
		User user=urepo.getById(userId);
		mv.addObject("user",user);
		mv.setViewName("editform");
		return mv;
		
	}
	
	
	@RequestMapping("/deleteuser")
	public ModelAndView deleteUser(@RequestParam("userId") int userId)
	{
		urepo.deleteById(userId);
		ModelAndView mv=new ModelAndView();
		List<User> list=urepo.findAll();
		mv.addObject("list",list);
		mv.setViewName("dashboard");
		return mv;
	}
	
	@RequestMapping("/saveUser")
	public ModelAndView saveUser( User user)
	{
		urepo.save(user);
		ModelAndView mv=new ModelAndView();
		List<User> list=urepo.findAll();
		mv.addObject("list",list);
		mv.setViewName("dashboard");
		return mv;
		
	}
	@RequestMapping("/deleteAll")
	public ModelAndView deleteAll( )
	{
		urepo.deleteAll();
		ModelAndView mv=new ModelAndView();
		List<User> list=urepo.findAll();
		mv.addObject("list",list);
		mv.setViewName("dashboard");
		return mv;
		
	}
}
