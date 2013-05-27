<%@page import="edu.tongji.sse.ibm.pojo.Student_contest"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'homepage.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<s:include value="../include/portal_links.jsp" />
<link rel="stylesheet" type="text/css"
	href="assets/bootstrap/css/bootstrap.css">
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />

	<div class="container" style="padding:50px">
		<s:include value="../layout/portal_club_sider.jsp" />
		<div id="contents">
			<div class="h3-location">
				<h2>学生竞赛</h2>
				<img src="assets/img/teaching/img_text.gif" alt="分割线">
			</div>
			<div class="commitment">
				<%
					List<Student_contest> contestlist =(List<Student_contest>) request.getAttribute("contestlist");
					Iterator<Student_contest> it = contestlist.iterator();
					Student_contest contest;
					while(it.hasNext()){
					contest = it.next();
				 %>
				 
				 
				 
				<div>
					<h4><%=contest.getTitle() %></h4>
					<p>
						<%=contest.getContent() %>
					</p>
				</div>
			<%} %>

			</div>
		</div>
	</div>

    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
    <script type="text/javascript">
        !function($) {
            $(function() {
                iTopbar("top-club");
                iSidebar("c-contest");
            })
        }(window.jQuery)
    </script>
</body>
</html>