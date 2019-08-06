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
    <title>团险新单录入</title>
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
                <input readonly type="text" id="polname" value="<s:property value="lcgrpcont.grppolNo"/>" class="form-control"  placeholder="">
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
                    <input readonly type="text" value="<s:property value="lcgrpcont.appntname"/>" id="appntname" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">单位名称</span>
                    <input readonly type="text" id="groupName" value="<s:property value="lcgrpcont.grpName"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">法人</span>
                    <input readonly type="text" id="corporation" value="<s:property value="lcgrpcont.corporation"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">单位性质</span>
                    <input readonly type="text" id="grpNature" value="<s:property value="lcgrpcont.grpNature"/>" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">注册资本</span>
                    <input readonly id="rgtMoney" class="form-control" value="<s:property value="lcgrpcont.rgtMoney"/>" placeholder=""/>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">资产总额</span>
                    <input readonly type="text" value="<s:property value="lcgrpcont.asset"/>" id="asset" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">主营业务</span>
                    <input readonly id="mainBussiness" value="<s:property value="lcgrpcont.mainBussiness"/>" class="form-control">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">行业分类</span>
                    <input readonly id="businessType" value="<s:property value="lcgrpcont.businessType"/>" class="form-control">
                </div>
            </div>
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">付款方式</span>
                    <input readonly id="payMode" value="<s:property value="lcgrpcont.payMode"/>" class="form-control">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">单位电话</span>
                    <input readonly type="text" value="<s:property value="lcgrpcont.phone"/>" id="phone" class="form-control" placeholder="">
                </div>
            </div>
            <div class="col-sm-6">
                <div class="input-group">
                    <span class="input-group-addon">单位传真</span>
                    <input readonly id="fax" type="text" value="<s:property value="lcgrpcont.fax"/>" class="form-control" placeholder="">
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">被保人类型</span>
                    <input readonly type="text" value="<s:property value="lcgrpcont.insuredType"/>" id="insuredType" class="form-control" placeholder="">
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
                    </tr>
                </s:iterator>
            </s:if>
        </table>

    </div><!-- /.row -->
    <!--引入被保人录入控件界面结束-->
    <!--引入新单审核控件界面-->
    <hr/>
    <span class="glyphicon glyphicon-chevron-right">团险新单复核</span>
    <div id="benefit">

        <div class="row" style="margin: 10px">
            <div class="col-sm-4">
                <div class="input-group">
                    <span class="input-group-addon">核保结论</span>
                    <input type="text" id="contCheck" class="form-control" list="checkkind" placeholder="-请选择-">
                    <datalist id="checkkind">
                        <option value="审核通过">
                        <option value="问题保单">
                    </datalist>
                </div>
            </div>
        </div><!-- /.row -->

        <div class="row" style="margin: 10px">
            <div class="col-sm-10">
                <div class="input-group">
                    <span class="input-group-addon">核保意见</span>
                    <textarea type="text" id="Checkdetail" class="form-control" rows="3"></textarea>
                </div>
            </div>
        </div>
        <div class="row" style="margin: 10px">
            <div class="col-sm-6 col-sm-offset-3">
                <button style="position: relative;width: 300px;" id="checksubmit" type="button" class="btn btn-primary">提交</button>
            </div>
        </div>
    </div>

    <%--引入新单审核控件结束--%>


    <div id="ress"></div>
</div>


<script type="text/javascript" src="js/address.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#checksubmit").click(function () {
            $.ajax({
                url: "LCGrpCont_check.action",
                type: "post",
                data: {
                    contno:$("#contno").val(),
                    contCheck: $("#contCheck").val(),
                    Checkdetail: $("#Checkdetail").val()
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
