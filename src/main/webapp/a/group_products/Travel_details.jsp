<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/22
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>团险旅游险-团险产品</title>
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
                <li><a href='../Home.jsp'>主页</a> > <a href='home.jsp'>个险产品</a> ><a href='Travel.jsp'>意外险</a></li>
            </ul>
            <div class="span2"></div>
        </div>
        <div id="left">
            <div class="left_list">
                <div class="left_con">
                    <div class="type_list">
                        <ul>
                            <li class="first_cat"><a href='Travel.jsp' title='团险意外险'>团险旅游险</a></li>
                            <li class="first_cat"><a href='Women.jsp' title='团险疾病险'>团险疾病险</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="right">
            <div id="right_con">
                <div class="row">
                    <div class="productTitle">团体旅游险</div>
                    <div class="title"><span>详细信息</span></div>
                    <div class="productDesc">
                        <fieldset>
                            <legend style="COLOR: #e50022; font-size:15px; font-weight:800;">畅游神州-参团游A版</legend>
                            <p align=left>您能获得的保障：</p>
                            <p>&emsp;&emsp;1、 意外伤害身故及残疾：旅行期间因意外伤害导致身故，我们将按保险金额进行给付。 </p>
                            <p>&emsp;&emsp;2、 意外伤残保险金：旅行期间因意外导致伤残，我们将按保险金额乘以对应的给付比例进行给付。  </p>
                            <p>&emsp;&emsp;3、意外伤害医疗：旅游期间因意外伤害需在医院进行治疗，我们将按比例补偿您所花费的合理的医疗费用， 但需扣除免赔额且不超过保险金额。 </p>
                            <p>&emsp;&emsp;4、丧葬费：旅行期间因意外伤害身故，我们会按实际支出给付丧葬处理费用、亲属探视费用及遗体遣返费用，以分项保险金额为限。 </p>
                            <p>&emsp;&emsp;<b>温馨提示：“意外伤害”指保险责任范围内的意外伤害事故，“保险金额”“免赔额”“赔付比例”指保单列明的金额或条款约定的比例；详情请以保 单和条款为准。 </b></p>
                            <img src="../skin/images/grp_accident1.PNG" alt=""/>
                            <img src="../skin/images/grp_accident2.PNG" alt=""/>
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
