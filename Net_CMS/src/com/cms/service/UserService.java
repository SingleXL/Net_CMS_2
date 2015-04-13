package com.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cms.dao.IUserDao;
import com.cms.model.Page;
import com.cms.model.User;
import com.cms.model.UserRole;

@Service
public class UserService {

	@Autowired
	private IUserDao iUserDao;

	public Integer totalNum(){
		return iUserDao.totalNum();
	}
	
	public List<User> findAllUsers() {
		return iUserDao.findAllUsers();
	}

	public User findUserByName(String name) {
		return iUserDao.findUserByName(name);
	}

	public User findUserRoleByName(String name) {
		return iUserDao.findUserRoleByName(name);
	}

	public void addUser(User user) {
		iUserDao.addUser(user);
	}

	public void addUserRole(UserRole userRole) {
		iUserDao.addUserRole(userRole);
	}

	public void deleteUser(String name) {
		iUserDao.deleteUser(name);
	}

	public void deleteUserRole(UserRole userRole) {
		iUserDao.deleteUserRole(userRole);
	}

	public List<User> listPageUser(Page<User> pageUser) {
		return iUserDao.listPageUser(pageUser);
		
	}
}
