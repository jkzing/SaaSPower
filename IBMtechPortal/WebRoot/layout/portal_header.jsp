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
	<div id="wrap_main">
		<div class="container" id="header">
			<h1>
				<a class="logo" href="#">
					<img src="assets/img/sse_logo.png">
				</a>
			</h1>
			<ul class="action">
				
				<%
					if(isLogon){
				
				 %>
				<li>
					<a ><%=user.getEmail()%></a>
				</li>
				<li>
					<a href="logout">退出</a>
				</li>	
				<%
				}else{
				 %>
				 <li>
				 	<a href="#signin" >登录</a>
				 </li>
				<li>
					<a href="cdug/regist">注册</a>
				</li>
				 <%
				 }
				  %>
			</ul>
			<ul class="top-nav" style="margin-top: 60px;">
				<li id="home">
					<span>首页</span>
				</li>
				<li id="teaching">
					<a href="#">教学</a>
				</li>
				<li id="download">
					<a href="#">科研</a>
				</li>
				<li id="download">
					<a href="#">服务器</a>
				</li>
				<li id="download">
					<a href="#">CDUG</a>
				</li>
				<li id="download">
					<a href="#">主机云</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>