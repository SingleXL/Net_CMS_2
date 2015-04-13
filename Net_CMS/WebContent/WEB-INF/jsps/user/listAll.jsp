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
	<table class="table table-hover table-bordered" style="font-size: 15px;">
		<thead>
			<tr>
				<th><b>鐢ㄦ埛搴忓彿</b></th>
				<th><b>鐢ㄦ埛鍚嶇О</b></th>
				<th><b>鐢ㄦ埛鏄电О</b></th>
				<th><b>鐢ㄦ埛閭</b></th>
				<th><b>鐢ㄦ埛鎿嶄綔</b></th>
			</tr>
		</thead>
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
				    <a class="previous" href="<%=basePath %>/admin/user/listPageUser?pageNoStr=${pageUser.pageNo-1}">涓婁竴椤�</a> 
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

	var currentNO = $(".currentNo").html();
	var totalPageNum = $(".totalPageNum").html();

	$(".previous").click(function(){
		if(currentNO !=1 ){
			var loadPage = $(this).attr("href");
			$(".contentpanel").load(loadPage);
		}
		return false;
	});
	
	$(".next").click(function(){
		if(currentNO!=totalPageNum){
			var loadPage = $(this).attr("href");
			$(".contentpanel").load(loadPage);
		}
		return false;
	});
	
	

</script>
</body>
</html>
