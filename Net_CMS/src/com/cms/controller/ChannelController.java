package com.cms.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cms.dto.TreeDto;
import com.cms.model.Channel;
import com.cms.service.ChannelService;

@Controller
@RequestMapping("/admin/channel")
public class ChannelController {

	@Autowired
	private ChannelService channelService;

	@RequestMapping("/listAllChannels")
	public String listAllChannels(Model model) {
		List<TreeDto<Channel>> channelTrees = channelService.listAllChannels();
		model.addAttribute("channelTrees", channelTrees);
		return "channel/listAllChannels";
	}

	@RequestMapping("/edit/{channelSn}")
	public String edit(@PathVariable("channelSn") String channelSn, Model model) {
		Channel channel = channelService.findChannelBySn(channelSn);
		model.addAttribute("channel", channel);
		return "channel/editChannel";
	}

	@RequestMapping(value = "/addChild/{channelSn}", method = RequestMethod.GET)
	public String addChild(@PathVariable("channelSn") String channelSn,	Model model) {

		Channel parent = channelService.findChannelBySn(channelSn);
		Channel child = new Channel();
		child.setPchannelId(parent.getChannelId());
		child.setStatus(1);
		
		model.addAttribute("pName", parent.getName());
		model.addAttribute("channel", child);
		return "channel/addChildChannel";
	}
	
	@RequestMapping(value = "/addChild", method = RequestMethod.POST)
	@ResponseBody
	public String addChild(Channel channel) {
		channelService.addChannel(channel);
		return "channel/addChildChannel";
	}
	
	@RequestMapping("/addParentChannel")
	public String addParentChannel(Model model) {
		Channel channel = new Channel();
		model.addAttribute("channel", channel);
		return "channel/addParentChannel";
	}

}
