<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>  


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="wuserIdth=device-wuserIdth, initial-scale=1.0, maximum-scale=1.0">
	<link rel="icon" href="<%=basePath %>/resources/imgs/favcion.png" />	
	<style type="text/css">
		.form-group{
			padding-right: 10px;
		}
	</style>
	
</head>

<body>


<h3>添加文章</h3>
<div class="row">


	<div style="max-width: 900px;padding-bottom: 40px;">
	
	<sf:form action="${ctx}/admin/article/addArticle " class="form-horizontal " modelAttribute="article" method="post">
	    <div class="form-group ">
	        <label class="col-sm-2 control-label "><b>文章标题</b></label>
	        <div class="col-sm-10">
		        <sf:input path="title" class="form-control"/>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章栏目</b></label>
	        <div class="col-sm-10" style="max-width:200px; ">
		        <sf:select path="channel" class="form-control">
		        	<sf:option value="0">请选择栏目</sf:option>
	        		<c:forEach items="${channelTrees}" var="channelTree">
				        <optgroup label="${channelTree.parent.name}"></optgroup> 
						<c:forEach items="${channelTree.childs}" var="child">
				        	<sf:option value="${child.sn}">&nbsp;&nbsp;&nbsp;&nbsp;${child.name}</sf:option>
						</c:forEach>
					</c:forEach>
		        </sf:select>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>关键词</b></label>
	        <div class="col-sm-10">
		        <sf:input path="title" class="form-control"/>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>附件</b></label>
	        <div class="col-sm-10">
	        	<div class="row" style="width: 100px;">
	        		<input type="file" value="文件上传" >
	        	</div>
        		<div class="row uploadFiles">
					sss
				</div>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章摘要</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="summary" class="form-control" rows="3" style="max-width: 750px;max-height:250px;"/>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章内容</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="content" class="form-control" rows="25" id="content" style="max-width: 750px;"/>
	        </div>
	    </div>
	    
	    
	    <button type="submit" class="btn btn-primary btn-sm pull-right ">添加</button>
	</sf:form>
	
</div>



</div>


<script type="text/javascript">
$(function(){
	
	//表单提交
	var options = {
		dataType:"json",
        success: function (e) {
            console.log(e);
        }
    };
 
	$('form').ajaxForm(options);
	
	// 文章编辑器
	$('#content').xheditor({
		tools:'Cut,Copy,Paste,Pastetext,Blocktag,Fontface,FontSize,Bold,Italic,Underline,Strikethrough,FontColor,BackColor,SelectAll,Removeformat,Align,List,Outdent,Indent,Emot,Table,About',
		skin:'o2007blue'
	});
	
	
});
</script>
</body>
</html>
