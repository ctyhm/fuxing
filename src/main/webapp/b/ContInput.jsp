<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>个险新单录入</title>
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
                        <input type="text" id="contno" class="form-control" value="<s:property value="lccont.contNo"/>" placeholder="">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-4">
            <div class="input-group">
                <span class="input-group-addon">险种类型</span>
                <input type="text" id="polname" value="<s:property value="lccont.polNo"/>" class="form-control" list="ldpolkind" placeholder="-请选择-">
                <datalist id="ldpolkind">
                    <s:if test="perpollist.size>0">
                    <s:iterator value="perpollist" var="pol">
                    <option value="<s:property value="#pol.polNo"/><s:property value="#pol.grpName"/>">
                            <%--险种名称--%>
                        </s:iterator>
                        </s:if>
                </datalist>
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
                    <input type="text" value="<s:property value="lccont.appntName"/>" id="appname" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input type="text" id="IDtype" value="<s:property value="lccont.appntIdType"/>" class="form-control" list="IDkind" placeholder="-请选择-">
                    <datalist id="IDkind">
                        <option value="居民身份证">
                        <option value="军官证">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input type="text" id="IDno" value="<s:property value="lccont.appntIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input type="text" id="appsex"  value="<s:property value="lccont.appntSex"/>" class="form-control" list="appntsex" placeholder="-请选择-">
                    <datalist id="appntsex">
                        <option value="男">
                        <option value="女">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input id="appntbirthday" style="height: 36px" class="Wdate form-control" value="<s:property value="lccont.appntBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                    <%--<input type="date" id="appbirthday" min="2019-6-5" class="form-control" placeholder="-请选择-">--%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮编</span>
                    <input type="text" value="<s:property value="lccont.appntmailno"/>" id="appmailno" class="form-control" placeholder="">
                </div>
                <%--<div class="input-group">
                    <span class="input-group-addon">年龄</span>
                    <input type="text" id="appage" value="<s:property value="lccont.appntIdNo"/>" class="form-control" placeholder="">
                </div>--%>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">省份</span>
                    <select id="s_province" value="<s:property value="lccont.appntprovince"/>" name="s_province" class="form-control"></select>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">城市</span>
                    <select id="s_city" value="<s:property value="lccont.appntcity"/>" name="s_city" class="form-control"></select>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">县/区</span>
                    <select id="s_county" value="<s:property value="lccont.appntcounty"/>" name="s_county" class="form-control"></select>
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">街道</span>
                    <input type="text" value="<s:property value="lccont.appntaddress"/>" id="appaddress" class="form-control" placeholder="">
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
                    <input type="text" value="<s:property value="lccont.appntmerry"/>" id="appmerry" class="form-control" list="appntmerry" placeholder="-请选择-">
                    <datalist id="appntmerry">
                        <option value="已婚">
                        <option value="未婚">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input type="text" value="<s:property value="lccont.appntphone"/>" id="appphone" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input type="text" value="<s:property value="lccont.appntemail"/>" id="appemail" class="form-control" placeholder="">
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
                <input style="width: 180px" type="text" id="appfinance" class="form-control" list="appntfan"
                       placeholder="-请选择-">
                <datalist id="appntfan">
                    <option value="财务告知">
                    <option value="健康告知">
                </datalist>

                <input style="width: 700px" type="text" id="appdecribe" class="form-control" list="appntdet"
                       placeholder="-请选择-">
                <datalist id="appntdet">
                    <option value="身高____cm,体重____kg">
                    <option value="年收入____万元,收入来源____(1:工资 2:私营 3:证券投资 4:银行利息 5:房屋租赁 6:其他)">
                </datalist>

                <input style="width: 220px" type="text" id="healthdetail" value="<s:property value="lccont.health"/>" class="form-control" placeholder="">
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="input-group">
                <input style="width: 180px" type="text" id="apphealth" class="form-control" list="appntfan"
                       placeholder="-请选择-">

                <input style="width: 700px" type="text" id="appdecribe1" class="form-control" list="appntdet"
                       placeholder="-请选择-">

                <input style="width: 220px" type="text" id="financedetail" value="<s:property value="lccont.financemsg"/>" class="form-control" placeholder="">
            </div>
        </div><!-- /.row -->
        <button type="button" id="appntsubmit" class="btn btn-primary">提交</button>
    </div>
    <!--引入投保人告知信息结束-->

    <!--引入被保人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">被保人信息</span>
    <input style="color: red" value="1" type="checkbox" id="insuredcb" onclick="check()"><span style="color: red">被保人为本人</span>
    <div id="insured">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">被保人姓名</span>
                    <input type="text" id="insuredname" value="<s:property value="lccont.insuredName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input type="text" id="insuredIDtype" value="<s:property value="lccont.insuredIdType"/>" class="form-control" list="IDkind" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input type="text" id="insuredIDno" value="<s:property value="lccont.insuredIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input type="text" id="insuredsex" value="<s:property value="lccont.insuredSex"/>" class="form-control" list="appntsex" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input style="height: 36px" id="insuredbirthday" class="Wdate form-control" value="<s:property value="lccont.insuredBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                    <%--<input type="date" id="appbirthday" min="2019-6-5" class="form-control" placeholder="-请选择-">--%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮编</span>
                    <input type="text" id="insuredmailno" value="<s:property value="lccont.insuredmailno"/>" class="form-control" placeholder="">
                </div>
                <%--<div class="input-group">
                    <span class="input-group-addon">年龄</span>
                    <input type="text" id="insuredage" value="<s:property value="lccont.appntIdNo"/>" class="form-control" placeholder="">
                </div>--%>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">省份</span>
                    <select id="i_province" name="i_province" value="<s:property value="lccont.insuredprovince"/>" class="form-control"></select>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">城市</span>
                    <select id="i_city" name="i_city" value="<s:property value="lccont.insuredcity"/>" class="form-control"></select>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">县/区</span>
                    <select id="i_county" name="i_county" value="<s:property value="lccont.insuredcounty"/>" class="form-control"></select>
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">街道</span>
                    <input type="text" id="insuredaddress" value="<s:property value="lccont.insuredaddress"/>" class="form-control" placeholder="">
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
                    <input type="text" id="insuredmerry" value="<s:property value="lccont.insuredmerry"/>" class="form-control" list="appntmerry" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input type="text" id="insuredphone" value="<s:property value="lccont.insuredphone"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input type="text" id="insuredemail" value="<s:property value="lccont.insuredemail"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

    </div>

    <div class="row" style="margin: 10px">
        <div class="col-sm-6">
            <div class="input-group">
                <span class="input-group-addon">职业级别</span>
                <input type="text" id="insuredwork" value="<s:property value="lccont.insuredwork"/>" class="form-control" list="worktype"
                       placeholder="-请选择-">
                <datalist id="worktype">
                    <option value="1级">
                    <option value="2级">
                    <option value="3级">
                    <option value="4级">
                    <option value="5级">
                    <option value="6级">
                    <option value="7级">
                </datalist>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="input-group">
                <span class="input-group-addon">缴费方式</span>
                <input type="text" id="insuredpay" value="<s:property value="lccont.payMode"/>" class="form-control" list="paytype"
                       placeholder="-请选择-">
                <datalist id="paytype">
                    <option value="现金">
                </datalist>
            </div>
        </div>

        <button type="button" id="insuredsubmit" class="btn btn-primary">提交</button>
    </div><!-- /.row -->
    <!--引入被保人录入控件界面结束-->


    <!--引入受益人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">受益人信息</span>
    <input style="color: red" type="checkbox" value="2" id="benefitcb" onclick="check1()"><span style="color: red">被保人为本人</span>
    <div id="benefit">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">受益人姓名</span>
                    <input type="text" id="benefitname" value="<s:property value="lccont.benefitName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件类型</span>
                    <input type="text" id="benefitIDtype" value="<s:property value="lccont.benefitIdType"/>" class="form-control" list="IDkind" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">证件号</span>
                    <input type="text" id="benefitIDno" value="<s:property value="lccont.benefitIdNo"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">性别</span>
                    <input type="text" id="benefitsex" value="<s:property value="lccont.benefitSex"/>" class="form-control" list="appntsex" placeholder="-请选择-">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">出生日期</span>
                    <input style="height: 36px" id="benefitbirthday" class="Wdate form-control" value="<s:property value="lccont.benefitBirthday"/>"
                           onfocus="WdatePicker({readOnly:true,minDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                    <%--<input type="date" id="appbirthday" min="2019-6-5" class="form-control" placeholder="-请选择-">--%>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">受益人类型</span>
                    <input type="text" id="benefitkind" value="<s:property value="lccont.benefittype"/>" class="form-control" list="benefittype"
                           placeholder="-请选择-">
                    <datalist id="benefittype">
                        <option value="身故受益人">
                    </datalist>
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">与投保人关系</span>
                    <input type="text" id="benefitconnect" class="form-control" list="connecttype"
                           placeholder="-请选择-">
                    <datalist id="connecttype">
                        <option value="本人">
                        <option value="法定">
                        <option value="配偶">
                        <option value="父子">
                        <option value="母子">
                        <option value="兄弟">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">电话</span>
                    <input type="text" id="benefitphone" value="<s:property value="lccont.benefitphone"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">邮箱</span>
                    <input type="text" id="benefitemail" value="<s:property value="lccont.benefitemail"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->
    </div>

    <button type="button" id="benefitsubmit" class="btn btn-primary">提交</button>
<%--引入受益人界面控件结束--%>
    <div id="ress"></div>
</div>


<script type="text/javascript" src="js/address.js"></script>
<script type="text/javascript">
    addressInit('s_province', 's_city', 's_county');
    addressInit('i_province', 'i_city', 'i_county');

    function check() {
        if ($("#insuredcb").is(":checked")) {
            document.getElementById('insured').style.display = 'none';
        } else {
            document.getElementById('insured').style.display = 'block';
        }
    }

    function check1() {
        if ($("#benefitcb").is(":checked")) {
            document.getElementById('benefit').style.display = 'none';
        } else {
            document.getElementById('benefit').style.display = 'block';
        }
    }
/***************************************************************************************************/

    $(document).ready(function () {
        $("#appntsubmit").click(function () {
            $.ajax({
                url: "LCCont_saveAppnt.action",
                type: "post",
                data: {
                    contno: $("#contno").val(),
                    polname:$("#polname").val(),
                    appname:$("#appname").val(),
                    IDtype:$("#IDtype").val(),
                    IDno:$("#IDno").val(),
                    appsex:$("#appsex").val(),
                    appntbirthday:$("#appntbirthday").val(),
                    appage:$("#appage").val(),
                    s_province:$("#s_province").val(),
                    s_city:$("#s_city").val(),
                    s_county:$("#s_county").val(),
                    appaddress:$("#appaddress").val(),
                    appmailno:$("#appmailno").val(),
                    appmerry:$("#appmerry").val(),
                    appemail:$("#appemail").val(),
                    appphone:$("#appphone").val(),
                    healthdetail:$("#healthdetail").val(),
                    financedetail:$("#financedetail").val()
                },
                success: function (result) {
                    $("#ress").html(result);
                }
            });
        });
        $("#insuredsubmit").click(function () {
            $.ajax({
                url: "LCCont_saveInsured.action",
                type: "post",
                data: {
                    contno: $("#contno").val(),
                    insuredcb: $("#insuredcb").val(),
                    insuredname:$("#insuredname").val(),
                    insuredIDtype:$("#insuredIDtype").val(),
                    insuredIDno:$("#insuredIDno").val(),
                    insuredsex:$("#insuredsex").val(),
                    insuredbirthday:$("#insuredbirthday").val(),
                    insuredage:$("#insuredage").val(),
                    i_province:$("#s_province").val(),
                    i_city:$("#s_city").val(),
                    i_county:$("#s_county").val(),
                    insuredaddress:$("#insuredaddress").val(),
                    insuredmailno:$("#insuredmailno").val(),
                    insuredmerry:$("#insuredmerry").val(),
                    insuredphone:$("#insuredphone").val(),
                    insuredemail:$("#insuredemail").val(),
                    insuredwork:$("#insuredwork").val(),
                    insuredpay:$("#insuredpay").val()
                },
                success: function (result) {
                    $("#ress").html(result);
                }
            });
        });
        $("#benefitsubmit").click(function () {
            $.ajax({
                url: "LCCont_saveBenefit.action",
                type: "post",
                data: {
                    contno: $("#contno").val(),
                    benefitcb: $("#benefitcb").val(),
                    benefitname:$("#benefitname").val(),
                    benefitIDtype:$("#benefitIDtype").val(),
                    benefitIDno:$("#benefitIDno").val(),
                    benefitsex:$("#benefitsex").val(),
                    benefitbirthday:$("#benefitbirthday").val(),
                    benefitkind:$("#benefitkind").val(),
                    benefitconnect:$("#benefitconnect").val(),
                    benefitphone:$("#benefitphone").val(),
                    benefitemail:$("#benefitemail").val()
                },
                success: function (result) {
                    $("#ress").html(result);
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


