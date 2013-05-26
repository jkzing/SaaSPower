<%@page import="edu.tongji.sse.ibm.dao.NewsDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
	News news = NewsDAO.getNews(Integer.parseInt(request.getParameter("id")));
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title><%=news.getTitle()%> | CDUG</title>

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
		<div class="snews-wrapper">
			<div class="span8 snews-inner">
				<div class="snews-title">
					<h1><%=news.getTitle() %></h1>
					<strong><%=news.getCreateTime() %></strong>
				</div>
				<div class="snews-content">
					<%=news.getContent() %>
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