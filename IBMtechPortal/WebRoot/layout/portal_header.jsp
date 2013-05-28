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
        <div class="top-figure">
          <a class="logo" href="homepage.html">
            <img src="assets/img/sse_logo.png">
          </a>
        </div>
        <ul class="top-nav" style="margin-top: 60px;">
          <li id="home">
            <a href="portal/homepage.jsp" class="">首页</a>
          </li>
          <li id="top-teaching">
             <a href="portal/teaching_teacher.jsp">教学</a>
          </li>
          <li id="top-research">
            <a href="portal/research_contest_project.jsp">科研</a>
          </li>
          <li id="top-zcloud">
            <a href="#">主机云</a>
          </li>              
          <li id="top-cdug">
            <a href="cdug/index">cdug</a>
          </li>
          <li id="top-club">
            <a href="portal/club_into.jsp">俱乐部</a>
          </li>
          <li id="top-server">
            <a href="portal/server_resource.jsp">服务器</a>
          </li>
        </ul>
      </div>
  </div>
</body>
</html>