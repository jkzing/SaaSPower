<%@page import="edu.tongji.sse.ibm.pojo.CDUG_res"%>
<%@page import="edu.tongji.sse.ibm.dao.CDUG_resDAO"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML>
<html>
<head>
	<base href="<%=basePath%>
	">
	<title>资源 | CDUG</title>

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
		<div class="resource-wrapper">
			<div class="row" id="r-title">
				<h1>CDUG相关资源</h1>
				<p class="r-byline">这是与我们CDUG有关的资料库</p>
			</div>
			<div class="r-tab">
				<ul class="nav nav-tabs" id="categoryTab">
					<li class="active">
						<a href="#r-all" data-toggle="tab">全部</a>
					</li>
					<li>
						<a href="#r-lecture" data-toggle="tab">演讲资料</a>
					</li>
					<li>
						<a href="#r-other" data-toggle="tab">其他</a>
					</li>
				</ul>
			</div>
			<div class="tab-content">
				<div class="tab-pane active" id="r-all">
					<div class="row-fluid resource-table">
						<div id="rcategory-title">
							全部资源
						</div>
						<table class="table table-hover table-bordered">
							<tbody>
							<%
								List<CDUG_res> allResources =  CDUG_resDAO.getResList();
								CDUG_res _resA = new CDUG_res();
							  	Iterator<CDUG_res> _itA = allResources.iterator();
							  		while(_itA.hasNext()){
							  		_resA = _itA.next();
							%>
								<tr>
									<td class="span4"><strong><%=_resA.getName() %></strong></td>
									<td class="span7"><%=_resA.getProfile() %></td>
									<td class="span2"><a href="<%=_resA.getURL() %>" class="btn btn-mini btn-warning">DOWNLOAD</a></td>
								</tr>
							<%
								}
							%>
							</tbody>
						</table>
					</div>
					<div class="pagination r-pagination">
						<ul>
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
				<div class="tab-pane" id="r-lecture">
					<div class="row-fluid resource-table">
						<div id="rcategory-title">
							演讲资料	
						</div>
						<table class="table table-hover table-bordered">
							<tbody>
							<%
								List<CDUG_res> lectureResources =  CDUG_resDAO.getResList();
								CDUG_res _resL = new CDUG_res();
							  	Iterator<CDUG_res> _itL = lectureResources.iterator();
							  		while(_itL.hasNext()){
							  		_resL = _itL.next();
							%>
								<tr>
									<td class="span4"><strong><%=_resL.getName() %></strong></td>
									<td class="span7"><%=_resL.getProfile() %></td>
									<td class="span2"><a href="<%=_resL.getURL() %>" class="btn btn-mini btn-warning">DOWNLOAD</a></td>
								</tr>
							<%
								}
							%>
							</tbody>
						</table>
					</div>
					<div class="pagination r-pagination">
						<ul>
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
				<div class="tab-pane" id="r-other">
					<div class="row-fluid resource-table">
						<div id="rcategory-title">
							其他资源
						</div>
						<table class="table table-hover table-bordered">
							<tbody>
							<%
								List<CDUG_res> otherResources =  CDUG_resDAO.getResList();
								CDUG_res _resO = new CDUG_res();
							  	Iterator<CDUG_res> _itO = otherResources.iterator();
							  		while(_itO.hasNext()){
							  		_resO = _itO.next();
							%>
								<tr>
									<td class="span4"><strong><%=_resO.getName() %></strong></td>
									<td class="span7"><%=_resO.getProfile() %></td>
									<td class="span2"><a href="<%=_resO.getURL() %>" class="btn btn-mini btn-warning">DOWNLOAD</a></td>
								</tr>
							<%
								}
							%>
							</tbody>
						</table>
					</div>
					<div class="pagination r-pagination">
						<ul>
							<li><a href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />

	<script>
		!function($) {
			$(function() {
				$('#categoryTab a:first').tab('show');
				$('#signin').modal('hide');
			})
		}(window.jQuery)
	</script>
</body>
	</html>