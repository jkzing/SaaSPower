<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title>注册 | CDUG</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<s:include value="../include/cdug_links.jsp"/>

</head>

<body>
	<div class="container">
		<s:include value="../layout/cdug_header.jsp"/>
		<div class="register-wrapper">
			<div class="" id="registerForm">
				<div class="row" id="r-title">
					<h1>个人注册</h1>
				</div>
				<div class="register-inner">
					<form class="form-horizontal" method="post" action="cdug/user/register">
						<div class="control-group pull-left">
							<label class="control-label" for="inputEmail">邮箱</label>
							<div class="controls">
								<input type="text" id="inputEmail" name="registEmail" placeholder="邮箱...">
								<span> <i class="" id="icon-email"></i>
								</span>
								<span>
									<small id="tip-email"></small>
								</span>
							</div>
						</div>
						<div class="control-group pull-left">
							<label class="control-label" for="inputPasswd">密码</label>
							<div class="controls">
								<input type="password" id="inputPasswd" name="registPasswd" placeholder="密码...">
								<span> <i class="" id="icon-passwd"></i>
								</span>
								<span>
									<small id="tip-passwd"></small>
								</span>
							</div>
						</div>
						<div class="control-group pull-left">
							<label class="control-label" for="inputConfirmPwd">确认密码</label>
							<div class="controls">
								<input type="password" id="inputConfirmPwd" placeholder="确认密码...">
								<span>
									<i class="" id="icon-confirm"></i>
								</span>
								<span>
									<small id="tip-confirm"></small>
								</span>
							</div>
						</div>
						<div class="control-group pull-left">
							<div class="controls">
								<button type="submit" class="btn btn-primary" id="inputSubmit">立即注册</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<s:include value="../layout/logon_modal.jsp"/>
	<s:include value="../include/cdug_scripts.jsp"/>
	<script type="text/javascript" src="assets/stylesheets/js/register.js" charset="utf-8"></script>

	<script>
      !function ($) {
        $(function(){
        	$('#signin').modal('hide')
        })
      }(window.jQuery)
    </script>
</body>
</html>