<%@page import="edu.tongji.sse.ibm.pojo.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>">
	<title>新闻 | CDUG</title>

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
		<div class="success-wrapper">
			
		</div>
	</div>

	<footer>
		<p style="margin-left: 600px; margin-top: 100px;">© 2013 同济大学软件学院.</p>
	</footer>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />

	<script>
		!function($) {
			$(function() {
				$('#signin').modal('hide')
			})
		}(window.jQuery)
	</script>

</body>
</html>