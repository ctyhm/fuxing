<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/29
  Time: 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <!-- Dashboard Css -->
    <link href="b/assets/css/dashboard.css" rel="stylesheet">
</head>
<body>
<script>
    alert("对不起！您还未登录，不能投保哦~~~");
</script>

<div class="container">
    <div class="row">
        <div class="card clearfix col-sm-6 col-sm-offset-3">
            <div class="card-header">
                <h2 class="card-title">User info</h2>
            </div>
            <div class="card-body">
                <div class="row profile-user-info">
                    <div class="table-responsive border ">
                        <table class="table row table-borderless">
                            <tbody style="height: 200px;left: 120px" class="col-xs-6">
                            <tr style="width: 500px;position: center;">
                                <td>
                                    <a style="width: 300px" type="button" href="a/login.jsp"
                                       class="btn btn-success">去登录</a>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <a style="width: 300px" type="button" href="a/register.jsp"
                                       class="btn btn-primary">个人用户注册</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a style="width: 300px" type="button" href="a/registerGrp.jsp"
                                       class="btn btn-primary">团体用户注册</a>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
<script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
</body>
</html>
