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
        <div id="lnb">
            <h2>
                <img src="assets/img/teaching/research_head.png" alt="科研"></h2>
            <span class="lnb-vs">
                <img src="assets/img/teaching/lnb_visual02.png" alt="IBM信息门户"></span>
            <ul class="m-lnb">
                <li class="first">
                    <a href="research_contest_project.html" >
                        <img src="assets/img/teaching/lnb_n01_on.gif" alt="创新项目"></a>
                </li>
                <li class="">
                    <a href="research_inresearch_project.html">
                        <img src="assets/img/teaching/lnb_n02_off.gif" alt="在研项目"></a>
                </li>
            </ul>
        </div>
        <div id="contents">
            <div class="h3-location">
                <h2>创新项目</h2>
                <img src="assets/img/teaching/img_text.gif" alt="分割线"></div>
            <div class="message">
                <img src="assets/img/teaching/img_1.png"  height="230" width="740"></div>
            <div class="commitment">
                <h4 class="ctit">
                    <img src="assets/img/teaching/h4_educatinal.gif" alt="教育目的"></h4>
                <p class="txt-type3">
                    反映时代的家，寄托梦想的建筑! 人类的各种建筑物就好像是那个时代的历史和文化的象征塔。因此，理解人类的文化、创出新的建筑文化不能不意味着是主导一个时代、敞开下一个时代的大事。特别是科学技术的进步，加上现代建筑取得了耀眼的发展，建筑物的需求得到急剧的增加。
                    <br>    
                    为了迎合这种趋势，通过对有关建筑学科的专业性知识和试验、实习获得技术，理解现代建筑，为创造新的建筑技术和建筑发展贡献力量，特别是现代建筑已经被认为是确保有效、合理的居住空间的必须课题。建筑系在提醒人类居住文化的意义的同时，要培育将从事于计划、设计、施工、设备、行政领域的各种建筑业务中的骨干技术人才。
                </p>
                <h4 class="ctit2">
                    <img src="assets/img/teaching/h4_character.gif" alt="学科特征"></h4>
                <p class="txt-type3">
                    建筑系的目标是培育21世纪知识-信息化社会所需要的具有知识和技术的、在急剧变化的建设产业领域中能够起到领先作用的建筑领域的专业职业人才。因此，我们学科编制、运营了现场实物型的体系性教育课程和为信息化的多种多样的教科课程。另外，通过建立专业兴趣小组和作品展览等强化彻底的指导教授制和程序式实习，提高学习能力。
                </p>
                <h4 class="ctit2">
                    <img src="assets/img/teaching/h4_edupolicy.gif" alt="学科特征"></h4>
                <p class="txt-type3">培育能够适应产业现场的骨干技术人才</p>
            </div>
        </div>
    </div>
    <s:include value="../layout/portal_footer.jsp" />
    <s:include value="../include/portal_scripts.jsp" />
</body>
</html>