package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cms.auth.AuthClass;
import com.cms.auth.AuthMethod;
import com.cms.model.Right;
import com.cms.service.RightService;

public class RightController {

	private List<Right> rights;

	@Autowired
	private RightService rightService;

	public String findAllRights(){

		this.rights = rightService.findAllRights();
		
		return "";
	}
	
	
	public List<Right> getRights() {
		return rights;
	}

	public void setRights(List<Right> rights) {
		this.rights = rights;
	}

}
