package com.cms.model;

public class Right {

	private Integer rightId;
	private String rightName = "δ����Ȩ��";
	private String rightUrl;
	private int rightPos; // Ȩ��λ,Ȩ�޷���,��0��ʼ
	private long rightCode;// Ȩ����,1<<n

	public Right() {
	}

	public Right(String rightName, String rightUrl) {
		this.rightName = rightName;
		this.rightUrl = rightUrl;
	}

	public Integer getId() {
		return rightId;
	}

	public void setId(Integer id) {
		this.rightId = id;
	}

	public String getRightName() {
		return rightName;
	}

	public void setRightName(String rightName) {
		this.rightName = rightName;
	}

	public String getRightUrl() {
		return rightUrl;
	}

	public void setRightUrl(String rightUrl) {
		this.rightUrl = rightUrl;
	}

	public int getRightPos() {
		return rightPos;
	}

	public void setRightPos(int rightPos) {
		this.rightPos = rightPos;
	}

	public long getRightCode() {
		return rightCode;
	}

	public void setRightCode(long rightCode) {
		this.rightCode = rightCode;
	}

}
