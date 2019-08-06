<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>个险保单受理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="js/address.js"></script>

</head>
<body>
<div class="container">

    <!--保单号申请控件界面-->
    <span class="glyphicon glyphicon-chevron-right">合同信息</span>
    <div class="row" style="margin: 10px">
        <div class="col-sm-4">
            <form class="form-inline">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">保单号</div>
                        <input readonly type="text" id="contno" class="form-control" value="<s:property value="lccont.contNo"/>" placeholder="">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-4">
            <div class="input-group">
                <span class="input-group-addon">险种号</span>
                <input readonly type="text" id="polname" value="<s:property value="lccont.polNo"/>" class="form-control" placeholder="">
            </div>
        </div>
    </div>
    <!--保单号申请控件界面结束-->

    <!--引入录入暂缴费控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">录入暂缴费</span>
    <div id="appnt">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">缴费方式</span>
                    <input type="text" id="payMode" class="form-control" list="paykind" placeholder="-请选择-">
                    <datalist id="paykind">
                        <option value="现金">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">缴费间隔</span>
                    <input type="text" id="paybetween" class="form-control" list="paybetw" placeholder="-请选择-">
                    <datalist id="paybetw">
                        <option value="趸交">
                        <option value="年缴">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">缴费日期</span>
                    <input id="appntbirthday" style="height: 36px" class="Wdate form-control"
                           onfocus="WdatePicker({readOnly:true,minDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                </div>
            </div>

        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4 col-sm-offset-2">
                <div class="input-group">
                    <span class="input-group-addon">应缴保费</span>
                    <input readonly type="text" id="prem" value="<s:property value="lccont.prem"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">实缴费</span>
                    <input type="text" id="payflag" class="form-control" placeholder="">

                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4 col-sm-offset-4">
                <div class="input-group">
                    <button style="width: 345px" type="button" id="Acceptsubmit" class="btn btn-success">保单受理</button>
                </div>
            </div>
        </div><!-- /.row -->
    </div>

    <div id="ress"></div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#Acceptsubmit").click(function () {
            $.ajax({
                url: "LCCont_acceptSubmit.action",
                type: "post",
                data: {
                    contno: $("#contno").val(),
                    //prem:$("#prem").val(),
                    payflag:$("#payflag").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
    });
</script>
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</body>
</html>

