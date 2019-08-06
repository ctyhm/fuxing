<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/2
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>团险核保订正</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <script type="text/javascript" src="js/address.js"></script>
    <style>
        .colwidth{
            position: relative;
            width: 100px;
        }
    </style>
</head>
<body>
<div class="container" id="container">
    <!--核保信息界面-->
    <span class="glyphicon glyphicon-chevron-right">核保信息</span>
    <div class="row" style="margin: 10px">
        <div class="col-sm-12">
            <div class="form-group">
                <input readonly style="color:red;" type="text" id="remark" class="form-control" value="<s:property value="lcgrpcont.specFlag"/>" placeholder=""/>
            </div>
        </div>
    </div>
    <!--核保信息界面结束-->

    <!--保单号申请控件界面-->
    <span class="glyphicon glyphicon-chevron-right">合同信息</span>
    <div class="row" style="margin: 10px">
        <div class="col-sm-4">
            <form class="form-inline">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon">保单号</div>
                        <input type="text" id="contno" class="form-control" value="<s:property value="lcgrpcont.grpContNo"/>" placeholder="">
                    </div>
                </div>
            </form>
        </div>
        <div class="col-sm-4">
            <div class="input-group">
                <span class="input-group-addon">险种类型</span>
                <input type="text" id="polname" value="<s:property value="lcgrpcont.grppolNo"/>" class="form-control" list="ldpolkind" placeholder="-请选择-">
                <datalist id="ldpolkind">
                    <s:if test="perpollist.size>0">
                    <s:iterator value="perpollist" var="pol">
                    <option value="<s:property value="#pol.grpPolNo"/><s:property value="#pol.grpName"/>">
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
                    <input type="text" value="<s:property value="lcgrpcont.appntname"/>" id="appntname" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">单位名称</span>
                    <input type="text" id="groupName" value="<s:property value="lcgrpcont.grpName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">法人</span>
                    <input type="text" id="corporation" value="<s:property value="lcgrpcont.corporation"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">单位性质</span>
                    <input type="text" id="grpNature" list="companyNature" value="<s:property value="lcgrpcont.grpNature"/>" class="form-control" placeholder="">
                    <datalist id="companyNature">
                        <option value="国有">
                        <option value="集体">
                        <option value="外资">
                        <option value="私营">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">注册资本</span>
                    <input id="rgtMoney" class="form-control" value="<s:property value="lcgrpcont.rgtMoney"/>" placeholder=""/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">资产总额</span>
                    <input type="text" value="<s:property value="lcgrpcont.asset"/>" id="asset" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">主营业务</span>
                    <input id="mainBussiness" value="<s:property value="lcgrpcont.mainBussiness"/>" class="form-control">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">行业分类</span>
                    <input id="businessType" list="mainType" value="<s:property value="lcgrpcont.businessType"/>" class="form-control">
                    <datalist id="mainType">
                        <option value="农业">
                        <option value="林业">
                        <option value="畜牧业">
                        <option value="渔业">
                        <option value="采矿">
                        <option value="制造业">
                        <option value="服务业">
                        <option value="金融">
                        <option value="建筑">
                        <option value="交通运输">
                        <option value="电子通讯">
                        <option value="教育">
                        <option value="建筑">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">付款方式</span>
                    <input id="payMode" list="pay" value="<s:property value="lcgrpcont.payMode"/>" class="form-control">
                    <datalist id="pay">
                        <option value="现金">
                    </datalist>
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">单位电话</span>
                    <input type="text" value="<s:property value="lcgrpcont.phone"/>" id="phone" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">单位传真</span>
                    <input id="fax" type="text" value="<s:property value="lcgrpcont.fax"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">被保人类型</span>
                    <input type="text" value="<s:property value="lcgrpcont.insuredType"/>" id="insuredType" class="form-control" list="appntmerry" placeholder="-请选择-">
                    <datalist id="appntmerry">
                        <option value="实体被保人">
                        <option value="虚拟被保人">
                    </datalist>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">被保人数</span>
                    <input type="text" value="<s:property value="lcgrpcont.peoples"/>" id="peoples" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">公司邮箱</span>
                    <input type="text" value="<s:property value="lcgrpcont.eMail"/>" id="eMail" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->
        <button type="button" id="appntsubmit" class="btn btn-primary">提交</button>
    </div><%--appnt--%>
    <!--引入投保人录入控件界面结束-->

    <!--引入被保人录入控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">被保人信息</span>

    <div id="insured">
        <table class="table table-hover">
            <tr class="warning">
                <th class="colwidth">选项</th>
                <th class="colwidth">流水号</th>
                <th class="colwidth">保单号</th>
                <th class="colwidth">姓名</th>
                <th class="colwidth">性别</th>
                <th class="colwidth">年龄</th>
                <th class="colwidth">身份证号</th>
                <th class="colwidth">删除</th>
                <th class="colwidth">修改</th>
            </tr>
            <s:if test="grpinsuredlist.size>0">
                <s:iterator value="grpinsuredlist" var="pol">
                    <tr class="active">
                        <td class="colwidth"><input style="width: auto" type="checkbox" name="test"></td>
                        <td class="colwidth"><input class="colwidth" readonly name="<s:property value="#pol.orderid"/>" value="<s:property value="#pol.orderid"/>"></td>
                            <%--流水号--%>
                        <td class="colwidth"><input class="colwidth" readonly name="<s:property value="#pol.grpContNo"/>" value="<s:property value="#pol.grpContNo"/>"></td>
                            <%--保单号--%>
                        <td class="colwidth"><input class="colwidth" name="<s:property value="#pol.name"/>" value="<s:property value="#pol.name"/>"></td>
                            <%--姓名--%>
                        <td class="colwidth"><input class="colwidth" name="<s:property value="#pol.sex"/>" value="<s:property value="#pol.sex"/>"></td>
                            <%--性别--%>
                        <td class="colwidth"><input class="colwidth" name="<s:property value="#pol.age"/>" value="<s:property value="#pol.age"/>"></td>
                            <%--年龄--%>
                        <td class="colwidth"><input name="<s:property value="#pol.idnumber"/>" value="<s:property value="#pol.idnumber"/>"></td>
                            <%--身份证号--%>
                        <td style="width: 10px">
                            <button name="<s:property value="#pol.grpContNo"/>" class="btn btn-danger btn-sm" type="button"><i class="fa fa-trash"></i></button>
                        </td>
                        <td style="width: 10px">
                            <a name="<s:property value="#pol.grpContNo"/>" class="btn btn-green btn-sm" type="button">修改</a>
                        </td>
                    </tr>
                </s:iterator>
            </s:if>
            <tr>
                <td></td>
                <td></td>
                <td>
                    <input class="form-control colwidth" value="<s:property value="lcgrpcont.grpContNo"/>" id="grpContNo" placeholder=""><%--保单号--%>
                </td>
                <td>
                    <input class="form-control colwidth" id="name" placeholder=""><%--姓名--%>
                </td>
                <td>
                    <input class="form-control colwidth" id="sex" placeholder=""><%--性别--%>
                </td>
                <td>
                    <input class="form-control colwidth" id="age" placeholder=""><%--年龄--%>
                </td>
                <td>
                    <input class="form-control colwidth" id="idnumber" placeholder=""><%--身份证号--%>
                </td>
                <td>
                    <button id="tianjia" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i>添加</button>
                </td>
            </tr>
        </table>

        <button type="button" id="insuredsubmit" class="btn btn-primary">新单录入完毕</button>

        <button style="position: relative;left: 300px;width: 200px" type="button" id="Correctsubmit" class="btn btn-success">保单订正完成</button>
    </div><!-- /.row -->
    <!--引入被保人录入控件界面结束-->

    <div id="ress"></div>
</div>


<script type="text/javascript" src="js/address.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#appntsubmit").click(function () {
            $.ajax({
                url: "LCGrpCont_saveAppnt.action",
                type: "post",
                data: {
                    contno: $("#contno").val(),
                    polname:$("#polname").val(),
                    appntname:$("#appntname").val(),
                    grpName:$("#groupName").val(),
                    corporation:$("#corporation").val(),
                    grpNature:$("#grpNature").val(),
                    rgtMoney:$("#rgtMoney").val(),
                    asset:$("#asset").val(),
                    mainBussiness:$("#mainBussiness").val(),
                    businessType:$("#businessType").val(),
                    payMode:$("#payMode").val(),
                    phone:$("#phone").val(),
                    fax:$("#fax").val(),
                    insuredType:$("#insuredType").val(),
                    peoples:$("#peoples").val(),
                    eMail:$("#eMail").val()
                },
                success: function (result) {
                    $("#ress").html(result);
                }
            });
        });

        $("#tianjia").click(function () {//添加
            $.ajax({
                url: "LCGrpInsured_save.action",
                type: "post",
                data: {
                    grpContNo: $("#grpContNo").val(),
                    name: $("#name").val(),
                    sex: $("#sex").val(),
                    age: $("#age").val(),
                    idnumber: $("#idnumber").val()
                },
                success: function (result) {
                    $("#container").html(result);
                }
            });
        });


        $(".active td button").on("click", function () {//删除
            $.ajax({
                url: "LCGrpInsured_delete.action",
                type: "post",
                data: {
                    orderid: $(this).attr("name")
                },
                success: function (result) {
                    $("#container").html(result);
                }
            });
        });
        $("tr a").on("click",function(){//更新
            var ipts = $(":checkbox:checked").parents("tr").find("input:text");
            str = ipts.map(function() {return $(this).val();}).get().join(",");
            $.ajax({
                url:"LCGrpInsured_update.action",
                type:"post",
                data:{
                    orderid:str
                },
                success:function(result){
                    $("#container").html(result);
                }
            });
        });
        $("#insuredsubmit").click(function () {//提交
            $.ajax({
                url: "LCGrpCont_submit.action",
                type: "post",
                data: {
                    grpContNo: $("#grpContNo").val(),
                },
                success: function (result) {
                    $("#container").html(result);
                }
            });
        });

        $("#Correctsubmit").click(function () {
            $.ajax({
                url: "LCGrpCont_Correctsubmit.action",
                type: "post",
                data: {
                    contno: $("#contno").val()
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
