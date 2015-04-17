package com.cms.controller;

import java.util.Arrays;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;

@Controller
@RequestMapping("/admin/attach")
public class AttachMentController {
	
	@RequestMapping("/upload")
	@ResponseBody
	public String upload(MultipartFile attach,HttpSession session){
		System.out.println(session.getAttribute("aa"));
		
		
		
		return new Gson().toJson(Arrays.asList("f","a"));
	}

	
}
