<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019\5\18 0018
  Time: 13:00
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
    <title>福星寿险</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="order by" />
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
    <link href="a/skin/css/pintuer.css" type="text/css" rel="stylesheet" />
    <link href="a/skin/css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/jquery.superslide.2.1.1.js"></script>
    <script type="text/javascript" src="a/skin/js/jquery.caroufredsel.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="a/skin/js/touchslide.1.1.js"></script>
    <script type="text/javascript" src="a/skin/js/common.js"></script>
    <script type="text/javascript" src="a/skin/js/flash.js"></script>
    <script type="text/javascript" src="a/skin/js/ckplayer.js" charset="utf-8"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="a/skin/css/animate.min.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="a/skin/js/wow.min.js"></script>
    <!--<![endif]-->
</head>
<body>
<div id="toolbar">
    <ul>
        <li class="toolbar_item">
            <a class="t_item t2" href="javascript:void(0);">
                <i></i>
            </a>
            <div class="tool_qq">
                <div id="qq_top"></div>
                <div class="tool_qq_con">
                    <div class="tool_tel">
                        <h3>客户服务热线</h3>
                        <h4>0000-888 8888</h4>
                    </div>
                </div>
            </div>
        </li>
        <li class="toolbar_item">
            <a class="t_item t4" href="javascript:void(0);">
                <i></i>
            </a>
            <div class="tool_weixin">
                <div class="t_wx_con">
                    <img src='a/skin/images/erweima.png' width='100' height='100' alt=''>
                    <br/>
                    扫码关注我们
                </div>
            </div>
        </li>
        <li class="toolbar_item" id="gotop">
            <a class="t_item t5" href="javascript:void(0);">
                <i></i>
            </a>
        </li>
    </ul>
</div>
</body>
</html>
