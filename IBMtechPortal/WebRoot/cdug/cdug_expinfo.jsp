<%@page import="edu.tongji.sse.ibm.dao.CDUG_expertDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.CDUG_expert"%>
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
	<title>注册|CDUG</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<s:include value="../include/cdug_links.jsp" />

</head>

<body>
	<div class="container">
		<s:include value="../layout/cdug_header.jsp" />
		<div class="sexp-wrapper">
			<%
					CDUG_expert expert = CDUG_expertDAO.getExpert(Integer.parseInt(request.getParameter("id")));
			%>
			<div class="sexp-inner">
				<div class="sexp-name">
					<h1><%=expert.getName() %></h1>
				</div>
				<div class="sexp-photo">
					<img src="<%=expert.getPicURL() %>">
				</div>
				<div class="sexp-profile">
					<p><%=expert.getProfile() %></p>
				</div>
			</div>
		</div>

	</div>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />
	<script type="text/javascript" src="assets/stylesheets/js/register.js"
		charset="utf-8"></script>

	<script>
		!function($) {
			$(function() {
				$('#signin').modal('hide')
			})
		}(window.jQuery)
	</script>
</body>
</html>
