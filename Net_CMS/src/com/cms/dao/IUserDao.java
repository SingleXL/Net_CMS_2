package com.cms.dao;

import java.util.List;

import com.cms.model.Page;
import com.cms.model.User;
import com.cms.model.UserRole;

public interface IUserDao {
	
	public List<User> findAllUsers(); // 查询所有用户
	public User findUserByName(String name); 
	public User findUserRoleByName(String name);// 查询用户及角色
	public List<User> listPageUser(Page<User> pageUser);
	public Integer totalNum();
	
	public void addUser(User user);
	public void addUserRole(UserRole userRole);
	
	public void deleteUser(String name);
	public void deleteUserRole(UserRole userRole);
}
