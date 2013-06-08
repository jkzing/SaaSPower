<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<body>
	<div id="footer">
		<div class="f-headline"></div>
		<div class="container">
		<ul class="footer-links">
			<li>
				<h3>赞助方</h3>
				<div>
					<a class="footer-link" target="_blank" href="http://www.ibm.com/cn/zh/">IBM中国</a>
				</div>
				<div>
					<a class="footer-link" target="_blank" href="http://sse.tongji.edu.cn/">同济大学软件学院</a>
				</div>
			</li>
			<li class="contacts">
				<h3>联系我们</h3>
				<div>联系电话：xxxxxxxxx</div>
				<div>QQ：xxxxxxxxx</div>
				<div>邮箱：xxxxxxxxx</div>
				<div>
					微博：
					<a href="http://weibo.com/u/2790440811" class="highlight">同济IBM技术俱乐部</a>
				</div>
			</li>
			<li>
				<h3>关于我们</h3>
				<div>
					<a class="footer-link" href="#">中心简介</a>
				</div>
				<div>
					<a class="footer-link" target="_blank" href="#">中心老师</a>
				</div>
			</li>
			<li>
				<h3>友情链接</h3>
				<div>
					<a class="footer-link" target="_blank" href="http://www.ibm.com">IBM</a>
				</div>
				<div>
					<a class="footer-link" target="_blank" href="http://www.tongji.edu.cn/">同济大学官网</a>
				</div>
				<div>
					<a class="footer-link" target="_blank" href="http://sse.tongji.edu.cn/">同济大学软件学院官网</a>
				</div>
				<div>
					<a class="footer-link" target="_blank" href="http://cdug.tongji.edu.cn/CDUG/">CDUG官网</a>
				</div>
			</li>
		</ul>
		</div>
		<div class="copyright">同济大学IBM技术中心 版权所有 &copy;2013</div>
	</div>
</body>
</html>