<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<body>
	<div id="lnb">
		<h2>
			<img src="assets/img/teaching/teach_head.png" alt="教学">
		</h2>
		<span class="lnb-vs">
			<img src="assets/img/teaching/lnb_visual01.png" alt="IBM信息门户">
		</span>
		<ul class="m-lnb">
			<li class="" id="teacher">
				<a href="portal/teaching_teacher.jsp" class="nav-item-link">教师简介</a>
			</li>
			<li class="" id="excellent">
				<a href="portal/teaching_excellent.jsp" class="nav-item-link">精品课程</a>
			</li>
			<li class="" id="research">
				<a href="portal/teaching_research.jsp" class="nav-item-link">研究改革</a>
			</li>
			<li class="" id="course">
				<a href="portal/teaching_course.jsp" class="nav-item-link">课程体系</a>
			</li>
			<li class="" id="textbook">
				<a href="portal/teaching_textbook.jsp" class="nav-item-link">教材建设</a>
			</li>
			<li class="" id="expert">
				<a href="portal/teaching_expert.jsp" class="nav-item-link">专家演讲</a>
			</li>
		</ul>
	</div>
</body>
</html>