

1.权限部分
	添加用户，默认一些基本的权限
	
	用户登录时，将此用户的所有权限放置到session中
	在访问页面时，用以下语句，进行隐藏某链接
	${sessionScope.uu.indexOf("2")}
	${sessionScope.uu.contains("2")}
	<c:if test="${sessionScope.uu.contains(\"2\")}">
		四十四
	</c:if>
	
	

2.用户部分
	CMS不属于论坛类的网站，不适合做用户的注册，可以手动添加用户信息

3.用户列表部分
	翻页，上一页和下一页，需要改进

4.栏目
	
5.文章
	http://localhost:8080/channelName/new Date().getTime()
	
6.验证码
	Kaptcha
	
7.sn 代表唯一标示号

8.栏目的父类停用了，那么子类也将处于停用状态

9.添加时，为了防止页面跳转
	1),发送ajax请求
	2),使用load方法
	




