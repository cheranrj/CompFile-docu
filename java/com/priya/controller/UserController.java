package com.priya.controller;

import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.priya.model.complaint;
import com.priya.service.UserService;

@Controller
@RequestMapping("user")
public class UserController {
	
	private static final Logger LOGGER = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@PostMapping("/detail")
	public String showDetail(@RequestParam("name") String name, @RequestParam("category") String category,
							 @RequestParam("subject") String subject,@RequestParam("address") String address,
							 @RequestParam("email") String email,@RequestParam("mobile") Long mobile,
							 @RequestParam("district") String district,HttpSession session)
	{
		LOGGER.info("Entering");
		complaint comp = new complaint();
		
		comp.setName(name);
		comp.setCategory(category);
		comp.setSubject(subject);
		comp.setDistrict(district);
		comp.setAddress(address);
		comp.setEmail(email);
		comp.setMobile(mobile);
		comp.setDate(LocalDateTime.now());
		
		
		userService.save(comp);
		
		long id = comp.getId();
		
		session.setAttribute("users",comp);
		
		session.setAttribute("id",id);
		LOGGER.info("stored");
		return "redirect:../user/report";
		
	}	
	
	@GetMapping("/report")
	public String report(HttpSession session){
		
		
		
		session.getAttribute("id");
		
		LOGGER.info("ennnnnnn");
		
		long id =  (long) session.getAttribute("id");
		
		complaint comp = userService.findOne(id);
		
		session.setAttribute("scomp",comp);
		
		
		
		return "success";
	}
	
	@GetMapping()
	public String neww(){
		
		
		return "comp";
	}
	
	
	@GetMapping("/compid")
	public String compid(HttpSession session){
		
		return "identify";
	}
	
	@GetMapping("/valid")
	public String valid(@RequestParam("id") Long id,@RequestParam("email") String email,HttpSession session){
		
		complaint comp = userService.findByIdAndEmail(id,email); 
		
		session.setAttribute("scomp",comp);
		
		return "success";
	}
	
	@GetMapping("/select")
	public String select(HttpSession session){
		
		return "selection";
	}


}
