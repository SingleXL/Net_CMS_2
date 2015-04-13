<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>CMS鍚庡彴绠＄悊</title>
    
    <link href="<%=basePath %>/resources/css/admin.css" rel="stylesheet">
    
   	<script src="<%=basePath %>/resources/js/jquery.js"></script>
	<script src="<%=basePath %>/resources/js/jquery.form.js"></script>
	<script src="<%=basePath %>/resources/js/jquery-migrate-1.2.1.min.js"></script>
	<script src="<%=basePath %>/resources/js/bootstrap.min.js"></script>
	<script src="<%=basePath %>/resources/js/admin.js"></script>
</head>

<body>

<section>
    <div class="leftpanel">
        <div class="logopanel">
             <h1><span>CMS 鏂囩珷绠＄悊鍚庡彴</span></h1>
        </div>
        <div class="leftpanelinner">
             <ul class="nav nav-pills nav-stacked nav-bracket">
                <li class="active"><a href=""><i class="fa fa-home"></i> <span>棣栭〉</span></a></li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-columns"></i> <span>鏍忕洰绠＄悊</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/channel/listAllChannels"><i class="fa fa-caret-right"></i>鏍忕洰鍒楄〃</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-edit"></i> <span>鏂囩珷绠＄悊</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/article/addArticle"><i class="fa fa-caret-right"></i>鏂板缓鏂囩珷</a></li>
                        <li><a href="<%=basePath %>/admin/article/listAllArticles"><i class="fa fa-caret-right"></i>鏂囩珷鍒楄〃</a></li>
                        <li><a href="<%=basePath %>/admin/article/publishArticle"><i class="fa fa-caret-right"></i>鍙戝竷鏂囩珷</a></li>
                    </ul>
                </li>
             
                <li><a href=""><i class="fa fa-arrow-circle-o-right"></i> <span>鏉冮檺绠＄悊</span></a></li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-user"></i> <span>鐢ㄦ埛绠＄悊</span></a>
                    <ul class="children">
                        <li><a href="<%=basePath %>/admin/user/listPageUser"><i class="fa fa-caret-right"></i>鐢ㄦ埛鍒楄〃</a></li>
                        <li><a href="<%=basePath %>/admin/user/addUser"><i class="fa fa-caret-right"></i>娣诲姞鐢ㄦ埛</a></li>
                        <li><a href="<%=basePath %>/admin/user/userRight"><i class="fa fa-caret-right"></i>鐢ㄦ埛鏉冮檺</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-bug"></i> <span>鐖櫕绠＄悊</span></a>
                    <ul class="children">
                            <li><a href="bug-tracker.html"><i class="fa fa-caret-right"></i>缃戠珯淇℃伅绠＄悊</a></li>
                            <li><a href="bug-issues.html"><i class="fa fa-caret-right"></i>缃戠珯鏁版嵁澶囦唤</a></li>
                            <li><a href="view-issue.html"><i class="fa fa-caret-right"></i>绯荤粺娓呯悊</a></li>
                    </ul>
                </li>
                
                <li class="nav-parent"><a href=""><i class="fa fa-cogs"></i> <span>绯荤粺绠＄悊</span></a>
                    <ul class="children">
                            <li><a href="bug-tracker.html"><i class="fa fa-caret-right"></i>缃戠珯淇℃伅绠＄悊</a></li>
                            <li><a href="bug-issues.html"><i class="fa fa-caret-right"></i>缃戠珯鏁版嵁澶囦唤</a></li>
                            <li><a href="view-issue.html"><i class="fa fa-caret-right"></i>绯荤粺娓呯悊</a></li>
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
			// 鍋氱粺璁�--> 澶氬皯鏂囩珷,澶氬皯璁块棶閲忕瓑,鍙互寮勪竴浜涘浘鏍�
			
        </div><!-- contentpanel -->

    </div><!-- mainpanel -->
</section>

</body>
</html>
