package com.cms.dao;

import java.util.List;

import com.cms.model.Article;

public interface IArticleDao {
	
	public List<Article> findByChannelAndTitle(String channelSn,String title);
	
	
}
