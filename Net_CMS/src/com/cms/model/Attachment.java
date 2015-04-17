package com.cms.model;

public class Attachment {
	private Integer attachId;

	private String newName;
	private String oldName;
	private String type;
	private boolean isImg;
	// 文章的新名字
	private String articleName;

	public Integer getAttachId() {
		return attachId;
	}

	public void setAttachId(Integer attachId) {
		this.attachId = attachId;
	}

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
	}

	public String getOldName() {
		return oldName;
	}

	public void setOldName(String oldName) {
		this.oldName = oldName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean isImg() {
		return isImg;
	}

	public void setImg(boolean isImg) {
		this.isImg = isImg;
	}

	public String getArticleName() {
		return articleName;
	}

	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}

	@Override
	public String toString() {
		return "Attachment [attachId=" + attachId + ", newName=" + newName
				+ ", oldName=" + oldName + ", type=" + type + ", isImg="
				+ isImg + ", articleName=" + articleName + "]";
	}
	
	

}
