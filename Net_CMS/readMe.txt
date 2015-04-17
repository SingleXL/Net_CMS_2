

1.权限部分
	添加用户，默认一些基本的权限
	
	用户登录时，将此用户的所有权限放置到session中
	在访问页面时，用以下语句，进行隐藏某链接
	${sessionScope.uu.indexOf("2")}
	${sessionScope.uu.contains("2")}
	<c:if test="${sessionScope.uu.contains(\"2\")}">
		四十四
	</c:if>
	
	

2.用户部分
	CMS不属于论坛类的网站，不适合做用户的注册，可以手动添加用户信息

3.用户列表部分
	翻页，上一页和下一页，需要改进

4.栏目
	添加一个栏目类型
		链接类型 --> 此类型不能添加子类
		分类类型
		
	
5.文章
	http://localhost:8080/channelName/new Date().getTime()
	
	文章栏目，禁用父栏目
	<select class="selectpicker">
     	  <optgroup label="Picnic">
	          <option>Mustard</option>
	          <option>Ketchup</option>
	          <option>Relish</option>
          </optgroup>
	      <optgroup label="Camping">
	          <option>Tent</option>
	          <option>Flashlight</option>
	          <option>Toilet Paper</option>
	      </optgroup>
     </select>
     
	同时也要过滤链接类型的channel，
	
	
	
6.验证码
	Kaptcha
	
7.sn 代表唯一标示号

8.栏目的父类停用了，那么子类也将处于停用状态

9.添加时，为了防止页面跳转
	1),发送ajax请求
	2),使用load方法
	
	post之后的重定向
		可以使用ajax请求，然后后台获取状态，前台进行 ajax.load即可
	
	
10.系统清理，清理一些缓存文件，例如上传的文件等

11.后台左边菜单，无需再另写一个类，固定死

12.status 0 启用，1 停用

13.对于编辑，若是小的编辑，则不要搞一个页面，使用弹出窗口会比较好
	例如编辑栏目
	
	编辑文章需要一个大页面

14.主页的轮播图片，，可以单独设置图片并可以选择关联文章，，考虑设置图片库，这样就方便了

15.系统清理时怎么判断 upload文件夹中的文件是不是临时文件还是正在使用的文件
