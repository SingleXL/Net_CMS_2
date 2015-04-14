<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link rel="icon" href="<%=basePath %>/resources/imgs/favcion.png" />	
    <title>CMS后台管理</title>
    
    <link href="<%=basePath %>/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>/resources/css/ui-theme/jquery.ui.css" rel="stylesheet">
    <link href="<%=basePath %>/resources/css/admin.css" rel="stylesheet">
    
   	<script src="<%=basePath %>/resources/js/jquery.js"></script>
	<script src="<%=basePath %>/resources/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="<%=basePath %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=basePath %>/resources/js/jquery.form.js"></script>
	<script src="<%=basePath %>/resources/js/jquery.tablednd_0_5.js"></script>
	<script src="<%=basePath %>/resources/js/jquery.ui.min.js"></script>
	<script src="<%=basePath %>/resources/js/admin.js"></script>
</head>

<body>

<section>
    <div class="leftpanel">
        <div class="logopanel">
             <h1><span>CMS 系统管理</span></h1>
        </div>
        <div class="leftpanelinner">
             <ul class="nav nav-pills nav-stacked nav-bracket">
                <li class="active"><a href=""><i class="fa fa-home"></i> <span>首页</span></a></li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-columns"></i> <span>栏目管理</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/channel/listAllChannels"><i class="fa fa-caret-right"></i>栏目列表</a></li>
                        <li><a href="<%=basePath %>/admin/channel/addParentChannel"><i class="fa fa-caret-right"></i>添加栏目</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-edit"></i> <span>文章管理</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/article/addArticle"><i class="fa fa-caret-right"></i>添加文章</a></li>
                        <li><a href="<%=basePath %>/admin/article/listAllArticles"><i class="fa fa-caret-right"></i>文章列表</a></li>
                        <li><a href="<%=basePath %>/admin/article/publishArticle"><i class="fa fa-caret-right"></i>发布文章</a></li>
                    </ul>
                </li>
             
                <li><a href=""><i class="fa fa-arrow-circle-o-right"></i> <span>权限管理</span></a></li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-user"></i> <span>用户管理</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/user/listPageUser"><i class="fa fa-caret-right"></i>用户列表</a></li>
                        <li><a href="<%=basePath %>/admin/user/addUser"><i class="fa fa-caret-right"></i>添加用户</a></li>
                        <li><a href="<%=basePath %>/admin/user/userRight"><i class="fa fa-caret-right"></i>用户权限</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-bug"></i> <span>爬虫管理</span></a>
                    <ul class="children">
                            <li><a href="view-issue.html"><i class="fa fa-caret-right"></i>绯荤粺娓呯悊</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-cogs"></i> <span>系统管理</span></a>
                    <ul class="children">
                            <li><a href="bug-tracker.html"><i class="fa fa-caret-right"></i>系统清理</a></li>
                    </ul>
                </li>
            </ul>

        </div><!-- leftpanelinner -->
    </div><!-- leftpanel -->
    

    <div class="mainpanel">
        <div class="headerbar">
            <a class="menutoggle"><i class="fa fa-bars"></i></a>
            
            <div class="header-right">
                <ul class="headermenu">
                
                    <li>
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                John Doe
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                <li><a href="profile.html"><i class="glyphicon glyphicon-user"></i> My Profile</a></li>
                                <li><a href="#"><i class="glyphicon glyphicon-cog"></i> Account Settings</a></li>
                                <li><a href="#"><i class="glyphicon glyphicon-question-sign"></i> Help</a></li>
                                <li><a href="signin.html"><i class="glyphicon glyphicon-log-out"></i> Log Out</a></li>
                            </ul>
                        </div>
                    </li>
                    
                </ul>
            </div><!-- header-right -->
        </div><!-- headerbar -->

        <div class="contentpanel" >
        	// TODO
			// 网站统计，流量，文章，访问量，图标显示，简单的图表
			
        </div><!-- contentpanel -->

    </div><!-- mainpanel -->
</section>

</body>
</html>
