<%@page import="edu.tongji.sse.ibm.pojo.Pic"%>
<%@page import="edu.tongji.sse.ibm.pojo.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">
<title>新闻 | CDUG</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<s:include value="../include/cdug_links.jsp" />
</head>

<body>
	<div class="container">
		<s:include value="../layout/cdug_header.jsp" />
		<div class="row news-wrapper">
			<div class="span8 news-list-wrapper">
				<div class="news-list-title">
					<h1>CDUG新闻</h1>
				</div>
				<div id="n-list">
				<%
					 int pageSize = (Integer) request.getAttribute("pageSize"); //每页显示的新闻个数
					 int curpage =  (Integer) request.getAttribute("curpage");
					 int pageCount =  (Integer) request.getAttribute("pageCount");
							List<News>	allNews = (List<News>)  request.getAttribute("newsList");
							News news = new News();
							Iterator<News> it = allNews.iterator();
							while(it.hasNext()){
								news = it.next();
				%>

				<ul class="news-list pull-left">
				<%
					Pic pic = news.getPic();
					if(pic == null){
				 %>
					<li class="pull-left"><img src="assets/img/news_default.jpg">
					</li>
					
					<%}else{ %>

					<li class="pull-left"><img src="<%=news.getPic().getURL()%>">
					</li>
					<%} %>
					<li>
						<h4>
							<a href="cdug/info/news?id=<%=news.getId()%>"><%=news.getTitle()%></a>
						</h4></li>
					<li><strong>发布时间：<%=news.getCreateTime()%></strong></li>
					<li><%=news.getContent()%></li>
				</ul>

				<%
					}
				%>
				</div>
				<div class="pagination news-pagination">
					<ul>
						<li><a href="cdug/news?curpage=<%=curpage - 1%>">上一页</a>
						</li>
						
						<%for(int i = 0; i < pageCount;i++){ %>
						<li><a href="cdug/news?curpage=<%=i%>"><%=i+1%></a>
						</li>
						<%} %>
						<li><a href="cdug/news?curpage=<%=curpage + 1%>">下一页</a>
						</li>
						
					</ul>
				</div>
			</div>
			<div class="span3 news-control">
				<form>
					<div class="input-prepend input-append">
						<span class="add-on">关键字</span> <input class="span2"
							id="appendedPrependedInput" type="text">
						<button type="button" id="nbtn-search" class="btn btn-primary">搜索</button>
					</div>
					<select id="nslc-span">
						<option value="all">查看全部</option>
						<option value="day">今日新闻</option>
						<option value="week">本周新闻</option>
						<option value="month">本月新闻</option>
					</select>
				</form>
			</div>
		</div>
	</div>

	<footer>
		<p style="margin-left: 600px; margin-top: 100px;">© 2013 同济大学软件学院.</p>
	</footer>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />

	<script>
		!function($) {
			$(function() {
				$('#signin').modal('hide')
			})
		}(window.jQuery)
	</script>

</body>
</html>