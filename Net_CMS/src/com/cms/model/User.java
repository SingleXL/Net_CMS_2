package com.cms.model;

import java.util.List;

//用户主体
public class User {

	private Integer userId;
	private String name;
	private String nickname;
	private String pass;
	private String email;

	// private Date regDate java.util.Date
	// private Set<Role> roles = new HashSet<Role>();
	List<Role> roles;

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getNickname() {
		return nickname;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getUserId() {
		return userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	// public Set<Role> getRoles() {
	// return roles;
	// }
	//
	// public void setRoles(Set<Role> roles) {
	// this.roles = roles;
	// }

}
