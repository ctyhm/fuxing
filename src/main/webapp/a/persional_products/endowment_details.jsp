<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/22
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>养老险-养老险</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="../skin/css/pintuer.css" type="text/css" rel="stylesheet"/>
    <link href="../skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="../skin/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../skin/js/touchslide.1.1.js"></script>
    <script type="text/javascript" src="../skin/js/common.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="../skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../skin/js/wow.min.js"></script>
    <!--<![endif]-->

</head>
<body>
<!--头部开始-->
<jsp:include page="head.jsp"></jsp:include>

<div class="clear"></div>
<div id="banner"><img src='../skin/images/a.jpg' width='1920' height='300' alt=""></div>
<div class="clear"></div>
<!--内容区开始-->
<div class="main">
    <div class="container">
        <div class="main_top"><span>当前位置：</span>
            <ul>
                <li><a href='../Home.jsp'>主页</a> > <a href='home.jsp'>个险产品</a> ><a href='endowment.jsp'>养老险</a></li>
            </ul>
            <div class="span2"></div>
        </div>
        <div id="left">
            <div class="left_list">
                <div class="left_con">
                    <div class="type_list">
                        <ul>
                            <li class="first_cat"><a href='wealth.jsp' title='财富'>财富险</a></li>
                            <li class="first_cat"><a class="current" href='endowment.jsp' title='养老'>养老险</a></li>
                            <li class="first_cat"><a href='health.jsp' title='健康'>健康险</a></li>
                            <li class="first_cat"><a href='accident.jsp' title='意外'>意外险</a></li>
                            <li class="first_cat"><a href='travel.jsp' title='旅游'>旅游险</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="right">
            <div id="right_con">
                <div class="row">
                    <div class="productTitle">颐养天年险</div>
                    <div class="title"><span>详细信息</span></div>
                    <div class="productDesc">
                        <fieldset>
                            <legend style="COLOR: #e50022; font-size:15px; font-weight:800;">福星颐养天年养老险</legend>
                            <div style="text-align: center">

                                <img src="../skin/images/endowment1.jpg" alt=""/>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--内容区结束-->
<jsp:include page="foot.jsp"></jsp:include>

<!--版权区结束-->
</body>
</html>
