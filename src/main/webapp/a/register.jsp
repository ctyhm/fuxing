<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>福星寿险-注册</title>
    <!-- Dashboard Css -->
    <link href="a/skin/css/dashboard.css" rel="stylesheet">
    <!---Font icons-->
    <link href="b/assets/css/icons.css" rel="stylesheet">
    <link href="a/skin/css/bootstrap.min.css">
</head>
<body>
<!--头部开始-->

<div class="login-img">
    <div id="global-loader"></div>
    <div class="page">
        <div class="page-single">
            <div class="container">
                <div class="row">
                    <div class="col col-login mx-auto">
                        <div class="text-center mb-6">
                            <img src="a/skin/images/logo.jpg" class="h-8" alt="">
                        </div>
                        <s:form class="card authentication" action="User_register" method="post" namespace="/" theme="simple">
                            <div class="card-body sign-up-page p-7">
                                <div class="card-title text-center">个人用户注册</div>
                                <label style="color: red;">
                                    <%if(request.getAttribute("idmsg")!=null){%>
                                    <%=request.getAttribute("idmsg")%>
                                    <% }%>
                                </label>
                                <div class="input-icon form-group">
											<span class="input-icon-addon search-icon">
												<i class="glyphicon glyphicon-phone"></i>
											</span>
                                    <input type="text" name="regi.userid" class="form-control" placeholder="phone or email">
                                </div>

                                <div class="input-icon form-group">
											<span class="input-icon-addon search-icon">
												<i class="glyphicon glyphicon-user"></i>
											</span>
                                    <input type="text" name="regi.uname" class="form-control" placeholder="Username">
                                </div>

                                <div class="input-icon form-group">
											<span class="input-icon-addon search-icon">
												<i class="glyphicon glyphicon-phone-alt"></i>
											</span>
                                    <input type="text" name="regi.phone" class="form-control" placeholder="Phone">
                                </div>

                                <div class="input-icon form-group">
											<span class="input-icon-addon search-icon">
												<i class="glyphicon glyphicon-envelope"></i>
											</span>
                                    <input type="text" name="regi.email" class="form-control" placeholder="Email">
                                </div>

                                <div class="input-icon form-group">
											<span class="input-icon-addon search-icon">
												<i class="glyphicon glyphicon-lock"></i>
											</span>
                                    <input type="password" name="regi.password" class="form-control mb-0" id="exampleInputPassword1"
                                           placeholder="Password">
                                </div>
                                <div class="form-group mt-5">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input">
                                        <span class="custom-control-label">我同意 <a href="policy.jsp">《福星寿险服务协议》</a></span>
                                    </label>
                                </div>
                                <div class="form-footer">
                                    <button type="submit" class="btn btn-primary btn-block">Create new account</button>
                                </div>
                                <div class="text-center text-muted mt-4">
                                    Already have account? <a href="a/login.jsp">Sign in</a>
                                </div>
                            </div>

                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="skin/js/bootstrap.min.js"></script>
<script src="skin/js/jquery.min.js"></script>
</body>
</html>