<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/21
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
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
    <!-- Title -->
    <title>福星寿险-登录</title>
    <!-- Dashboard Css -->
    <link href="a/skin/css/dashboard.css" rel="stylesheet">
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
                        <s:form class="card" action="User_login" method="post" namespace="/" theme="simple">
                            <div class="card-body p-6 ">
                                <div class="card-title text-center">Login to your Account</div>
                                <div class="input-icon form-group wrap-input">
											<span class="input-icon-addon search-icon">
												<i class="mdi mdi-account"></i>
											</span>
                                    <input type="text" name="uid" class="form-control" placeholder="Username">
                                </div>

                                <div class="input-icon form-group wrap-input">
											<span class="input-icon-addon search-icon">
												<i class="zmdi zmdi-lock"></i>
											</span>
                                    <input type="password" name="pwd" class="form-control mb-0" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="radio mb-3 form-group wrap-input">
                                    <label>角色：</label>
                                    <label class="radio-inline">
                                        <input type="radio" name="role" value="1" checked="checked">个人
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="role" value="2">团体
                                    </label>
                                    <label style="color: red">
                                        <%if(request.getAttribute("msg")!=null){%>
                                        <%=request.getAttribute("msg")%>
                                        <% }%>
                                    </label>
                                </div>

                                <div class="form-group mt-5">
                                    <label class="custom-control custom-checkbox">
                                        <input type="checkbox" class="custom-control-input">
                                        <span class="custom-control-label">Remember me</span>
                                    </label>
                                </div>
                                <div class="form-footer">
                                    <button type="submit" class="btn btn-primary btn-block">Sign in</button>
                                </div>
                                <div class="text-center text-muted mt-3">
                                    Don't have account yet? <a href="a/register.jsp">Sign up</a>
                                </div>
                            </div>
                        </s:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>