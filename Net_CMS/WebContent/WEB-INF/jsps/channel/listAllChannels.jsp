<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="wuserIdth=device-wuserIdth, initial-scale=1.0, maximum-scale=1.0">
	<link rel="icon" href="<%=basePath %>/resources/imgs/favcion.png" />	
    <title>CMS鍚庡彴绠＄悊</title>
</head>

<body>

<div>
<h3>鏍忕洰鍒楄〃</h3>
    
	<table class="table table-hover table-bordered" style="font-size: 15px;">
		<thead>
			<tr>
				<th><b>鏍忕洰鍚嶇О</b></th>
				<th><b>缂栬緫鎿嶄綔</b></th>
			</tr>
		</thead>
		
		<tbody >
			<c:forEach items="${channelTrees}" var="channelTree">
		
				<tr class="parent">
					<td>
						<span><i class="fa fa-plus-square-o channelName"></i>&nbsp;${channelTree.parent.name}</span>
					</td>			
					<td>
						<a href="<%=basePath %>/admin/channel/edit/1" >缂栬緫</a>
					&nbsp;
						<a href="<%=basePath %>/admin/channel/addChild/${user.userId }" >娣诲姞瀛愮被</a>
					&nbsp;
						<a href="<%=basePath %>/admin/channel/delete/${user.userId }" title="${user.userId }" >鍒犻櫎</a>
				</tr>
			
				<c:forEach items="${channelTree.childs}" var="child">
					<tr class="child">
						<td>
						&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-angle-right"></i>
						${child.name}
						</td>			
						<td>
							<a href="<%=basePath %>/admin/channel/edit/1" >缂栬緫</a>
						&nbsp;
							<a href="<%=basePath %>/admin/channel/delete/${user.userId }" title="${user.userId }" >鍒犻櫎</a>
					</tr>
			
				</c:forEach>
			
			</c:forEach>
			<tr class="parent"></tr>
		</tbody>
		
		
		<tbody>
		<c:forEach items="${pageUser.list }" var="user">
			<tr>
				<td>${user.userId }&nbsp;</td>
				<td>${user.nickname }&nbsp;</td>
				<td>${user.name }</td>
				<td>${user.email }鏂规硶鍙嶅弽澶嶅鍙嶅弽澶嶅鍙嶅弽澶嶅</td>
				<td>
					<a href="admin/user/update/${user.userId }" >鏇存柊</a>
				&nbsp;
					<a href="admin/user/delete/${user.userId }" title="${user.userId }" >鍒犻櫎</a>
				&nbsp;
					<a href="<%=request.getContextPath() %>/admin/user/listChannels/${user.userId }" >鏉冮檺绠＄悊</a>
				&nbsp;
				</td>
			</tr>
		</c:forEach>
		</tbody>
		
		<tfoot>
			<tr>
				<td colspan="5" style="text-align:right;font-size: 12px;padding-right: 20px;">
				    <a class="previous" href="<%=basePath %>/admin/user/listPageUser?pageNoStr=${pageUser.pageNo-1}">涓婁竴椤</a> 
				    &nbsp;
				    <a class="next" href="<%=basePath %>/admin/user/listPageUser?pageNoStr=${pageUser.pageNo+1}">涓嬩竴椤�</a> 
				    &nbsp;
				          褰撳墠绗<span class="currentNo">${pageUser.pageNo }</span>椤�
				    &nbsp;
				         鍏<span class="totalPageNum">${pageUser.totalPageNum }</span>椤�
				</td>
			</tr>
		</tfoot>
	</table>
</div>


<script type="text/javascript">

	$("table a").click(function(e) {
		var loadPage = $(this).attr("href");
		$(".contentpanel").load(loadPage);
		return false;
	});

	
 	$(function(){
 		$(".child").hide();
 		$(".parent").click(function(){
 			var check = $(this).hasClass("clicked");
 			if(check){
 				$(this).find(".channelName").removeClass("fa-minus-square-o");
 				$(this).find(".channelName").addClass("fa-plus-square-o");
 				$(this).removeClass("clicked");
 				$(this).nextUntil(".parent").slideUp(30);
 			}else{
 				$(this).find(".channelName").addClass("fa-minus-square-o");
 				$(this).find(".channelName").removeClass("fa-plus-square-o");
 				$(this).addClass("clicked");
 				$(this).nextUntil(".parent").show();
 				$(this).nextUntil(".parent").slideDown(30);
 			}
 			
 		});
 	});
	

</script>
</body>
</html>
