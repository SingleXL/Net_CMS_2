package com.cms.dao;

import java.util.List;

import com.cms.model.Channel;

public interface IChannelDao {

	public List<Channel> listAllChannels();
	public Channel findChannelBySn(String sn);
	
	public void addChannel(Channel channel);
	public void editChannel(Channel channel);
	public void deleteChannel(Channel channel);
	
}
