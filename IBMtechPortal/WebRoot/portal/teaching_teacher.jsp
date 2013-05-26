<%@page import="edu.tongji.sse.ibm.dao.Edu_teacherInfoDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.Edu_teacherInfo"%>
<%@page import="com.opensymphony.xwork2.Action"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
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

	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="assets/stylesheets/css/banner.css">
	<s:include value="../include/portal_links.jsp" />
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />
	<div class="container">
		<div class="row">
			<s:include value="../layout/portal_sider.jsp" />
			<div class="span9 main-body">
			${info}
			<br>
			<%
			List<Edu_teacherInfo> teacherInfoList = Edu_teacherInfoDAO.getInfoList();
			Edu_teacherInfo info = new Edu_teacherInfo();
			Iterator<Edu_teacherInfo> it = teacherInfoList.iterator();
			while(it.hasNext()){
			 %>
			<%=it.next().getName_ch() %>
			<%} %>
			</div>
		</div>
	</div>
	

	<s:include value="../include/portal_scripts.jsp" />
</body>
</html>