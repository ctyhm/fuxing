<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>自助服务 > 保单查询</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <!-- Dashboard Css -->
    <link href="b/assets/css/dashboard.css" rel="stylesheet">

</head>
<body>

<div class="main">
    <div class="container">
        <div class="row">
            <div class="card clearfix">
                <div class="card-header">
                    <h2 class="card-title">Cont info</h2>
                </div>
                <div class="card-body">
                    <div class="row profile-user-info">
                        <div class="col-lg-12">
                            <div class="table-responsive border ">
                                <table class="table row table-borderless">
                                    <tbody class="col-xs-4">
                                    <tr>
                                        <td><strong>保单号：</strong>
                                            <s:property value="lccont.contNo"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>投保人姓名：</strong>
                                            <s:property value="lccont.appntName"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>投保人性别：</strong>
                                            <s:property value="lccont.appntSex"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>出生日期：</strong>
                                            <s:property value="lccont.appntBirthday"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>身份证号：</strong>
                                            <s:property value="lccont.appntIdNo"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>地址：</strong>
                                            <s:property value="lccont.appntprovince"></s:property>
                                            <s:property value="lccont.appntcity"></s:property>
                                            <s:property value="lccont.appntcounty"></s:property>
                                            <s:property value="lccont.appntaddress"></s:property>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>邮编：</strong>
                                            <s:property value="lccont.appntmailno"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>投保人电话：</strong>
                                            <s:property value="lccont.appntphone"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>投保人邮箱：</strong>
                                            <s:property value="lccont.appntemail"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>婚姻状况：</strong>
                                            <s:property value="lccont.appntmerry"></s:property></td>
                                    </tr>
                                    </tbody>



                                    <tbody class="col-xs-4">
                                    <tr>
                                        <td><strong>险种号：</strong>
                                            <s:property value="lccont.polNo"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>被保人姓名：</strong>
                                            <s:property value="lccont.insuredName"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>被保人性别：</strong>
                                            <s:property value="lccont.insuredSex"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>出生日期：</strong>
                                            <s:property value="lccont.insuredBirthday"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>身份证号：</strong>
                                            <s:property value="lccont.insuredIdNo"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>地址：</strong>
                                            <s:property value="lccont.insuredprovince"></s:property>
                                            <s:property value="lccont.insuredcity"></s:property>
                                            <s:property value="lccont.insuredcounty"></s:property>
                                            <s:property value="lccont.insuredaddress"></s:property>
                                    </tr>
                                    <tr>
                                        <td><strong>邮编：</strong>
                                            <s:property value="lccont.insuredmailno"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>被保人电话：</strong>
                                            <s:property value="lccont.insuredphone"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>被保人邮箱：</strong>
                                            <s:property value="lccont.insuredemail"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>婚姻状况：</strong>
                                            <s:property value="lccont.insuredmerry"></s:property></td>
                                    </tr>

                                    </tbody>



                                    <tbody class="col-xs-4">
                                    <tr>
                                        <td><strong>所属机构编码：</strong>
                                            <s:property value="lccont.manageCom"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>受益人姓名：</strong>
                                            <s:property value="lccont.benefitName"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>受益人性别：</strong>
                                            <s:property value="lccont.benefitSex"></s:property> </td>
                                    </tr>
                                    <tr>
                                        <td><strong>出生日期：</strong>
                                            <s:property value="lccont.benefitBirthday"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>身份证号：</strong>
                                            <s:property value="lccont.benefitIdNo"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>受益人电话：</strong>
                                            <s:property value="lccont.benefitphone"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>受益人邮箱：</strong>
                                            <s:property value="lccont.benefitemail"></s:property></td>
                                    </tr>
                                    <tr>
                                        <td><strong>受益人类型：</strong>
                                            <s:property value="lccont.benefittype"></s:property></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
