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
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />
	<div id="banner" class="slide-1">
		<ul id="J-slide" style="position:relative;">
			<li class="slide current" style="z-index:0; position:absolute; left:0px; top:0px;">
				<div class="bg bg-1" style="background-image:url(assets/img/wallpaper-2794283.jpg);"></div>
			</li>
			<li class="slide" style="z-index:0; position:absolute; left:0px; top:0px;">
				<div class="bg bg-2" style="background-image:url(assets/img/wallpaper-2764837.png);"></div>
			</li>
			<li class="slide" style="z-index:0; position:absolute; left:0px; top:0px;">
				<div class="bg bg-3" style="background-image:url(assets/img/wallpaper-2794283.jpg);"></div>
			</li>
			<li class="slide" style="z-index:0; position:absolute; left:0px; top:0px;">
				<div class="bg bg-4" style="background-image:url(assets/img/wallpaper-2794283.jpg);"></div>
			</li>

		</ul>
	</div>
	<ul class="container" id="guide">
		<li class="step" id="step1">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
		<li class="step" id="step2">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                 才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
		<li class="step" id="step3">
			<div class="idxIcon"></div>
			<div class="title">IBM技术中心</div>
			<div class="desc">
				IBM技术中心建立的目的是加强我校在信息科学技术领域的学科建设和人
                 才培养，快速跟踪国际先进的IT技术
			</div>
		</li>
	</ul>
	<ul class="container" id="introduce">
		<li id="push">
			<div class="newstitle">
				<h2>焦点新闻</h2>
				<span>
					<a href="#" target="_blank">
						<img src="assets/img/more.jpg" width="40" height="9"></a>
				</span>
			</div>
			<ul class="news_text">
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
			</ul>
		</li>
		<li id="custom">
			<div class="newstitle">
				<h2>活动公告</h2>
				<span>
					<a href="#" title="_blank">
						<img src="assets/img/more.jpg" width="40" height="9"></a>
				</span>
			</div>
			<ul class="news_text">
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>
				<li>
					<a title="#" href="#" target="_blank">诚挚邀请您参加2013年秋季中国DB2用户大会...</a>
				</li>

			</ul>
		</li>
	</ul>
	<s:include value="../layout/portal_footer.jsp" />
	<s:include value="../include/portal_scripts.jsp" />
</body>
</html>