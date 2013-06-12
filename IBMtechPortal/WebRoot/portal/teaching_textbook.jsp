<%@page import="edu.tongji.sse.ibm.pojo.Edu_textBook"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	List<Edu_textBook> textbooklist =(List<Edu_textBook>) request.getAttribute("Edu_textBookList");
	Iterator<Edu_textBook> it = textbooklist.iterator();
	Edu_textBook textbook;
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>教学 - 教材建设</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<s:include value="../include/portal_links.jsp" />
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />
	<div class="container" id="main-cont">
		<s:include value="../layout/portal_teaching_sider.jsp" />
		<div id="contents">
			<div class="h3-location">
				<h2 id="c-title">教材建设</h2>
				<img src="assets/img/teaching/img_text.gif" alt="分割线">
			</div>
			<div class="chairman">
				<%
				    while (it.hasNext()) {
				        textbook = it.next();
				%>
					<div class="chair-row">
						<div class="textbook-img">
							<img src=<%=textbook.getPicURL() %> >
						</div>
						<div class="textbook-txt">
							<ul>
								<li>
									<h5>
										<strong>教材名称: </strong>
										<%=textbook.getName() %>
									</h5>
								</li>
								<li>
									<h5>
										<strong>主编: </strong>
										<%=textbook.getMainEditor() %>
									</h5>
								</li>
								<li>
									<h5>
										<strong>出版时间: </strong>
										<%=textbook.getPublishDate() %>
									</h5>
								</li>
								<li>
									<h5>
										<strong>简介: </strong>
										<%=textbook.getProfile() %>
									</h5>
								</li>
							</ul>
						</div>
					</div>
					
				<%
				 }
				  %>
			</div>
		</div>
	</div>

	<s:include value="../layout/portal_footer.jsp" />
	<s:include value="../include/portal_scripts.jsp" />
	<script type="text/javascript">
		!function($) {
			$(function() {
				iTopbar("top-teaching");
				iSidebar("textbook");
			})
		}(window.jQuery)
	</script>
</body>
</html>
