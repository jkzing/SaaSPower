<%@page import="edu.tongji.sse.ibm.pojo.Res"%>
<%@page import="edu.tongji.sse.ibm.pojo.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	News news = (News) request.getAttribute("news");
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻 - <%=news.getTitle() %></title>
    
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
		<s:include value="../layout/portal_news_sider.jsp" />
		<div id="contents">
			<div class="h3-location" id="nt-wrapper">
				<div id="news-title">
					<%=news.getTitle() %>
				</div>
				<div id="news-date">
					<strong>发布时间：<%=news.getCreateTime() %></strong>
				</div>
			</div>
			<div id="n-content">
				<div>
					<%=news.getContent() %>
				</div>
            </div>
            <div id="n-res">
            	<ul>
            	<%
            		Set<Res> resourcesSet = news.getResources();
            		Iterator<Res> it = resourcesSet.iterator();
            		Res resource = new Res();
            		while (it.hasNext()) {
            			resource = it.next();
            	 %>
            	 	<li>
            	 		<a href="download?id=<%=resource.getId()%>">附件：<%=resource.getName() %></a>
            	 	</li>
            	 <%
            	 }
            	  %>
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
                iSidebar("research");
            })
        }(window.jQuery)
    </script>
</body>
</html>
