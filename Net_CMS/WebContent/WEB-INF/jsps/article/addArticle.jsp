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
 		td{word-break:break-all;}
		
		/*upload files*/
		.uploadFiles a:hover {cursor: pointer;}
		
		
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
	        	<div class="row" style="padding-left:0px; ">
			        <div class="col-sm-6">
	        			<input type="file" id="attach" value="" >
	        		</div>
			        <div class="col-sm-4">
	        			<button class="btn btn-info btn-sm upfiles">上传</button>
	        		</div>
	        		
	        	</div>
        		<div class="row" style="padding-left: 10px;">
					<table class="table table-hover table-bordered" style="font-size: 13px;">
						<thead>
							<tr>
								<th style="max-width:25%;width:25%;"><b>附件缩略图</b></th>
								<th style="max-width:30%;width:25%;"><b>附件名</b></th>
								<th style="max-width:15%;width:15%;"><b>附件类型</b></th>
								<th style="max-width:30%;width:30%;"><b>附件操作</b></th>
							</tr>
						</thead>
						
						<tbody class="uploadFiles">
						</tbody>
						
						<tfoot>
						</tfoot>
					</table>	
				</div>
	        </div>
	    </div>
	    
	    <script type="text/javascript">
	    
	    	// attachment
	    	function createAtt(attach){
	    		var sn = attach.sn;
	    		var oldName = attach.oldName;
	    		var newName = attach.newName;
	    		var type = attach.type;
	    		var thumbPIC = ""
	    		var oper = ""
	    		
	    		if(attach.img){
    				thumbPIC="图片"
    				thumbPIC="<img sn="+sn+" src='<%=basePath %>/resources/upload/thumbs/"+newName+"'/> "
    				oper = "<a class='setThumb'>设为缩略图</a>&nbsp;&nbsp;<a class='cancelThumb' style='display:none'>取消缩略图</a>&nbsp;&nbsp;<a class='insertInto'>插入文章</a>&nbsp;&nbsp;<a class='deletePic'>删除附件</a>"
	    		}else{
	    			thumbPIC = "略"
    				oper = "<a class='deleteAtt'>删除附件</a>"
	    		}
	    		
	    		return "<tr>"
	    			+ "<td class='thumbPIC'>"+thumbPIC+"</td>"
	    			+ "<td>"+oldName+"</td>"
	    			+ "<td class='picType'>"+type+"</td>"
	    			+ "<td>"
	    			+	oper
	    			+ "</td>"
	    			+ "</tr>";
	    	}
	    	
			$("#attach").uploadify({
				swf:$("#ctx").html() + "/resources/uploadify/uploadify.swf",
				uploader:$("#ctx").html() +'/admin/attach/upload',
				fileObjName:"attach",
				auto:false,
				upImgUrl:true,
				fileTypeExts:"*.jpg;*.jpeg;*.gif;*.png;*.doc;*.docx;*.txt;*.xls;*.xlsx;*.rar;*.zip;*.pdf;*.avi;",
				onUploadSuccess:function(file,data,response){
					var attach = $.parseJSON(data);
					var attachTr = createAtt(attach);
					$(".uploadFiles").append(attachTr);
				}
	   		});
	    	
	    	$(function(){
				$(".upfiles").click(function(){
					$("#attach").uploadify("upload","*");
				});	    		
	    	});
	    </script>
	    
	    
	    <div class="form-group" style="display: none;">
	        <label class="col-sm-2 control-label"><b>文章缩略图</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="thumb" class="form-control" rows="20" id="content" style="max-width: 800px;"/>
	        </div>
	    </div>
	    
	    <div class="form-group">
	        <label class="col-sm-2 control-label"><b>文章内容</b></label>
	        <div class="col-sm-10" >
		        <sf:textarea path="content" class="form-control" rows="20" id="content" style="max-width: 800px;"/>
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
	var editor = $('#content').xheditor({
		tools:'Cut,Copy,Paste,Pastetext,Blocktag,Fontface,FontSize,Bold,Italic,Underline,Strikethrough,FontColor,BackColor,SelectAll,Removeformat,Align,List,Outdent,Indent,Emot,Img,Table,About',
		skin:'o2007blue'
	});
	
	
	// 上传文件列表中的a链接
	$(".uploadFiles a").click(function(e) {
		return false;
	});
	
	$("body").on("click",".setThumb",function(){
		$(this).hide();
		
		$(".picType").html("普通图片");
		$(".cancelThumb").hide();
		$(".setThumb").hide();
		
		var trObj = $(this).closest("tr");
		trObj.find(".picType").html("<b>文章缩略图</b>");
		trObj.find(".cancelThumb").show();
	})
	
	$("body").on("click",".cancelThumb",function(){
		$(this).hide();
		
		$(".picType").html("普通图片");
		$(".setThumb").show();
		
	})
	
	$("body").on("click",".deleteAtt",function(){
		
	})
	
	$("body").on("click",".deletePic",function(){
		var trObj = $(this).closest("tr");
		console.log(trObj.find(".thumbPIC").find("img"));
		var sn = trObj.find(".thumbPIC").find("img").attr("sn");
		$("iframe").contents().find("img[sn='"+sn+"']").remove();
	})
	
	$("body").on("click",".insertInto",function(){
		var trObj = $(this).closest("tr");
		editor.appendHTML(trObj.find(".thumbPIC").html());
	})
	
	
});
</script>
</body>
</html>
