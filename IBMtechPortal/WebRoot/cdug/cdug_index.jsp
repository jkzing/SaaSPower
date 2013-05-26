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
	<base href="<%=basePath%>
	">
	<title>CDUG</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="">
	<link rel="stylesheet" type="text/css" href="assets/unslider/css/style.css">
	<s:include value="../include/cdug_links.jsp" />

</head>

<body>
	<div class="topbar">
		<div class="grid-990 topbar-wrapper">
			<div class="topbar-title">
				<p>同济大学IBM技术中心</p>
			</div>
			<ul class="topbar-menu unstyled">
				<li>
					<a href="#">登录</a> <b>-</b>
					<a href="#">注册</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="index-header">
		<div class="grid-990 iheader-wrapper">
			<figure class="pull-left">
				<a href="cdug/index" class="ui-logo"></a>
			</figure>
			<ul class="unstyled index-nav">
				<li class="nav-item"><a href="cdug/index" class="nav-item-link" id="index">首页</a></li>
				<li class="nav-item"><a href="cdug/news" class="nav-item-link">新闻</a></li>
				<li class="nav-item"><a href="#" class="nav-item-link">会议</a></li>
				<li class="nav-item"><a href="cdug/experts" class="nav-item-link">专家</a></li>
				<li class="nav-item"><a href="cdug/resources" class="nav-item-link">资料</a></li>
				<li class="nav-item"><a href="cdug/signup" class="nav-item-link">报名</a></li>
			</ul>
		</div>
	</div>
	<div class="banner"
		style="overflow: hidden;  width: 100%; height: 415px;">
		<ul class="unstyled">
			<li style="background-image: url('assets/unslider/img/sunset.jpg');">
				<div class="inner">
					<h1>CDUG会议 2013</h1>
					<p>同济大学软件学院承办</p>

					<a class="button" href="cdug_signup.html">报名</a>
				</div>
			</li>

			<li style="background-image: url('assets/unslider/img/wood.jpg');">
				<div class="inner">
					<h1>CDUG会议 2013</h1>
					<p>同济大学软件学院承办</p>

					<a class="button" href="#">Download</a>
				</div>
			</li>
			<li style="background-image: url('assets/unslider/img/subway.jpg');">
				<div class="inner">
					<h1>CDUG会议 2013</h1>
					<p>同济大学软件学院承办</p>

					<a class="button" href="#">参与</a>
				</div>
			</li>

			<li style="background-image: url('assets/unslider/img/shop.jpg');">
				<div class="inner">
					<h1>CDUG会议 2013</h1>
					<p>同济大学软件学院承办</p>

					<a class="button" href="#">下载</a>
				</div>
			</li>
		</ul>
	</div>
	<div class="features">
		<ul class="wrap">
			<li class="browser"> <b>CDUG是什么</b>
				<p>
					Unslider’s been tested in all the latest browsers, and it
					falls back magnificently for the not-so-latest ones.
				</p>
			</li>

			<li class="keyboard"> <b>我们是谁</b>
				<p>
					If you want to, you can add keyboard arrow support. Try it:
					hit left and right arrow keys.
				</p>
			</li>

			<li class="height">
				<b>CDUG会议</b>
				<p>
					Not all slides are created equal, and Unslider knows it.
					It’ll stylishly transition heights with no extra code.
				</p>
			</li>

			<li class="responsive">
				<b>加入我们的团队</b>
				<p>
					You’ll be hard pressed to find a site that’s not responsive
					these days. Unslider’s got your back.
				</p>
			</li>
		</ul>
	</div>

	<div class="footer">
		<div class="footer-headline"></div>
		<div id="footer-bg">
			<div id="footer-inner">
				<div class="inner-block first">
					<h4>关于我们</h4>
					<div class="inner-con">好基友开发团队，只有更好，没有最好！</div>
				</div>
				<div class="inner-block">
					<h4>开发团队</h4>
					<div class="inner-con designer-recom">
						<a href="mailto:saaspower@saapower.com" target="_blank">saaspower@saaspower.com</a>
					</div>
				</div>
				<div class="inner-block" style="padding-right:0;padding-left:20px;">
					<ul>
						<h4>友情链接</h4>
						<ul class='xoxo blogroll'>
							<li>
								<a href="http://www.tongji.edu.cn/" target="_blank">同济大学官网</a>
							</li>
							<li>
								<a href="http://sse.tongji.edu.cn/" target="_blank">同济大学软件学院</a>
							</li>
							<li>
								<a href="#" target="_blank">同济大学IBM技术中心</a>
							</li>

						</ul>
					</ul>
				</div>
				<div class="inner-block last">
					<h4>联系我们</h4>
					<div class="inner-con">
						<div class="liaosheji-katong">
							<a href="#" target="_blank">邮箱/微博/电话</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />
	<script type="text/javascript" src="assets/unslider/js/unslider.js"></script>

	<script>
		!function($) {
			$(function() {
				$('#signin').modal('hide')
			})
		}(window.jQuery)

		if(window.chrome) {
			$('.banner li').css('background-size', '100% 100%');
		}

		$('.banner').unslider({
			arrows: false,
			fluid: true,
			dots: true
		});
	</script>
</body>
</html>