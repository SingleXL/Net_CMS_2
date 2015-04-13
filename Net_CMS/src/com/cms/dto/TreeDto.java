package com.cms.dto;

import java.util.LinkedList;
import java.util.List;

public class TreeDto<T> {

	private T parent;
	private List<T> childs = new LinkedList<T>();

	public T getParent() {
		return parent;
	}
 
	public void setParent(T parent) {
		this.parent = parent;
	}

	public List<T> getChilds() {
		return childs;
	}

	public String toString() {
		return "TreeDto [parent=" + parent + ", childs=" + childs + "]";
	}

	
}
