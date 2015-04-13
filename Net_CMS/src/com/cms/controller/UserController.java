package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cms.model.Page;
import com.cms.model.User;
import com.cms.service.UserService;
import com.sun.org.apache.bcel.internal.generic.NEW;

@Controller
@RequestMapping("/admin/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/listPageUser")
	public String listPageUser(String pageNoStr, Model model) {
		int pageNo = 1;
		int pageSize = 13;

		try {
			pageNo = Integer.parseInt(pageNoStr);
		} catch (Exception e) {
			pageNo = 1;
		}

		Page<User> pageUser = new Page<User>(pageNo, pageSize);
		pageUser.setList(userService.listPageUser(pageUser));
		pageUser.setTotalNum(userService.totalNum());
		model.addAttribute("pageUser", pageUser);
		return "user/listAll";

	}

	@RequestMapping("/addUser")
	public String addUser(Model model) {
		model.addAttribute("user", new User());
		return "user/addUser";
	}

	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	@ResponseBody
	public User addUser(@ModelAttribute("user") User user) {
		System.out.println(user.getName());
		System.out.println(user.getNickname());

		return user;
//		return "redirect:/admin/user/listPageUser";
	}

	@RequestMapping("/delete")
	public String delete() {
		return "";
	}

	@RequestMapping("/update")
	public String update() {
		return "";
	}

}
