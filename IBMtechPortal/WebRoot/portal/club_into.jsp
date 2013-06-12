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
    <title>学生俱乐部 - 俱乐部介绍</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">

    <s:include value="../include/portal_links.jsp" />
    <link rel="stylesheet" type="text/css" href="assets/tn3album/skins/tn3/tn3.css">
</head>

<body class="main" marginwidth="0" marginheight="0">
    <s:include value="../layout/portal_header.jsp" />

    <div class="container" id="main-cont">
    	<s:include value="../layout/portal_club_sider.jsp" />    
    	<div id="contents">
    		<div class="h3-location">
    			<h2 id="c-title">俱乐部介绍</h2>
    			<img src="assets/img/teaching/img_text.gif" alt="分割线">
    		</div>
    		<div class="c-content">
	    		<img src="assets/img/teaching/img_1.png" height="230" width="740">
	    		<%=((Portal_info)request.getAttribute("info")).getContent() %>
    		</div>
    		<div class="intro-gallery">
    			<div class="tn3 album">
    				<h4>Fixed Dimensions</h4>
    				<div class="tn3 description">Images with fixed dimensions</div>
    				<div class="tn3 thumb">assets/tn3album/images/35x35/1.jpg</div>
    				<ol>
    					<li>
    						<h4>Hohensalzburg Castle</h4>
    						<div class="tn3 description">Salzburg, Austria</div>
    						<a
							href="assets/tn3album/images/620x378/1.jpg">
    							<img
								src="assets/tn3album/images/35x35/1.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Isolated sandy cove</h4>
    						<div class="tn3 description">Zakynthos island, Greece</div>
    						<a
							href="assets/tn3album/images/620x378/2.jpg">
    							<img
								src="assets/tn3album/images/35x35/2.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>A view from the Old Town</h4>
    						<div class="tn3 description">Herceg Novi, Montenegro</div>
    						<a
							href="assets/tn3album/images/620x378/3.jpg">
    							<img
								src="assets/tn3album/images/35x35/3.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Walls of the Old Town</h4>
    						<div class="tn3 description">Kotor, Montenegro</div>
    						<a
							href="assets/tn3album/images/620x378/4.jpg">
    							<img
								src="assets/tn3album/images/35x35/4.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Boat in the port</h4>
    						<div class="tn3 description">Sousse, Tunis</div>
    						<a
							href="assets/tn3album/images/620x378/5.jpg">
    							<img
								src="assets/tn3album/images/35x35/5.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Wall of the Jain temple</h4>
    						<div class="tn3 description">Jaisalmer, India</div>
    						<a
							href="assets/tn3album/images/620x378/6.jpg">
    							<img
								src="assets/tn3album/images/35x35/6.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>City park</h4>
    						<div class="tn3 description">Negotin, Serbia</div>
    						<a
							href="assets/tn3album/images/620x378/7.jpg">
    							<img
								src="assets/tn3album/images/35x35/7.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Taj Mahal mausoleum</h4>
    						<div class="tn3 description">Agra, India</div>
    						<a
							href="assets/tn3album/images/620x378/8.jpg">
    							<img
								src="assets/tn3album/images/35x35/8.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Zante Port</h4>
    						<div class="tn3 description">Zakynthos, Greece</div>
    						<a
							href="assets/tn3album/images/620x378/9.jpg">
    							<img
								src="assets/tn3album/images/35x35/9.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Rustovo Monastery</h4>
    						<div class="tn3 description">Budva, Montenegro</div>
    						<a
							href="assets/tn3album/images/620x378/10.jpg">
    							<img
								src="assets/tn3album/images/35x35/10.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>The Mezquita, Cathedral and former Great Mosque</h4>
    						<div class="tn3 description">Cordoba, Spain</div>
    						<a
							href="assets/tn3album/images/620x378/11.jpg">
    							<img
								src="assets/tn3album/images/35x35/11.jpg" />    
    						</a>
    					</li>
    					<li>
    						<h4>Wine Cellars</h4>
    						<div class="tn3 description">Rajac, Serbia</div>
    						<a
							href="assets/tn3album/images/620x378/12.jpg">
    							<img
								src="assets/tn3album/images/35x35/12.jpg" />    
    						</a>
    					</li>
    				</ol>
    			</div>
    		</div>
    	</div>
    </div>

    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="assets/tn3album/js/jquery.tn3lite.min.js"></script>
		<script type="text/javascript">
        !function($) {
            $(function() {
                iTopbar("top-club");
                iSidebar("intro");
                
                var introAlbum = $('.intro-gallery').tn3({
					skinDir:"assets/tn3album/skins",
					skin: "tn3e",
					delay: 3000,
					autoplay: true,
					imageClick:"fullscreen",
					image:{
						maxZoom:1.5,
						crop:true,
						clickEvent:"dblclick",
						transitions:[{
							type:"blinds"
							},{
							type:"grid"
							},{
							type:"grid",
							duration:460,
							easing:"easeInQuad",
							gridX:1,
							gridY:8,
							// flat, diagonal, circle, random
							sort:"random",
							sortReverse:false,
							diagonalStart:"bl",
							// fade, scale
							method:"scale",
							partDuration:360,
							partEasing:"easeOutSine",
							partDirection:"left"
						}]
					}
				});
				$('.tn3-gallery div:last').remove();
            })
        }(window.jQuery)
    </script>
</body>
</html>