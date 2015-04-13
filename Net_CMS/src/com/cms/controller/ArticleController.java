package com.cms.controller;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.pattern.IntegerPatternConverter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cms.auth.AuthClass;
import com.cms.auth.AuthMethod;

@AuthClass(uri = "/articl")
@Controller
@RequestMapping("/admin/article")
public class ArticleController {

	@AuthMethod(rightUrl = "/add", rightName = "添加文章")
	@RequestMapping("/addArticle")
	public String addArticle(HttpSession session) {

		List<String> strs = new LinkedList<String>();
		strs.add("1");
		strs.add("4");

		session.setAttribute("uu", strs);

		return "article/addArticle";
	}

	@AuthMethod(rightUrl = "/list", rightName = "列出文章")
	@RequestMapping("/listAllArticles")
	public String listAllArticles(Model model) {
		System.out.println(model.getClass());

		return "article/listAllArticles";
	}

	@AuthMethod(rightUrl = "/edit", rightName = "编辑文章")
	@RequestMapping("/publishArticle")
	public void editArticle() {
	}

	public void deleteArticle() {
	}

}
