package com.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {

	@RequestMapping("helloworld")
	public String test(){
		
		return "back/b_main";
	}
	
}
