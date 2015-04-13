<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort() + path ;
%>

<link rel="stylesheet" href="<%=basePath %>/resources/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="<%=basePath %>/resources/css/f_index.css" type="text/css" />
<link rel="icon" href="<%=basePath %>/resources/imgs/favcion.png" />

<script type="text/javascript" src="<%=basePath %>/resources/js/jquery.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/js/jquery-ui.js"></script>

</head>
<body>
	
</body>
</html>