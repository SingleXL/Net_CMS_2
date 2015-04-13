package com.cms.service;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.dao.IChannelDao;
import com.cms.dto.TreeDto;
import com.cms.model.Channel;

@Service
public class ChannelService {

	@Autowired
	private IChannelDao iChannelDao;

	public List<TreeDto<Channel>> listAllChannels() {

		List<TreeDto<Channel>> channelTrees = new LinkedList<TreeDto<Channel>>();

		List<Channel> channels = iChannelDao.listAllChannels();

		TreeDto<Channel> treeDto = null;
		
		// 迭代出父亲
		for (Channel parent : channels) {
			if (parent.getParentId() == 0) {
				treeDto = new TreeDto<Channel>();
				treeDto.setParent(parent);
				channelTrees.add(treeDto);
			}
		}
		
		// 迭代子类
		for(Channel child:channels){
			int pchannelId = child.getParentId();
			for(TreeDto<Channel> treeDto2 : channelTrees){
				if (treeDto2.getParent().getChannelId() == pchannelId) {
					treeDto2.getChilds().add(child);
				}
			}
		}
		return channelTrees;
	}

	public void addChannel(Channel channel) {
		iChannelDao.addChannel(channel);
	}

	public void editChannel(Channel channel) {
		iChannelDao.editChannel(channel);
	}

	public void deleteChannel(Channel channel) {
		iChannelDao.deleteChannel(channel);
	}

}
