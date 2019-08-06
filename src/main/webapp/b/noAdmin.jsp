<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/29
  Time: 10:35
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
    <title>Title</title>
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<script>
    alert("对不起！您还未登录，不能操作哦~~~");
</script>
<div class="container">
    <div class="row">
        <div class="card clearfix col-sm-6 col-sm-offset-2">
            <div class="card-header">
                <h2 class="card-title">User info</h2>
            </div>
            <div class="card-body">
                <div class="row profile-user-info">
                    <div class="table-responsive border ">
                        <table style="" class="table row table-borderless">
                            <tbody style="left: 120px;" class="col-xs-6">
                            <tr style="width: 500px;position: center;">
                                <td>
                                    <a style="width: 300px;" type="button" href="b/login.jsp"
                                       class="btn btn-success">去登录</a>
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
</body>
</html>
