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
            <img src="assets/img/teaching/club_head.png" alt="俱乐部">
        </h2>
        <span class="lnb-vs">
            <img src="assets/img/teaching/lnb_visual03.png" alt="IBM信息门户">
         </span>
		<ul class="m-lnb">
			<li class="" id="intro">
				<a href="portal/club_into.jsp" class="nav-item-link">CLUB介绍</a>
			</li>
			<li class="" id="news">
				<a href="portal/club_news.jsp" class="nav-item-link">CLUB新闻</a>
			</li>
			<li class="" id="c-contest">
				<a href="portal/club_contest.jsp" class="nav-item-link">学生竞赛</a>
			</li>
			<li class="" id="innovation">
				<a href="portal/club_innovation_project.jsp" class="nav-item-link">创新项目</a>
			</li>
		</ul>
	</div>
</body>
</html>