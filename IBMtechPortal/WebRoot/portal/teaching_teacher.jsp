<%@page import="edu.tongji.sse.ibm.dao.Edu_teacherInfoDAO"%>
<%@page import="edu.tongji.sse.ibm.pojo.Edu_teacherInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	List<Edu_teacherInfo> infolist =(List<Edu_teacherInfo>) request.getAttribute("infolist");
	Iterator<Edu_teacherInfo> it = infolist.iterator();
	Edu_teacherInfo info;
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title>教学 - 教师简介</title>

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
				<h2 id="c-title">教师简介</h2>
				<img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
				<div class="chairman">
				<%
					while(it.hasNext()){
					info = it.next();
				 %>
					<div class="chief-img" style="background-image: url(<%=info.getPicURL() %>)">
						<div class="chief-img-bottom">
							<div class="t-line">
								<b id="tname-ch"><%=info.getName_ch() %></b>
								<small id="tname-en"><%=info.getName_en() %></small>
								<small id="tname-en"><%=info.getCourses() %></small>
								<small id="tname-en"><%=info.getPositions() %></small>
								<b>Email: </b>
								<small id="t-email"><%=info.getEmail() %></small>
							</div>
						</div>
					</div>
					<div class="chief-txt">
						<%=info.getInfo() %>
						<p>
							<a href="edu/teacherInfo?id=<%=info.getId()%>">
								<img src="assets/img/more.jpg" align="right"></a>
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
				iTopbar("top-teaching");
				iSidebar("teacher");
			})
		}(window.jQuery)
	</script>
</body>
</html>
