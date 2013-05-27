<%@page import="edu.tongji.sse.ibm.dao.UserDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
            
   	Integer userId =(Integer) request.getSession().getAttribute("userId");
   	Boolean isLogon = false;
   	User user = null;
   	if(null != userId){
   		user = UserDAO.getUser(userId);
		isLogon = true;
   	}
%>

<!DOCTYPE HTML>
<html>
<body>
	<div id="head">
		<div class="container">
			<h1 id="h-logo">
				<a href="cdug/index">CDUG</a>
			</h1>
			<p id="h-meta">
				<span>
				<%
					if(isLogon){
				
				 %>
					<a data-toggle="modal" href="#signin" data-keyboard="false" data-backdrop="false"><%=user.getName()%></a>
					 - 
					<a href="logout">退出</a>
					
				<%
				}else{
				 %>
				 	<a data-toggle="modal" href="#signin" data-keyboard="false" data-backdrop="false">登录</a>
					 - 
					<a href="cdug/regist">注册</a>
				 <%
				 }
				  %>
				</span>
				 | 
				<a href="#">帮助</a>
			</p>
		</div>
	</div>
	<div class="navbar navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">CDUG</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li><a href="cdug/index">首页</a></li>
						<li><a href="cdug/news">新闻</a></li>
						<li><a href="cdug/experts">专家</a></li>
						<li><a href="cdug/resources">资料</a></li>
						<li><a href="cdug/signup">报名</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
