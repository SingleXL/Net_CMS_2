package com.test;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.cms.dao.IUserDao;
import com.cms.db.util.DatabaseUtil;

public class Test1 {

	public static void main(String[] args) throws Exception {

		String resource = "mybatis-config.xml";
		InputStream is = DatabaseUtil.class.getClassLoader()
				.getResourceAsStream(resource);

		SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);

		SqlSession session;

		session = factory.openSession(true);
		session.commit(false); // 将默认提交事务属性设置为否

		IUserDao iUserDao = session.getMapper(IUserDao.class);
//		System.out.println(iUserDao.selectUserRole(1).getRoles().size());
		
//		User user = (User) session.selectOne(
//				"com.cms.dao.IUserDao.selectUserRole", 1);
//		System.out.println("用户名： " + user.getName());
//		System.out.println(user.getRoles().size());
//		System.out.println(user.getRoles().get(0).getId());

		
		session.commit();
	}

}