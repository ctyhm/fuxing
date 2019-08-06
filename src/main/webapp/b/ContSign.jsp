<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>个险新单签单</title>
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
                <span class="input-group-addon">险种类型</span>
                <input type="text" readonly id="polname" value="<s:property value="lccont.polNo"/>" class="form-control" placeholder="">
            </div>
        </div>
    </div>
    <!--保单号申请控件界面结束-->

    <!--引入投保人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">投保人信息</span>
    <div id="appnt">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">投保人姓名</span>
                    <input readonly type="text" value="<s:property value="lccont.appntName"/>" id="appname" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input readonly type="text" id="IDtype" value="<s:property value="lccont.appntIdType"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input readonly type="text" id="IDno" value="<s:property value="lccont.appntIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input readonly type="text" id="appsex"  value="<s:property value="lccont.appntSex"/>" class="form-control" placeholder="-请选择-">

                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input readonly id="appntbirthday" style="height: 36px" class="Wdate form-control" value="<s:property value="lccont.appntBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                    <%--<input type="date" id="appbirthday" min="2019-6-5" class="form-control" placeholder="-请选择-">--%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮编</span>
                    <input readonly type="text" value="<s:property value="lccont.appntmailno"/>" id="appmailno" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">街道</span>
                    <input readonly type="text" value="<s:property value="lccont.appntaddress"/>" id="appaddress" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">地址</span>
                    <input type="text" readonly value="<s:property value="lccont.appntprovince"/><s:property value="lccont.appntcity"/><s:property value="lccont.appntcounty"/><s:property value="lccont.appntaddress"/>" id="address" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">婚姻状况</span>
                    <input readonly type="text" value="<s:property value="lccont.appntmerry"/>" id="appmerry" class="form-control"  placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input readonly type="text" value="<s:property value="lccont.appntphone"/>" id="appphone" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input readonly type="text" value="<s:property value="lccont.appntemail"/>" id="appemail" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

    </div><%--appnt--%>
    <!--引入投保人录入控件界面结束-->

    <!--引入投保人告知信息界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">投保人告知信息</span>
    <div id="appinform">
        <div class="row" style="margin: 10px">
            <div class="input-group">
                <input readonly style="width: 180px" type="text" id="appfinance" class="form-control" value="健康告知"
                       placeholder="">

                <input readonly style="width: 700px" type="text" id="appdecribe" class="form-control" value="身高____cm,体重____kg"
                       placeholder="">

                <input readonly style="width: 220px" type="text" id="healthdetail" value="<s:property value="lccont.health"/>" class="form-control" placeholder="">
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="input-group">
                <input readonly style="width: 180px" type="text" id="apphealth" class="form-control" value="财务告知"
                       placeholder="">

                <input readonly style="width: 700px" type="text" id="appdecribe1" class="form-control" value="年收入____万元,收入来源____(1:工资 2:私营 3:证券投资 4:银行利息 5:房屋租赁 6:其他)"
                       placeholder="">

                <input readonly style="width: 220px" type="text" id="financedetail" value="<s:property value="lccont.financemsg"/>" class="form-control" placeholder="">
            </div>
        </div><!-- /.row -->

    </div>
    <!--引入投保人告知信息结束-->

    <!--引入被保人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">被保人信息</span>

    <div id="insured">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">被保人姓名</span>
                    <input readonly type="text" id="insuredname" value="<s:property value="lccont.insuredName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input readonly type="text" id="insuredIDtype" value="<s:property value="lccont.insuredIdType"/>" class="form-control" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input readonly type="text" id="insuredIDno" value="<s:property value="lccont.insuredIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input readonly type="text" id="insuredsex" value="<s:property value="lccont.insuredSex"/>" class="form-control" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input readonly style="height: 36px" id="insuredbirthday" class="Wdate form-control" value="<s:property value="lccont.insuredBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮编</span>
                    <input readonly type="text" id="insuredmailno" value="<s:property value="lccont.insuredmailno"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->


        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">街道</span>
                    <input readonly type="text" id="insuredaddress" value="<s:property value="lccont.insuredaddress"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">地址</span>
                    <input type="text" readonly id="insaddress" value="<s:property value="lccont.insuredprovince"/><s:property value="lccont.insuredcity"/><s:property value="lccont.insuredcounty"/><s:property value="lccont.insuredaddress"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">婚姻状况</span>
                    <input readonly type="text" id="insuredmerry" value="<s:property value="lccont.insuredmerry"/>" class="form-control" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input readonly type="text" id="insuredphone" value="<s:property value="lccont.insuredphone"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input readonly type="text" id="insuredemail" value="<s:property value="lccont.insuredemail"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

    </div>

    <div class="row" style="margin: 10px">
        <div class="col-sm-6">
            <div class="input-group">
                <span class="input-group-addon">职业级别</span>
                <input readonly type="text" id="insuredwork" value="<s:property value="lccont.insuredwork"/>级" class="form-control"
                       placeholder="">
            </div>
        </div>
        <div class="col-sm-6">
            <div class="input-group">
                <span class="input-group-addon">缴费方式</span>
                <input readonly type="text" id="insuredpay" value="<s:property value="lccont.payMode"/>" class="form-control"
                       placeholder="">
            </div>
        </div>

    </div><!-- /.row -->
    <!--引入被保人录入控件界面结束-->


    <!--引入受益人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">受益人信息</span>
    <div id="benefit">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">受益人姓名</span>
                    <input readonly type="text" id="benefitname" value="<s:property value="lccont.benefitName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input readonly type="text" id="benefitIDtype" value="<s:property value="lccont.benefitIdType"/>" class="form-control" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input readonly type="text" id="benefitIDno" value="<s:property value="lccont.benefitIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input readonly type="text" id="benefitsex" value="<s:property value="lccont.benefitSex"/>" class="form-control" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input readonly style="height: 36px" id="benefitbirthday" class="Wdate form-control" value="<s:property value="lccont.benefitBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,minDate:'%y-%M-%d'})" placeholder=""/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">受益人类型</span>
                    <input readonly type="text" id="benefitkind" value="<s:property value="lccont.benefittype"/>" class="form-control"
                           placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">与投保人关系</span>
                    <input readonly type="text" value="<s:property value="lccont.benefittype"/>" id="benefitconnect" class="form-control"
                           placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input readonly type="text" id="benefitphone" value="<s:property value="lccont.benefitphone"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input readonly type="text" id="benefitemail" value="<s:property value="lccont.benefitemail"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->
    </div>

<%--引入受益人界面控件结束--%>

    <!--引入新单审核控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">暂缴费信息</span>
    <div id="benefit">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">缴费方式</span>
                    <input readonly type="text" id="payMode" class="form-control" value="<s:property value="lccont.payMode"/>" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">应缴保费</span>
                    <input readonly type="text" id="prem" value="<s:property value="lccont.prem"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">实缴费</span>
                    <input readonly type="text" id="payflag" value="<s:property value="lccont.appntNo"/>" class="form-control" placeholder="">

                </div>
            </div>
        </div><!-- /.row -->


        <div class="row" style="margin: 10px">
            <div class="col-sm-6 col-sm-offset-3">
                <button style="position: relative;width: 300px;" id="signsubmit" type="button" class="btn btn-primary">签发保单</button>
            </div>
        </div>
    </div>

    <%--引入新单审核控件结束--%>

    <div id="ress"></div>
</div>


<script type="text/javascript" src="js/address.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#signsubmit").click(function () {
            $.ajax({
                url: "LCCont_signSubmit.action",
                type: "post",
                data: {
                    contno:$("#contno").val(),
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
</body>
</html>


