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
        <s:include value="../layout/portal_server_sider.jsp" />
        <div id="contents">
            <div class="h3-location">
                <h2>服务器资源</h2>
                <img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
            <div class="commitment">
                <div>
                    <%=((Portal_info)request.getAttribute("info")).getContent()%>
                </div>

            </div>
        </div>
    </div>
    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
    <script type="text/javascript">
        !function($) {
            $(function() {
                iTopbar("top-server");
            })
        }(window.jQuery)
    </script>
</body>
</html>