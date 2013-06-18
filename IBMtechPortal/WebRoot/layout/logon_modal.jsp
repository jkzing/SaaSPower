<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <body>
  	<div id="modals">
		<div class="modal hide fade my-modal" id="signin"
			style="display: none;">
			<div class="modal-header">
				<a class="close" data-dismiss="modal">×</a>
				<h4>登录</h4>
			</div>
			<div class="modal-body">
				<form id="ml-form" style="display: block; margin-left: 75px;" method="post"
					action="cdug/user/logon">
					<input type="text" name="userName" id="usrname" class="input" placeholder="邮件">
					<input type="password" name="password" id="passwd" class="input"
						placeholder="密码"> <label class="checkbox"> <input
						type="checkbox"> 记住我 </label>
					<button type="button" class="btn" id="mb-logon">登录</button>
				</form>
			</div>
		</div>
	</div>
  </body>
</html>
