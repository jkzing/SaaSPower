<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title>My JSP 'homepage.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<s:include value="../include/portal_links.jsp" />
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css"></head>

<body class="main" marginwidth="0" marginheight="0">
	<s:include value="../layout/portal_header.jsp" />

	<div class="container" style="padding:50px">
		<div id="lnb">
			<h2>
				<img src="assets/img/teaching/teach_head.png" alt="教学"></h2>
			<span class="lnb-vs">
				<img src="assets/img/teaching/lnb_visual01.png" alt="IBM信息门户"></span>
			<ul class="m-lnb">
				<li class="first" style="border-top-width: 1px; border-top-style: solid; border-top-color: rgb(84, 153, 227);">
					<a href="teaching_teacher.html">
						<img src="assets/img/teaching/lnb_m01_on.gif" alt="教师简介"></a>
				</li>
				<li class="">
					<a href="teaching_excellent.html">
						<img src="assets/img/teaching/lnb_m03_off.gif" alt="精品课程"></a>
				</li>
				<li class="">
					<a href="teaching_research.html">
						<img src="assets/img/teaching/lnb_m04_off.gif" alt="研究改革"></a>
				</li>
				<li class="">
					<a href="teaching_course.html">
						<img src="assets/img/teaching/lnb_m05_off.gif" alt="课程体系"></a>
				</li>
				<li class="">
					<a href="teaching_textbook.html">
						<img src="assets/img/teaching/lnb_m06_off.gif" alt="教材建设"></a>
				</li>
				<li class="">
					<a href="teaching_expert.html">
						<img src="assets/img/teaching/lnb_m07_off.gif" alt="专家演讲"></a>
				</li>
			</ul>
		</div>
		<div id="contents">
			<div class="h3-location">
				<h2>教师简介</h2>
				<img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
			<div class="chairman">
				<div class="chief-img">
					<img src="assets/img/teaching/gaozhen.png" height="234" width="173"></div>
				<div class="chief-txt">
					<p>
						教学工作
                            同济大学 2005.3-今	同济大学软件学院 服务工程(大型主机技术)专业方向
                            主讲课程：
                            1)大型机操作系统(z/OS) 2) 大型机数据库系统(DB2) 3) 大型机系统管理技能
                            大型机系统管理员：
                            维护同济大学大型机(IBM eSever zSeries z900主机)系统日常教学环境
                            教学改革成果
                            同济大学第5期“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设；
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (教高司函[2006]239号)
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践”
					</p>
					<p>
						<a href="teaching_teacher_mainpage.html">
							<img src="assets/img/more.jpg" align="right"></a>
					</p>
				</div>
			</div>
			<div class="chairman">
				<div class="chief-img">
					<img src="assets/img/teaching/gaozhen.png" height="234" width="173"></div>
				<div class="chief-txt">
					<p>
						教学工作
                            同济大学 2005.3-今	同济大学软件学院 服务工程(大型主机技术)专业方向
                            主讲课程：
                            1)大型机操作系统(z/OS) 2) 大型机数据库系统(DB2) 3) 大型机系统管理技能
                            大型机系统管理员：
                            维护同济大学大型机(IBM eSever zSeries z900主机)系统日常教学环境
                            教学改革成果
                            同济大学第5期“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设；
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (教高司函[2006]239号)
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践”
					</p>
					<p>
						<a href="teaching_teacher_mainpage.html">
							<img src="assets/img/more.jpg" align="right"></a>
					</p>
				</div>
			</div>
			<div class="chairman">
				<div class="chief-img">
					<img src="assets/img/teaching/gaozhen.png" height="234" width="173"></div>
				<div class="chief-txt">
					<p>
						教学工作
                            同济大学 2005.3-今	同济大学软件学院 服务工程(大型主机技术)专业方向
                            主讲课程：
                            1)大型机操作系统(z/OS) 2) 大型机数据库系统(DB2) 3) 大型机系统管理技能
                            大型机系统管理员：
                            维护同济大学大型机(IBM eSever zSeries z900主机)系统日常教学环境
                            教学改革成果
                            同济大学第5期“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设；
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (教高司函[2006]239号)
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践”
					</p>
					<p>
						<a href="teaching_teacher_mainpage.html">
							<img src="assets/img/more.jpg" align="right"></a>
					</p>
				</div>
			</div>
			<div class="chairman">
				<div class="chief-img">
					<img src="assets/img/teaching/gaozhen.png" height="234" width="173"></div>
				<div class="chief-txt">
					<p>
						教学工作
                            同济大学 2005.3-今	同济大学软件学院 服务工程(大型主机技术)专业方向
                            主讲课程：
                            1)大型机操作系统(z/OS) 2) 大型机数据库系统(DB2) 3) 大型机系统管理技能
                            大型机系统管理员：
                            维护同济大学大型机(IBM eSever zSeries z900主机)系统日常教学环境
                            教学改革成果
                            同济大学第5期“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设；
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (教高司函[2006]239号)
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践”
					</p>
					<p>
						<a href="teaching_teacher_mainpage.html">
							<img src="assets/img/more.jpg" align="right"></a>
					</p>
				</div>
			</div>
			<div class="chairman">
				<div class="chief-img">
					<img src="assets/img/teaching/gaozhen.png" height="234" width="173"></div>
				<div class="chief-txt">
					<p>
						教学工作
                            同济大学 2005.3-今	同济大学软件学院 服务工程(大型主机技术)专业方向
                            主讲课程：
                            1)大型机操作系统(z/OS) 2) 大型机数据库系统(DB2) 3) 大型机系统管理技能
                            大型机系统管理员：
                            维护同济大学大型机(IBM eSever zSeries z900主机)系统日常教学环境
                            教学改革成果
                            同济大学第5期“实验教学改革专项基金”项目，项目名称：大型机应用开发实用技能系列实验课程建设；
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践” (教高司函[2006]239号)
                            国家级教改项目，“大型主机应用型创新人才培养模式的研究与实践”
					</p>
					<p>
						<a href="teaching_teacher_mainpage.html">
							<img src="assets/img/more.jpg" align="right"></a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<s:include value="../layout/portal_footer.jsp" />
	<s:include value="../include/portal_scripts.jsp" />
</body>
</html>