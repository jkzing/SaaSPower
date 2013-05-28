<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<body>
	<div class="span3">
		<div id="lnb">
			<ul class="m-lnb">
				<li class="">教学</li>
				<li>
					<a href="edu/teacherList">教师简介</a>
				</li>
				<li>
					<a href="edu/excellent">精品课程</a>
				</li>
				<li>
					<a href="edu/research">教学研究改革</a>
				</li>
				<li>
					<a href="edu/course">课程体系</a>
				</li>
				<li>
					<a href="edu/textbook">教材建设</a>
				</li>
				<li>
					<a href="edu/expert">专家演讲</a>
				</li>
				<li class="">科研</li>
				<li>
					<a href="research/inresearchProjects">创新项目</a>
				</li>
				<li>
					<a href="research/contestProject">在研项目</a>
				</li>
				<li class="">服务</li>
				<li>
					<a href="#">Mainframe Cloud</a>
				</li>
				<li class="">
					<a href="cdug/index">CDUG</a>
				</li>
				<li>
					<a href="cdug/">CDUG介绍</a>
				</li>
				<li>
					<a href="cdug_expert.html">CDUG专家</a>
				</li>
				<li>
					<a href="cdug_news.html">CDUG新闻</a>
				</li>
				<li>
					<a href="cdug_resource.html">CDUG资料</a>
				</li>
				<li>
					<a href="cdug_signup.html">CDUG报名</a>
				</li>
				<li class="">学生俱乐部</li>
				<li>
					<a href="club_into.html">俱乐部介绍</a>
				</li>
				<li>
					<a href="club_news.html">俱乐部新闻</a>
				</li>
				<li>
					<a href="club_innovation_project.html">学生竞赛</a>
				</li>
				<li>
					<a href="club_contest.html">学生创新项目</a>
				</li>
				<li class="">
					<a href="server_resource.html">服务器资源</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>