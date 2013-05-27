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
                <li class="first">
                    <a href="teaching_teacher.html">
                        <img src="assets/img/teaching/lnb_m01_off.gif" alt="教师简介"></a>
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
                <li class="slc" style="border-top-width: 1px; border-top-style: solid; border-top-color: rgb(84, 153, 227);">
                    <a href="teaching_expert.html">
                        <img src="assets/img/teaching/lnb_m07_on.gif" alt="专家演讲"></a>
                </li>
            </ul>
        </div>
        <div id="contents">
            <div class="h3-location">
                <h2>教材建设</h2>
                <img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
            <div class="commitment">
                <div>
                    <h4>服务工程</h4>
                    <p>
                        <img src="assets/img/teaching/img_motto.gif" alt="知德培養 初志一貫"></p>
                </div>
                <div>
                    <h4>专业特色</h4>
                    <p>
                        <img src="assets/img/teaching/img_our02.gif" alt="时代在不断的更新，技术革新的巨浪在变化的历史潮流中翻腾。我们是历史的弄潮儿，为了实现更加美好繁荣的明天，进一步创造新的历史是我们的使命。我们不断的学习研究学问和专门职业技术，为了培育能够担当发展产业社会中枢作用的人才而为国家发展贡献我们的力量。"></p>
                </div>
                <div>
                    <h4>课程体系结构</h4>
                    <p>
                        <img src="assets/img/teaching/img_goal.gif" alt=""></p>
                </div>
            </div>
        </div>
    </div>
    
    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
</body>
</html>