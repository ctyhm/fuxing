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
    <title>服务中心 > 保单服务_我的网站</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</head>
<body>
<%--个险投保预约--%>
<!--头部开始-->
<div class="main">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-xs-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">个险投保预约</div>

                    <div class="panel-body">
                        <div class="col-xs-8 col-xs-offset-2">
                            <div class="form-label-group">
                                <label>投保人姓名</label>
                                <input type="text" id="appntname" class="form-control" placeholder="Appnt Name" required autofocus>
                            </div>

                            <div class="form-label-group">
                                <label>被保人姓名</label>
                                <input type="text" id="insuredname" class="form-control" placeholder="Insured Name" required>
                            </div>

                            <div class="form-label-group">
                                <label>网点</label><%--下拉选框--%>
                                <input type="text" id="ldcomname" class="form-control" list="ldcomkind" placeholder="-请选择-">
                                <datalist id="ldcomkind">
                                    <s:if test="percomlist.size>0">
                                        <s:iterator value="percomlist" var="lccom">
                                            <option value="<s:property value="#lccom.comCode"/><s:property value="#lccom.comName"/>">
                                                <%--机构名称--%>
                                        </s:iterator>
                                    </s:if>
                                </datalist>
                            </div>
                            <div class="form-label-group">
                                <label>险种</label> <%--下拉选框--%>
                                <input type="text" id="polname" class="form-control" list="ldpolkind" placeholder="-请选择-">
                                <datalist id="ldpolkind">
                                    <s:if test="perpollist.size>0">
                                        <s:iterator value="perpollist" var="pol">
                                            <option value="<s:property value="#pol.polNo"/><s:property value="#pol.grpName"/>">
                                            <%--险种名称--%>
                                        </s:iterator>
                                    </s:if>
                                </datalist>
                            </div>

                            <div class="form-label-group">
                                <label>预约日期</label> <%--下拉选框--%>
                                <input style="height: 36px" id="meetday" class="Wdate form-control"
                                       onfocus="WdatePicker({readOnly:true,minDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                            </div>

                            <div class="form-label-group">
                                <label>邮箱</label>
                                <input type="text" id="email" class="form-control" placeholder="Email">
                            </div>

                            <div class="form-label-group">
                                <label>电话</label>
                                <input type="text" id="phone" class="form-control" placeholder="Phone Number" required>
                            </div>
                            <br/>
                            <button class="btn btn-lg btn-success btn-block" id="btn2" type="button">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        /*$("#ldcomfind").click(function () {
            $.ajax({
                url: "LDCom_find.action",
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#right_con").html(result);
                }
            });
        });
        $("#ldpolfind").click(function () {
            $.ajax({
                url: "LCPol_find.action",
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#right_con").html(result);
                }
            });
        });*/
        $("#btn2").click(function () {
            $.ajax({
                url: "Meet_save.action",
                type: "post",
                data: {
                    appntname:$("#appntname").val(),
                    insuredname:$("#insuredname").val(),
                    ldcomname:$("#ldcomname").val(),
                    polname:$("#polname").val(),
                    meetday:$("#meetday").val(),
                    email:$("#email").val(),
                    phone:$("#phone").val()
                },
                success: function (result) {
                    $("#right_con").html(result);
                }
            });
        });
    });
</script>
<!--版权区结束-->
</body>
</html>
