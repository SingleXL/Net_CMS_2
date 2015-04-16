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
		
		/* keybord */
		.keyword-wrap{
			background: #2fa7cb;
			width:auto;
			padding:1px 4px;
			margin:1px;
			display:inline-block !important;
			-moz-border-radius: 3px;      /* Gecko browsers */
    		-webkit-border-radius: 3px;   /* Webkit browsers */
    		border-radius:3px;            /* W3C syntax */
		}
		.keyword{font-size:12px;color: #1D2939;margin-right: 2px}
 		.removeK{color: #ffb7cb;cursor: pointer;} 
 		
 		#keywords{float: left;}
 		#keyword-input{display: inline-block;float: left;margin-left: 4px;}
 		
		
	</style>
	
</head>

<body>
<span style="display: none;" id="ctx">${pageContext.request.contextPath}</span>

<h3>添加文章</h3>
<div class="row">


	<div style="max-width: 900px;padding-bottom: 80px;">
	
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
	        <div class="col-sm-10 keyword-container">
	        	<div id="keywords">
	        	</div>
				<input type="text" id="keyword-input" value="输入关键字">        
	        </div>
	    </div>
	    
	    <script type="text/javascript">
	    	$(function(){
	    		
	    		//keyword 
	    		var keywords;
	    		
	    		function createKeyWord(val){
	    			return '<div class="keyword-wrap">'
	    				+'<span class="keyword">'+val+'</span>'
	    				+'<span class="removeK"><b>X</b></span>'
	        			+'</div>';
	    		}
	    		
	    		$("#keyword-input").keyup(function(event){
	    			var _this = $(this);
	    			var code = event.keyCode;
	    			if(code == 188 || code == 13){
	    				var con = $(this).val().trim().replace(/\s/g, "");
						if(con.length!=0){
							if($(".keyword-wrap").length >= 5){
								alert("只允许添加5个关键字");
								event.preventDefault();
								_this.val("");
								return
							}
							
							var isExit = false;
							$(".keyword").each(function(){
								if($(this).html()==con){
									alert("不能添加重复关键字");
									isExit = true;
								}	
							});	
							
							if(isExit){
								event.preventDefault();
								_this.val("");
								return
							}
							
		    				if(code == 188){
		    					con = con.substr(0,con.length-1);
		    					if(con.length == 0) return
		    				}
		    				var K = createKeyWord(con)
							$("#keywords").append(K);
		    				$(this).val("")
						}	    				
	    			}
	    		});
	    		
	    		$("body").on("click",".removeK",function(e){
					$(this).closest(".keyword-wrap").remove()	    			
	    			e.preventDefault();
	    		});
	    		
	    		$("#keyword-input").focus(function(){
	    			$(this).val("")
	    		})
	    		$("#keyword-input").blur(function(){
	    			$(this).val("请输入关键字")
	    		})
	    		
	    		
	    	});
	    </script>
	    
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>附件</b></label>
	        <div class="col-sm-10">
	        	<div class="row" style="width: 100px;padding-left:10px; ">
	        		<input type="file" id="attach" value="文件上传" >
	        	</div>
        		<div class="row uploadFiles" style="padding-left: 10px;">
					<table class="table table-hover table-bordered" style="font-size: 15px;">
						<thead>
							<tr>
								<th><b>用户ID</b></th>
								<th><b>用户名</b></th>
								<th><b>用户昵称</b></th>
								<th><b>用户邮箱</b></th>
								<th><b>用户操作</b></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>2</td>
								<td>3</td>
								<td>4</td>
								<td>5</td>
							</tr>						
						</tbody>
						<tfoot>
						</tfoot>
					</table>	
				</div>
	        </div>
	    </div>
	    
	    
	    <script type="text/javascript">
	    	$(function(){
	    		$("#attach").uploadify({
					swf:$("#ctx").html() + "/resources/uploadify/uploadify.swf",
					uploader:'upload'
	    		});
	    	});
	    </script>
	    
	    
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章摘要</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="summary" class="form-control" rows="3" style="max-width: 750px;max-height:250px;"/>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章内容</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="content" class="form-control" rows="20" id="content" style="max-width: 750px;"/>
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
		tools:'Cut,Copy,Paste,Pastetext,Blocktag,Fontface,FontSize,Bold,Italic,Underline,Strikethrough,FontColor,BackColor,SelectAll,Removeformat,Align,List,Outdent,Indent,Emot,Img,Table,About',
		skin:'o2007blue'
	});
	
	
});
</script>
</body>
</html>
