package com.property.register.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="user")
public class UserController {

	@RequestMapping(value="registernewuser",method=RequestMethod.POST)
	public String registerNewUser(Model model) {
		model.addAttribute("message","ROLE" );
				return "manageRole";
			}
	
	@RequestMapping(value="savenewuser",method=RequestMethod.GET)
	public String saveNewUser(Model model) {
		model.addAttribute("message","ROLE" );		
		return "manageRole";
			}
}
