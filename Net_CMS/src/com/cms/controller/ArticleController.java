package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cms.auth.AuthClass;
import com.cms.auth.AuthMethod;
import com.cms.dao.IChannelDao;
import com.cms.dto.TreeDto;
import com.cms.model.Article;
import com.cms.model.Channel;
import com.cms.service.ChannelService;

@AuthClass(uri = "/articl")
@Controller
@RequestMapping("/admin/article")
public class ArticleController {

	@Autowired
	private ChannelService channelService;
	
	@AuthMethod(rightUrl = "/add", rightName = "添加文章")
	@RequestMapping("/addArticle")
	public String addArticle(Model model) {
		List<TreeDto<Channel>> channelTrees = channelService.listAllChannels();
		model.addAttribute("channelTrees", channelTrees);
		model.addAttribute("article", new Article());
		return "article/addArticle";
	}

	@AuthMethod(rightUrl = "/list", rightName = "文章列表")
	@RequestMapping("/listAllArticles")
	public String listAllArticles(Model model) {
		System.out.println(model.getClass());

		return "article/listAllArticles";
	}

	@AuthMethod(rightUrl = "/edit", rightName = "发布文章")
	@RequestMapping("/publishArticle")
	public void editArticle() {
	}

	public void deleteArticle() {
	}

}
