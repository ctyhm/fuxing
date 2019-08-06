<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/22
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>财富险-财富险</title>
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
                <li><a href='../Home.jsp'>主页</a> > <a href='home.jsp'>个险产品</a> ><a href='wealth.jsp'>财富险</a></li>
            </ul>
            <div class="span2"></div>
        </div>
        <div id="left">
            <div class="left_list">
                <div class="left_con">
                    <div class="type_list">
                        <ul>
                            <li class="first_cat"><a class='current' href='wealth.jsp' title='财富'>财富险</a></li>
                            <li class="first_cat"><a href='endowment.jsp' title='养老'>养老险</a></li>
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
                <div class="productTitle">财富年金保险</div>

                <div class="title"><span>详细信息</span></div>
                <div class="productDesc">
                    <fieldset>
                        <legend style="COLOR: #e50022; font-size:15px; font-weight:800;">福星财富年金保险</legend>
                        <h5>保险责任</h5>
                        <p>在本主险合同有效期内，我们承担以下保险责任：</p>
                        <p>（1）年金</p>
                        <p align=left>
                            &emsp;&emsp;自本主险合同的第五个保险单周年日零时（含）起，若被保险人生存，我们将于每个保险单周年日零时给付年金，
                            直至本主险合同的合同期满日前一个保险单周年日零时（含）止。
                        </p>
                        <p align=left>首次给付的年金金额等于本主险合同当时基本保险金额的一定比例,具体金额如下表所示。</p>
                        <div align=center>
                            <table border=0 cellSpacing=0 cellPadding=0 width="94%">
                                <tbody>
                                <tr>
                                    <td width="36%" noWrap>
                                        <p align=center>交费期间</p></td>
                                    <td width="63%" noWrap>
                                        <p align=center>首次给付年金金额</p></td>
                                </tr>
                                <tr>
                                    <td width="36%" noWrap>
                                        <p align=center>3年</p></td>
                                    <td width="63%" noWrap>
                                        <p align=center>当时基本保险金额的百分之十（10%）</p></td>
                                </tr>
                                <tr>
                                    <td width="36%" noWrap>
                                        <p align=center>5年</p></td>
                                    <td width="63%" noWrap>
                                        <p align=center>当时基本保险金额的百分之二十（20%）</p></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <p>
                            &emsp;&emsp;自给付第二次年金时起，每次给付的年金金额为当时基本保险金额的百分之五（5%）与上一次年金金额之和
                            （若本主险合同的基本保险金额在任何相邻两次年金给付之间有所调整，则计算本次给付的年金金额时,
                            上一次年金金额按照调整后水平计算）。
                        </p>
                        <p>（2）身故保险金</p>
                        <p>&emsp;&emsp;若被保险人身故，我们按照本主险合同已交保险费与被保险人身故时本主险合同的现金价值二者中
                            的较大者给付身故保险金，本主险合同效力终止。
                        </p>
                        <p>（3）满期保险金</p>
                        <p>&emsp;&emsp;若被保险人生存至本主险合同的合同期满日二十四时，我们按照本主险合同当时已交保险费的百分
                            之一百一十二（112%）给付满期保险金，本主险合同效力终止。
                        </p>
                        <p>
                            <b>
                                &emsp;&emsp;具体保险责任及未尽事宜以保险合同为准，公司在约定情况下不承担保险责任，请关注条款中的责任免除部分。
                            </b>
                        </p>
                        <h5>投保规则</h5>
                        <p>1、投保年龄：出生满30天（含）至65周岁（含）；</p>
                        <p>2、交费方式：3年、5年；</p>
                        <p>3、保险期间：20年；</p>
                        <p>4、保费要求：投保本险种每份投保单的最低保险费为1万元，超过1万元的保险费必须是1000元的整数倍。 </p>
                        <h4>投保案例：</h4>
                        <img src="../skin/images/wealth.jpg" alt=""/>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="foot.jsp"></jsp:include>
<%--内容区结束--%>
</body>
</html>
