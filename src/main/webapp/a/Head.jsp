<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019\5\18 0018
  Time: 12:38
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
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="a/skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="a/skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/wow.min.js"></script>
</head>
<body>
<!--头部开始-->

<header id="header">
    <div id="top">
        <div class="container">
            <div class="top_left"> <span>欢迎致电：0000-0000 0000</span> <span>服务时间：9:00-17:00(工作日)</span> </div>
            <div class="top_right">
                <%if(session.getAttribute("uname")!=null){%>
                <span class="span1">欢迎<%=session.getAttribute("uname")%></span>
                <a href="User_logout.action">退出</a>
                <%}else{%>
                <div class="btn-group">
                    <a style="border: none;" href="a/login.jsp" class="btn">登录</a>
                    <a style="border: none;" class="btn dropdown-toggle" data-toggle="dropdown" >
                        注册
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="a/register.jsp">个人用户注册</a></li>
                        <li><a href="a/registerGrp.jsp">团体用户注册</a></li>
                    </ul>
                </div>
                <%}%>
                <span class="span1">微信公众号
                    <div class="span2 wow bounceInDown">
                        <img src="a/skin/images/erweima.png" alt="图片无法显示" height="100" width="100"/>
                    </div>
                </span>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="container">
        <div id="logo"><a href="a/Home.jsp" title="我的网站"><img src="a/skin/images/logo.jpg" alt="我的网站" /></a></div>
        <div id="header_right">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
            <div class="clear"></div>
            <nav id="navigate">
                <ul>
                    <li class="first_menu"><a  class='current'  href='a/Home.jsp'>首页</a></li>
                    <li><a class='' href='a/persional_products/home.jsp'>个险产品</a> </li>
                    <li><a class='' href='a/group_products/home.jsp'>团险产品</a> </li>
                    <li><a class='' href='a/services_pol/home-pol.jsp'>投保服务</a> </li>
                    <li><a class='' href='a/services_self/home.jsp'>自助服务</a> </li>
                    <li><a class='' href='a/zixun_center/home-zx.jsp'>资讯中心</a> </li>
                    <li><a class='' href='a/about_us.jsp'>关于我们</a> </li>
                    <li><a class='' href='a/lianxiwomen.jsp'>联系我们</a> </li>
                </ul>
            </nav>
        </div>
    </div>
</header>


</body>
</html>
