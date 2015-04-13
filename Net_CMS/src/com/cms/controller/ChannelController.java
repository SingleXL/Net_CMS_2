package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cms.dto.TreeDto;
import com.cms.model.Channel;
import com.cms.service.ChannelService;

@Controller
@RequestMapping("/admin/channel")
public class ChannelController {
	
	@Autowired
	private ChannelService channelService;
	
	@RequestMapping("/listAllChannels")
	public String listAllChannels(Model model){
		List<TreeDto<Channel>> channelTrees = channelService.listAllChannels();
		model.addAttribute("channelTrees", channelTrees);
		return "channel/listAllChannels";
	}
	
	@RequestMapping("/edit/{channelId}")
	public String edit(@PathVariable("channelId")Integer channelId ){
		return "channel/listAllChannels";
	}
	
	@RequestMapping("/addChild/{channelId}")
	public String delte(@PathVariable("channelId")Integer channelId ){
		System.out.println(1);
		return "channel/listAllChannels";
	}
	
}
