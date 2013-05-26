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
	<title>报名|CDUG</title>

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
		<div class="signup-wrapper">
			<div class="row" id="s-title">
				<h1>填写报名表</h1>
				<p class="s-byline">请尽量填写您的真实资料</p>
			</div>
			<div class="signup-form">
				<form class="form-horizontal" id="signupForm" method="post" action="cdug/user/signup">
					<div class="sform-inner">
						<span class="btn-controls">
							<button type="button" class="btn btn-mini" id="removeForm"> <i class="icon-minus"></i>
							</button>
							<button type="button" class="btn btn-mini" id="showForm_0"> <i class="icon-chevron-down" id="showFormIcon_0"></i>
							</button> <strong id="displayName_0">正在填写...</strong>
						</span>
						<div class="row s-inputfield" id="signupFormDiv_0">
							<div class="control-group pull-left">
								<label class="control-label s-leftlabel" for="inputName">姓名</label>
								<div class="controls s-leftcontrol">
									<input type="text" id="inputName_0" name="name" placeholder="姓名...">
									<span>
										<i class="" id="icon-name-0"></i>
									</span>
									<span>
										<small id="tip-name-0"></small>
									</span>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-rightlabel" for="inputGender">性别</label>
								<div class="controls s-rightcontrol">
									<div class="btn-group" id="inputGender"
											data-toggle="buttons-radio">
										<button type="button" class="btn btn-primary">男</button>
										<button type="button" class="btn btn-primary">女</button>
									</div>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-leftlabel" for="inputMobile_0">手机</label>
								<div class="controls s-leftcontrol" id="0">
									<input type="text" class="inputMobile" id="inputMobile_0" name="phone" placeholder="手机...">
									<span>
										<i class="" id="icon-mobile-0"></i>
									</span>
									<span>
										<small id="tip-mobile-0"></small>
									</span>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-rightlabel" for="inputEmail_0">Email</label>
								<div class="controls s-rightcontrol" id="0">
									<input type="text" class="inputEmail" id="inputEmail_0" name="email" placeholder="邮箱...">
									<span>
										<i class="" id="icon-email-0"></i>
									</span>
									<span>
										<small id="tip-email-0"></small>
									</span>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-leftlabel" for="inputWorkdep_0">工作单位</label>
								<div class="controls s-leftcontrol" id="0">
									<input type="text" class="inputWorkdep" id="inputWorkdep_0" name="company" placeholder="工作单位...">
									<span>
										<i class="" id="icon-company-0"></i>
									</span>
									<span>
										<small id="tip-company-0"></small>
									</span>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-rightlabel" for="inputPostcode_0">邮编</label>
								<div class="controls s-rightcontrol" id="0">
									<input type="text" class="inputPostcode" id="inputPostcode_0" name="com_postCode" placeholder="邮编...">
									<span>
										<i class="" id="icon-postcode-0"></i>
									</span>
									<span>
										<small id="tip-postcode-0"></small>
									</span>
								</div>
							</div>
							<div class="control-group pull-left">
								<label class="control-label s-singlelabel" for="inputAddress_0">地址</label>
								<div class="controls s-singlecontrol" id="0">
									<input type="text" class="input-xlarge inputAddress" id="inputAddress_0" name="com_address"
											placeholder="地址...">
									<i class="" id="icon-address-0"></i>
									<span>
										<small id="tip-address-0"></small>
									</span>
								</div>
							</div>
						</div>
					</div>
					<div class="s-addform" id="addForm">
						<a href="javascript:void(0)" id="addFormBtn" class="btn btn-mini">
							<i class="icon-plus"></i>
						</a>
					</div>
					<div class="sf-submit">
						<button type="submit" class="btn btn-primary" id="submitFormBtn">提交</button>
						<button type="reset" class="btn btn-warning">重置</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<footer>
		<p style="margin-left: 600px; margin-top: 50px;">© 2013 同济大学软件学院.</p>
	</footer>

	<s:include value="../layout/logon_modal.jsp" />
	<s:include value="../include/cdug_scripts.jsp" />
	<script type="text/javascript" src="assets/stylesheets/js/signup.js" charset="utf-8"></script>

	<script>
		!function($) {
			$(function() {
				$('#signin').modal('hide')
				$('#inputGender').button()
			})
		}(window.jQuery)
	</script>

</body>
</html>