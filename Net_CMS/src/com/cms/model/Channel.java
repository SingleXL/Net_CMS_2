package com.cms.model;

public class Channel {

	private int channelId;
	private String name;
	private String sn;
	private String url;
	private int order;
	private int status;
	private int pchannelId;

	public int getPchannelId() {
		return pchannelId;
	}

	public void setPchannelId(int pchannelId) {
		this.pchannelId = pchannelId;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getSn() {
		return sn;
	}

	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}

	public int getParentId() {
		return pchannelId;
	}

	public void setParentId(int parentId) {
		this.pchannelId = parentId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getOrder() {
		return order;
	}

	public void setOrder(int order) {
		this.order = order;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Channel [channelId=" + channelId + ", name=" + name + ", url="
				+ url + ", order=" + order + ", status=" + status
				+ ", pchannelId=" + pchannelId + "]";
	}

}
