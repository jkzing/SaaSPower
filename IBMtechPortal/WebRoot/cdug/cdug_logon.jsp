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
	<title>登录 | CDUG</title>

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
		<div class="rl-wrapper">
			<div class="" id="rlForm">
				<div class="row" id="r-title">
					<h1>登录</h1>
				</div>
				<div class="l-inner">
					<form class="form-horizontal" method="post" action="cdug/user/logon">
						<div class="control-group pull-left">
							<label class="control-label" for="inputEmail">邮箱</label>
							<div class="controls">
								<input type="text" id="inputEmail" name="userName" placeholder="邮箱...">
							</div>
						</div>
						<div class="control-group pull-left">
							<label class="control-label" for="inputPasswd">密码</label>
							<div class="controls">
								<input type="password" id="inputPasswd" name="password" placeholder="密码...">
							</div>
						</div>
						<div class="control-group pull-left">
							<div class="controls">
								<button type="submit" class="btn btn-primary">登录</button>
								<a href="cdug/regist">没有账号？立即注册</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

	<s:include value="../layout/logon_modal.jsp"/>
	<s:include value="../include/cdug_scripts.jsp"/>

	<script>
      !function ($) {
        $(function(){
        	$('#signin').modal('hide')
        })
      }(window.jQuery)
    </script>
</body>
</html>