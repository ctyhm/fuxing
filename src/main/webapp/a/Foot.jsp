<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019\5\18 0018
  Time: 12:51
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
<footer id="footer">
    <div class="container">
        <div id="help"> <div class="help_list wow fadeInUp" data-wow-delay="0.2s">
            <div class="help_top">
                <h3>产品中心</h3>
                <span></span></div>
            <ul>
                <li><a href='a/persional_products/health.jsp' title="疾病保障">疾病保障</a></li>
                <li><a href='a/persional_products/travel.jsp' title="寿险保障">交通保障</a></li>
                <li><a href='a/persional_products/endowment.jsp' title="年金养老">年金养老</a></li>
                <li><a href='a/group_products/Women.jsp' title="教育储备">女性健康</a></li>
                <li><a href='a/group_products/Travel.jsp' title="高端医疗">团体出行</a></li>
                <li><a href='a/persional_products/wealth.jsp' title="财富传承">财富年金</a></li>
            </ul>
        </div><div class="help_list wow fadeInUp" data-wow-delay="0.2s">
            <div class="help_top">
                <h3>自助服务</h3>
                <span></span></div>
            <ul>
                <li><a title="保单服务">保单服务</a></li>
                <li><a title="理赔服务">理赔服务</a></li>

                <li><a title="常见问题">常见问题</a></li>

                <li><a title="信息披露">信息披露</a></li>

            </ul>
        </div><div class="help_list wow fadeInUp" data-wow-delay="0.2s">
            <div class="help_top">
                <h3>资讯中心</h3>
                <span></span></div>
            <ul>
                <li><a href='a/zixun_center/hangyexinwen.jsp' title="行业新闻">行业新闻</a></li>
                <li><a href='a/zixun_center/caifuanli.jsp' title="财富案例">财富案例</a></li>
                <li><a href='a/zixun_center/caijingjujiao.jsp' title="财经聚焦">财经聚焦</a></li>
                <li><a href='a/zixun_center/pingtaigonggao.jsp' title="平台公告">平台公告</a></li>
            </ul>
        </div>
            <div class="help_list wow fadeInUp" data-wow-delay="0.8s">
                <div class="help_top">
                    <h3>客户服务</h3>
                    <span></span></div>
                <div class="help_con">全国统一服务热线：0000-888 8888<span></span></div>
            </div>
            <div class="help_list wow fadeInUp" data-wow-delay="1s">
                <div class="wechat"><img src='a/skin/images/201799171354253.jpg' width='205' height='100' alt=''></div>
            </div>
        </div>

        <div id="copy_txt" class="wow fadeInUp">
            <p class="foot-English text-center">Copyright  2019  Fu Xing Insurance(Group) Company. All rights reserved.</p>
            <p class="foot-bq text-center">版权所有 2019福星寿险有限（集团）公司</p>
            <p class="foot-ba text-center"><a style="color:#8e8e8e;" href="#" target="_blank">京ICP备05024145号</a> 京公网安备1104015000150号</p>
        </div>
    </div>
</footer>
</body>
</html>
