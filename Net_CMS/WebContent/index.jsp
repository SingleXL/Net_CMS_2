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
<script type="text/javascript" src="<%=basePath %>/resources/js/jquery.form.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>/resources/js/jquery-ui.js"></script>

</head>
<body>


<div class="container" style="max-width: 1024px;">

	<div class="row" style="padding-left:10px;padding-right: 10px;">
		<nav class="navbar navbar-inverse">
		
		    <div class="container-fluid">
		        <!-- Brand and toggle get grouped for better mobile display -->
		        <div class="navbar-header">
<!-- 		            <a class="navbar-brand" href="#" style="color: green;"><b>CMS</b></a> -->
		            <a class="navbar-brand" href="#" style="color: green;">
		            	 <img alt="" src="resources/imgs/favcion.png" style="width: 22px;height: 22px;cursor: default;">
		            </a>
		        </div>
		
		        <!-- Collect the nav links, forms, and other content for toggling -->
		        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		            <ul class="nav navbar-nav">
		                <li><a href="#">璁＄畻鏈虹綉缁�</a></li>
		                <li><a href="#">绂绘暎鏁板</a></li>
		                <li><a href="#">绂绘暎鏁板</a></li>
		                <li><a href="#">绂绘暎鏁板</a></li>
		                <li><a href="#">绂绘暎鏁板</a></li>
		                
		                
		                
		                <li class="dropdown">
		                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">鑻辫<span class="caret"></span></a>
		                    <ul class="dropdown-menu" role="menu">
		                        <li><a href="#">鍙ｈ</a></li>
		                        <li><a href="#">浣滄枃</a></li>
		                    </ul>
		                </li>
		                
		            </ul>
<!-- 		            <form class="navbar-form navbar-right" role="search"> -->
<!-- 		                <div class="form-group"> -->
<!-- 		                    <input type="text" class="form-control input-sm" placeholder="Search"> -->
<!-- 		                </div> -->
<!-- 		                <button type="submit" class="btn btn-default btn-sm">Submit</button> -->
<!-- 		            </form> -->
		            <ul class="nav navbar-nav navbar-right">
		                <li><a href="#">浣滄枃</a></li>
		                <li class="dropdown">
		                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">鑻辫<span class="caret"></span></a>
		                    <ul class="dropdown-menu" role="menu">
		                        <li><a href="#">鍙ｈ</a></li>
		                        <li><a href="#">鍙ｈ</a></li>
		                        <li><a href="#">鍙ｈ</a></li>
		                    </ul>
		                </li>
		            </ul>
		        </div><!-- /.navbar-collapse -->
		    </div><!-- /.container-fluid -->
		</nav>
	</div>
	
	<div class="row">
		<div class="col-sm-8">
		
			<div class="panel panel-default">
  				<div class="panel-heading">
    				<h3 class="panel-title"><b>Panel title</b></h3>
  				</div>
  				<div class="panel-body">
   				Panel content
  				</div>
			</div>
			
			<div class="panel panel-default">
  				<div class="panel-heading">
    				<h3 class="panel-title"><b>Panel title</b></h3>
  				</div>
  				<div class="panel-body">
   				Panel content
  				</div>
			</div>

			<nav>
			    <ul class="pagination">
			        <li>
			            <a href="#" aria-label="Previous">
			                <span aria-hidden="true">&laquo;</span>
			            </a>
			        </li>
			        <li><a href="#">3</a></li>
			        <li><a href="#">4</a></li>
			        <li><a href="#">5</a></li>
			        <li>
			            <a href="#" aria-label="Next">
			                <span aria-hidden="true">&raquo;</span>
			            </a>
			        </li>
			    </ul>
			</nav>
		</div>
		
		<div class="col-sm-4 hidden-xs">
			<div class="panel panel-info">
  				<div class="panel-heading">
    				<h3 class="panel-title"><span class="glyphicon glyphicon glyphicon-list" style="margin-right: 2px;"></span><b>鏈�柊鏂囩珷</b></h3>
  				</div>
  				<div class="panel-body">
   				Panel content
  				</div>
			</div>
			
			<div class="panel panel-info">
  				<div class="panel-heading">
    				<h3 class="panel-title"><span class="glyphicon glyphicon-cloud" style="margin-right: 2px;"></span><b>鏍囩浜</b></h3>
  				</div>
  				<div class="panel-body">
   				Panel content
  				</div>
			</div>
			
			<div class="panel panel-info">
  				<div class="panel-heading">
    				<h3 class="panel-title"><span class="glyphicon glyphicon glyphicon-link" style="margin-right: 2px;"></span><b>鍙嬫儏閾炬帴</b></h3>
  				</div>
  				<div class="panel-body">
   				Panel content
  				</div>
			</div>
		</div>
	</div>
	
	<div class="row" style="padding-left:10px;padding-right: 10px;">
		<div class="panel panel-default">
  			<div class="panel-body text-center">
    			Designed and built with all the love in the world by @mdo and @fat.<br>
				Code licensed under Apache License v2.0, documentation under CC BY 3.0.<br>
				Glyphicons Free licensed under CC BY 3.0.<br>
				Blog 路 Issues 路 Changelog<br>
 			 </div>
		</div>
	</div>
	
</div>


</body>
</html>