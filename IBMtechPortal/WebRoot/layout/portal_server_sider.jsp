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
            <img src="assets/img/teaching/server_head.png" alt="服务器资源">
        </h2>
        <span class="lnb-vs">
            <img src="assets/img/teaching/lnb_visual04.png" alt="IBM信息门户">
         </span>
		<ul class="m-lnb">
			<li class="" id="server">
				<a href="portal/server_resource.jsp" class="nav-item-link">服务器资源</a>
			</li>
		</ul>
	</div>
</body>
</html>