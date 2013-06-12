<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新闻页面</title>
    
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
			<div class="h3-location">
				<div id="news-title">同济大学荣获2012年度教育部-IBM高校合作项目“最佳创新合作伙伴奖”2013-05-06</div>
				<img src="assets/img/teaching/img_text.gif" alt="分割线">
			</div>
			<div class="commitment">
				<div>2013年4月25至26日，主题为“变革与创新”的2013年度教育部-IBM高校合作项目年会在山东大学举行。教育部国际合作与交流司、高教司及国家留学基金委领导、IBM公司高管、IBM院士和资深专家、IBM大学合作项目负责人以及来自全国60多所高校的校、院领导与代表等200多人出席本届年会。
本届年会上，同济大学软件学院教师代表分别在“面向行业的校企合作人才培养”、“国际化合作”两个圆桌论坛上与嘉宾们共同交流了经验和做法，获得好评。
同济大学软件学院与IBM的合作已逾10年且卓有成效。尤其在主机实践教育领域，依托“同济大学IBM技术中心”和“同济大学- IBM国家级工程实践教育中心”平台，校企共同开展主机人才培养实践。目前，学院已先后开设10门“教育部-IBM精品课程”，选修这些技术课程的学生数达到400人次/年，年均有数十位学生在主机及相关岗位实习或就业。2006年以来，同济大学多次在IBM大型主机技术全国应用大赛中取得过不俗的成绩，曾经连续两年摘得全国桂冠。
鉴于同济大学软件学院的良好业绩，在本届年会上，我校荣获“2012年度教育部-IBM高校合作项目最佳创新合作伙伴奖”。黄杰老师荣获“2012年教育部—IBM高校合作项目优秀教师奖”。
				</div>
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
