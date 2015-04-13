package com.cms.model;

import java.util.List;

public class Page<T> {

	// 当前页
	private int pageNo = 1;

	// 当前页的List
	private List<T> list;

	// 每页显示多少条记录
	private int pageSize;

	// 共有多少条记录
	private int totalNum;
	
	// 偏移量
	private int offset;

	// 获取总页数
	public int getTotalPageNum() {
	
		/*
		 * 0/2 0  1
		 * 3/2 1  2
		 */
		
		int totalPageNum = totalNum / pageSize;
		if (totalNum < pageSize) {
			return 1;			
		}
		
		if (totalPageNum % pageSize == 0) {
			return totalPageNum;
		}
		return ++totalPageNum;
	}

	public int getOffset() {
		offset = (pageNo - 1) * pageSize;
		return offset;
	}
	
	public Page(int pageNo,int pageSize) {
		this.pageSize = pageSize;
		this.pageNo = pageNo;
		
//		if (pageNo<1) {
//			this.pageNo = 1;
//		}
		
	}

	public int getPageNo() {
		return pageNo;
	}

	public boolean isHasNext() {
		if (getPageNo() < getTotalNum()) {
			return true;
		}
		return false;
	}

	public boolean isHasPrev() {
		if (getPageNo() > 1) {
			return true;
		}
		return false;
	}

	public int getPrePage() {
		if (isHasPrev()) {
			return getPageNo() - 1;
		}
		return getPageNo();
	}

	public int getNextPage() {
		if (isHasNext()) {
			return getPageNo() + 1;
		}
		return getPageNo();
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public List<T> getList() {
		return list;
	}

	public void setList(List<T> list) {
		this.list = list;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalNum() {
		return totalNum;
	}

	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}

}
