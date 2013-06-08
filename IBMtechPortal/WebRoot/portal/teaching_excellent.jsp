<%@page import="edu.tongji.sse.ibm.pojo.Edu_courseInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Edu_courseInfo> courselist = (List<Edu_courseInfo>) request.getAttribute("courselist");
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
    <base href="<%=basePath%>
    ">
    <title>教学 - 精品课程</title>

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
                <h2 id="c-title">精品课程</h2>
                <img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
            <div class="link-cont link-cont-type2">
                <ul id="e-ul">
                
                <%
                Iterator<Edu_courseInfo> it = courselist.iterator();
					Edu_courseInfo info;
					while(it.hasNext()){
					info = it.next();
                 %>
                    <li>
                        <h4><%=info.getName() %></h4>
                        <div>
                        	<h5><strong>项目名称: </strong><%=info.getProjectName() %></h5>
                        	<h5><strong>年度: </strong><%=info.getYear() %></h5>
                            <h5><strong>课程介绍: </strong><%=info.getInfo() %></h5>
                            <p class="link"> 
                            	<strong>
                            		<img id="coursehomeimg" src="assets/img/teaching/crouse_main.png" alt="course_home">
                            	</strong>
                                <a href="<%=info.getLink()%>" target="_blank" title="<%=info.getName()%>"><%=info.getLink()%></a>
                            </p>
                        </div>
                    </li>
                  <%} %>
    </ul>
    </div>
    </div>
    </div>
    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
    <script type="text/javascript">
        !function($) {
            $(function() {
                iTopbar("top-teaching");
                iSidebar("excellent");
            })
        }(window.jQuery)
    </script>
</body>
</html>
