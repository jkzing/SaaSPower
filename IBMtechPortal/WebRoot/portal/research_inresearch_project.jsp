<%@page import="edu.tongji.sse.ibm.pojo.Research_project"%>
<%@page import="edu.tongji.sse.ibm.pojo.Portal_info"%>
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
    <title>科研 - 在研项目</title>

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
        <s:include value="../layout/portal_research_sider.jsp" />
        <div id="contents">
            <div class="h3-location">
                <h2 id="c-title">在研项目</h2>
                <img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
            <div class="commitment">
              <%=((Portal_info)request.getAttribute("info")).getContent() %>
            </div>
        </div>
    </div>
    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
    <script type="text/javascript">
        !function($) {
            $(function() {
                iTopbar("top-research");
                iSidebar("inresearch");
            })
        }(window.jQuery)
    </script>
</body>
</html>
