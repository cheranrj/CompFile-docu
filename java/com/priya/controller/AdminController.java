package com.priya.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.priya.model.complaint;
import com.priya.service.AdminService;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	private static final Logger LOGGER = Logger.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	
	
	@GetMapping("/users")
	public String list( ModelMap modelMap,HttpSession session) {

		LOGGER.info("List of Users Complaints");

		List<complaint> complaints =  adminService.findAll();

		/*System.out.println(complaints);*/
		session.setAttribute("users", complaints);
		return "lists";

	}
	
	@GetMapping("/{id}")
	public String details(@PathVariable("id") Long id, HttpSession session,ModelMap modelMap) {

		LOGGER.info("one user complaint");

		complaint comp = adminService.findOne(id);
		
		
		
		session.setAttribute("id", id);
		
		session.setAttribute("users", comp);
		
		return "final";

	}

	
	@PostMapping("/status")
	public String status(@RequestParam("status") String status, HttpSession session,ModelMap modelMap) {

		LOGGER.info("setting status");

		String st = status;
		
		
		
		
		long id =  (long) session.getAttribute("id");
		
		
		
		complaint comp = adminService.findOneById(id);
		
		
		
		session.setAttribute("user",comp);
		
		comp.setStatus(st);
		
		
		/*System.out.println(" status --"+status+"    ids----"+id);*/
		
		adminService.save(comp);
		
		
		
		return "dump";

	}
}
