<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title>My JSP 'homepage.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<s:include value="../include/portal_links.jsp" />
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />
	<div id="index">
		<div class="container"></div>
		<div id="frontCloud">
			<div class="container"></div>
		</div>
	</div>
	<ul class="container" id="guide">
		<li class="step" id="step1">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                 才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
		<li class="step" id="step2">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                 才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
		<li class="step" id="step2">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                 才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
	</ul>
	<ul class="container" id="introduce">
		<li id="push">
			<img title="新闻" src="assets/img/tongji_logo.jpg">
			<div class="function">
				<h2>新闻</h2>
				<h3>这里找到您最想了解的信息</h3>
				<p></p>
			</div>
		</li>
		<li id="custom">
			<img title="活动" src="assets/img/tongji_logo.jpg">
			<div class="function">
				<h2>活动</h2>
				<h3>这里找到您最想参与的活动</h3>
				<p></p>
			</div>
		</li>
	</ul>
	<div id="footer">
		<ul class="container footer-links">
			<li>
				<h3>关于我们</h3>
			</li>
		</ul>
		<p>©  同济大学软件学院 2013</p>
	</div>

	<s:include value="../include/portal_scripts.jsp" />
</body>
</html>