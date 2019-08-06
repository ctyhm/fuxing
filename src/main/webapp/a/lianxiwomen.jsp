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
    <title>联系我们_我的网站</title>
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
<!--头部开始-->
<jsp:include page="Head.jsp"></jsp:include>

<div class="clear"></div>
<div id="banner"><img src="a/skin/images/a.jpg"/></div>
<div class="clear"></div>
<!--内容区开始-->
<div class="main">
    <div class="container">
        <div class="main_top"><span>当前位置：</span>
            <ul>
                <li><a href='a/Home.jsp'>主页</a> > <a href='a/lianxiwomen.jsp'>联系我们</a></li>
            </ul>
        </div>

        <div id="left">
        </div>

        <div id="right">
            <div id="right_top">
                <h3><a href=''>联系我们</a></h3>
            </div>
            <div id="right_con">
                <p style="text-align: center;">
                    公司：福星寿险股份有限公司
                </p>
                <p style="text-align: center;">
                    地址：北京市东城区东中街29号东环广场B座8层
                </p>
                <p style="text-align: center;">
                    电话：0000-888 8888
                </p>
                <p style="text-align: center;">
                    传真：0000-888 8889
                </p>
                <div style="text-align: center;">
                    邮箱：88889999@fuxing.com.cn
                </div>
                <p style="text-align: center;">
                    微信号：fuxing</p>
                <p style="text-align: center;">
                    Q Q：88889999</p>
            </div>
        </div>
    </div>
</div>
<!--内容区结束-->
<div class="clear"></div>
<!-- 质量保证 start -->
<jsp:include page="quality.jsp"></jsp:include>
<!-- 质量保证 end -->
<div class="clear"></div>
<jsp:include page="Foot.jsp"></jsp:include>
<jsp:include page="Toolbar.jsp"></jsp:include>

<!--版权区结束-->
</body>
</html>
