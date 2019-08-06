<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
  <head>
	  <base href="<%=basePath%>">
		<meta charset="UTF-8">

		<link rel="icon" href="favicon.ico" type="image/x-icon">
		<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

		<!-- Title -->
		<title>福星核心-登录</title>
		<link rel="stylesheet" href="b/assets/fonts/fonts/font-awesome.min.css">

		<!-- Font Family -->
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
		
		<!-- Sidemenu Css -->
		<link href="b/assets/plugins/fullside-menu/css/style.css" rel="stylesheet">
		<link href="b/assets/plugins/fullside-menu/waves.min.css" rel="stylesheet">

		<!-- Dashboard Css -->
		<link href="b/assets/css/dashboard.css" rel="stylesheet">
		
		<!-- c3.js Charts Plugin -->
		<link href="b/assets/plugins/charts-c3/c3-chart.css" rel="stylesheet">

		<!-- Custom scroll bar css-->
		<link href="b/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet">

		<!---Font icons-->
		<link href="b/assets/css/icons.css" rel="stylesheet">

  </head>
	<body>
		<div class="login-img">
			<div id="global-loader"></div>
			<div class="page">
				<div class="page-single">
					<div class="container">
						<div class="row authentication">
							<div class="col col-login mx-auto">
								<div class="text-center mb-6">
									<img src="b/assets/images/brand/logo.png" class="h-8" alt="">
								</div>
								<s:form class="card" action="Admin_login.action" method="post">
									<div class="card-body p-6 ">
										<div class="card-title text-center">Login to your Account</div>
										<div class="input-icon form-group wrap-input">
											<span class="input-icon-addon search-icon">
												<i class="mdi mdi-account"></i>
											</span>
											<input type="text" class="form-control" name="username" id="username" placeholder="Username">
										</div>
										<div class="input-icon form-group wrap-input">
											<span class="input-icon-addon search-icon">
												<i class="zmdi zmdi-lock"></i>
											</span>
											<input type="password" class="form-control mb-0" name="password" id="password" placeholder="Password">
										</div>
										<div class="form-group mt-5">
											<label class="custom-control custom-radio" >
												<input type="radio" name="iden" value="管理员" checked>管理员
												<input type="radio" name="iden" value="业务员">业务员
											</label>
											<label style="color: red">
												<%if(request.getAttribute("msg")!=null){%>
												<%=request.getAttribute("msg")%>
												<% }%>
											</label>
										</div>
										<div class="form-footer">
											<button type="submit" id="signin" class="btn btn-primary btn-block">登录</button>
										</div>
									</div>
								</s:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Dashboard js -->
		<script src="b/assets/js/vendors/jquery-3.2.1.min.js"></script>
		<script src="b/assets/js/vendors/bootstrap.bundle.min.js"></script>
		<script src="b/assets/js/vendors/jquery.sparkline.min.js"></script>
		<script src="b/assets/js/vendors/selectize.min.js"></script>
		<script src="b/assets/js/vendors/jquery.tablesorter.min.js"></script>
		<script src="b/assets/js/vendors/circle-progress.min.js"></script>
		<script src="b/assets/plugins/rating/jquery.rating-stars.js"></script>
		
		<!-- Fullside-menu Js-->
		<script src="b/assets/plugins/fullside-menu/jquery.slimscroll.min.js"></script>
		<script src="b/assets/plugins/fullside-menu/waves.min.js"></script>
		
		<!-- Custom scroll bar Js-->
		<script src="b/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

		<!-- Custom Js-->
		<script src="b/assets/js/custom.js"></script>
	</body>
</html>
