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
	<link rel="stylesheet" type="text/css" href="assets/respslider/css/respslider.css">
</head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />
	<div id="banner">
        <ul id="banner_img">
            <li class="item1">
                <div class="wrapper">
                    <div class="ad_txt">
                        <h2>Web应用(B/S)定制开发</h2>
                        <p>
                            自主研发、完善的开发框架。<br />
                            详细的需求调研及解决方案。<br />
                            实施项目经验丰富的项目团队。
                        </p>
                        <a href="http://www.5icool.org/" target="_blank">了解详细&gt;</a>
                    </div>
                    <div class="ad_img">
                        <img src="assets/respslider/images/20120830015430148.png" width="506" height="404" alt="Web应用(B/S)定制开发" />
                    </div>
                </div>
            </li>
            <li class="item2">
                <div class="wrapper">
                    <div class="ad_txt">
                        <h2>互联网时代的整合营销</h2>
                        <p>
                            基于互联网的品牌营销策略的定制与执行。<br />
                            品牌形象挖掘、梳理、包装、表现与传播。<br />
                            坐拥着最为丰富的行业经验与优势资源。
                        </p>
                        <a href="http://www.5icool.org/" target="_blank">了解详细&gt;</a>
                    </div>
                    <div class="ad_img">
                        <img src="assets/respslider/images/20120830015446637.png" width="506" height="404" alt="互联网时代的整合营销" />
                    </div>
                </div>
            </li>
            <li class="item3">
                <div class="wrapper">
                    <div class="ad_txt">
                        <h2>您的网站全职管家</h2>
                        <p>
                            成熟的监控与报警机制。<br />
                            丰富的整合营销的能力和经验。<br />
                            专业数据分析、开发和维护部门。
                        </p>
                        <a href="http://www.5icool.org/" target="_blank">了解详细&gt;</a>
                    </div>
                    <div class="ad_img">
                        <img src="assets/respslider/images/20120830015615324.png" width="506" height="404" alt="您的网站全职管家" />
                    </div>
                </div>
            </li>
            <li class="item4">
                <div class="wrapper">
                    <div class="ad_txt">
                        <h2>全新的学术会议体验</h2>
                        <p>
                            工作更高效，主办方更轻松。<br />
                            线上报名，让主办方不再为报名的事而费尽脑筋。<br />
                            线上投稿、审稿，为主办方提高收寄、审稿效率。<br />
                            酒店预订，会议行程更加轻松。
                        </p>
                        <a href="http://www.5icool.org/" target="_blank">了解详细&gt;</a>
                    </div>
                    <div class="ad_img">
                        <img src="assets/respslider/images/20120830015651273.png" width="506" height="404" alt="全新的学术会议体验" />
                    </div>
                </div>
            </li>
        </ul>
        <div id="banner_ctr">
            <div id="drag_ctr"></div>
            <ul>
                <li class="first-item">网站建设</li>
                <li>品牌网站建设</li>
                <li>品牌网站建设</li>
                <li>品牌网站建设</li>
                <li>应用系统开发</li>
                <li class="last-item">网站建设</li>
            </ul>
            <div id="drag_arrow"></div>
        </div>
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
	<script type="text/javascript" src="assets/respslider/js/respslider.js"></script>
	<script type="text/javascript">
		!function($) {
			$(function() {
				iTopbar("home");
			})
		}(window.jQuery)
	</script>
</body>
</html>