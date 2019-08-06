<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/18
  Time: 15:06
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>关于我们_我的网站</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="a/skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="a/skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/wow.min.js"></script>
    <!--<![endif]-->
</head>
<body>
<!-- 质量保证 start -->
<div id="quality" class="wow fadeInUp">
    <div class="container">
        <ul>
            <li class='q1'><a style='background:url(a/skin/images/20178161126509.jpg) no-repeat left center;'>保监会权威认证</a>
            </li>
            <li class='q2'><a style='background:url(a/skin/images/201781611241603.jpg) no-repeat left center;'>保单验真</a>
            </li>
            <li class='q3'><a style='background:url(a/skin/images/201781611318761.jpg) no-repeat left center;'>无忧理赔</a>
            </li>
            <li class='q4'><a style='background:url(a/skin/images/201781611420980.jpg) no-repeat left center;'>专业诚信十年</a>
            </li>
        </ul>
    </div>
</div>
<!-- 质量保证 end -->
</body>
</html>
