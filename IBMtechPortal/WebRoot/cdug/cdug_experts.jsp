<%@page import="edu.tongji.sse.ibm.dao.CDUG_expertDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.CDUG_expert"%>
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
	<base href="<%=basePath%>
	">
	<title>专家|CDUG</title>

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
		<div class="expert-wrapper">
			<h1>专家队伍</h1>
			<p class="byline">这里汇聚了国内外知名DB2方面专家</p>
			<div class="clearfix">
				<%
						List<CDUG_expert>
				allExperts =  CDUG_expertDAO.getExpertList();
						CDUG_expert expert = new CDUG_expert();
					  		Iterator
				<CDUG_expert>
					it = allExperts.iterator();
					  		while(it.hasNext()){
					  		expert = it.next();
				 %>
				 <div class="s-expert">
					<ul class="expert-list pull-left unstyled">
						<li class="pull-left">
							<img src="<%=expert.getPicURL()%>"></li>
						</li>
						<li>
							<h4>
								<a href="cdug/info/expert?id=<%=expert.getId()%>"><%=expert.getName() %></a>
							</h4>
						</li>
						<li>
							<strong><%=expert.getEmail()%></strong>
						</li>
						<li class="expert-profile">简介: <%=expert.getProfile() %></li>
						<li class="expert-konwmore"><a href="cdug/info/expert?id=<%=expert.getId()%>">了解更多>></a></li>
					</ul>
				</div>
					<%
						}
					 %>
			</div>
				<div class="pagination expert-pagination">
					<ul>
						<li>
							<a href="#">Prev</a>
						</li>
						<li>
							<a href="#">1</a>
						</li>
						<li>
							<a href="#">2</a>
						</li>
						<li>
							<a href="#">3</a>
						</li>
						<li>
							<a href="#">4</a>
						</li>
						<li>
							<a href="#">5</a>
						</li>
						<li>
							<a href="#">Next</a>
						</li>
					</ul>
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
