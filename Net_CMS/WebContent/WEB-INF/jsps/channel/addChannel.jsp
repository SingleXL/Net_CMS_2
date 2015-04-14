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
<h3>娣诲姞鏍忕洰</h3>

<div class="row">
	<div class="col-md-6 col-md-offset-2" style="max-width: 380px;">
	<form class="form-horizontal">
	    <div class="form-group form-group-md">
	        <label class="col-sm-3 control-label" >鐢ㄦ埛鍚</label>
	        <div class="col-sm-9">
	            <input class="form-control" type="text" >
	        </div>
	    </div>
	    <div class="form-group form-group-md">
	        <label class="col-sm-3 control-label" >鐢ㄦ埛鏄电О</label>
	        <div class="col-sm-9">
	            <input class="form-control" type="text"  >
	        </div>
	    </div>
	    <div class="form-group form-group-md">
	        <label class="col-sm-3 control-label" >瀵嗙爜</label>
	        <div class="col-sm-9">
	            <input class="form-control" type="text"  >
	        </div>
	    </div>
	    <div class="form-group form-group-md">
	        <label class="col-sm-3 control-label" >閭</label>
	        <div class="col-sm-9">
	            <input class="form-control" type="text"  >
	        </div>
	    </div>
	    <button type="submit" class="btn btn-primary pull-right">娣诲姞</button>
	</form>
	</div>
</div>
</div>

<script type="text/javascript">

</script>
</body>
</html>
