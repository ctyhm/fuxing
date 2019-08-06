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
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>个险管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
    <style>
        table tr th{
            width: 100px;
        }
        table tr td{
            width: 100px;
        }
        table tr td input{
            width: 100px;
        }
    </style>
</head>
<body>
<div class="container" style="position:relative;">
    <div class="row">
        <div class="col-xs-10">
            <div class="panel">
                <div class="panel-heading">个险险种信息</div>
                <div class="panel-body">
                    <form action="" method="post">
                        <table class="table table-hover">
                            <tr class="warning">
                                <th>选项</th>
                                <th>险种编号</th>
                                <th>险种名称</th>
                                <th>险类编码</th>
                                <th>险种编码</th>
                                <th>赔付比例</th>
                                <th>预计保额</th>
                                <th>预计保费</th>
                                <th>删除</th>
                                <th>修改</th>
                            </tr>
                            <s:if test="list.size>0">
                                <s:iterator value="list" var="pol">
                                    <tr class="active">
                                        <td><input style="width: auto" type="checkbox" name="test"></td>
                                        <td><input readonly name="<s:property value="#pol.polNo"/>" value="<s:property value="#pol.polNo"/>"></td>
                                            <%--险种编号--%>
                                        <td><input name="<s:property value="#pol.grpName"/>" value="<s:property value="#pol.grpName"/>"></td>
                                            <%--险种名称--%>
                                        <td><input name="<s:property value="#pol.kindCode"/>" value="<s:property value="#pol.kindCode"/>"></td>
                                            <%--险类编码--%>
                                        <td><input name="<s:property value="#pol.riskCode"/>" value="<s:property value="#pol.riskCode"/>"></td>
                                            <%--险种编码--%>
                                        <td><input name="<s:property value="#pol.getRate"/>" value="<s:property value="#pol.getRate"/>"></td>
                                            <%--赔付比例--%>
                                        <td><input name="<s:property value="#pol.expPremium"/>" value="<s:property value="#pol.expPremium"/>"></td>
                                            <%--预计保额--%>
                                        <td><input name="<s:property value="#pol.expAmnt"/>" value="<s:property value="#pol.expAmnt"/>"></td>
                                            <%--预计保费--%>
                                        <td style="width: 50px">
                                            <button style="width: 50px" name="<s:property value="#pol.polNo"/>" class="btn btn-danger" type="button">删除</button>
                                        </td>
                                        <td style="width: 50px">
                                            <a style="width: 50px" name="<s:property value="#pol.polNo"/>" class="btn btn-warning" type="button">修改</a>
                                        </td>
                                    </tr>
                                </s:iterator>
                                <tr>
                                    <td></td>
                                    <td>
                                        <input class="form-control" id="polNo" placeholder=""><%--险种编号--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="grpName" placeholder=""><%--险种名称--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="kindCode" placeholder=""><%--险类编码--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="riskCode" placeholder=""><%--险种编码--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="getRate" placeholder=""><%--赔付比例--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="expPremium" placeholder=""><%--预计保额--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="expAmnt" placeholder=""><%--预计保费--%>
                                    </td>
                                    <td>
                                        <button id="tianjia" class="btn btn-info">添加</button>
                                    </td>
                                </tr>
                            </s:if>
                        </table>
                        <label style="color: red;position: relative;left:50px;margin: 10px;">
                            <% if(request.getAttribute("polmsg")!=null) {%>
                            <%=request.getAttribute("polmsg")%>
                            <%}%>
                        </label>
                    </form>
                </div>
                <table style="width:800px;">
                    <tr>
                        <td align="right">
                            <span>第<s:property value="currPage"/>/<s:property value="totalPage"/>页</span>&emsp;
                            <span>总记录数：<s:property value="totalCount"/>&emsp;每页显示：<s:property value="pageSize"/></span>&emsp;
                            <span>
                                <s:if test="currPage!=1">
                                    <a id="souye1" data-page="1">[首页]</a>&emsp;
                                    <a id="prempage" data-page="<s:property value="currPage-1"/>">[上一页]</a>&emsp;
                                </s:if>
                                <s:if test="currPage!=totalPage">
                                    <a id="nextpage" data-page="<s:property value="currPage+1"/>">[下一页]</a>&emsp;
                                    <a id="weiye" data-page="<s:property value="totalPage"/>">[尾页]</a>&emsp;
                                </s:if>
                            </span>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
    $(document).ready(function () {
        $(".active td button").on("click", function () {//删除
            $.ajax({
                url: "LCPol_delete.action",
                type: "post",
                data: {
                    lcpolid: $(this).attr("name")
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("tr a").on("click",function(){//更新
            var ipts = $(":checkbox:checked").parents("tr").find("input:text");
            str = ipts.map(function() {return $(this).val();}).get().join(",");
            $.ajax({
                url:"LCPol_update.action",
                type:"post",
                data:{
                    lcpolid:str
                },
                success:function(result){
                    $("#res").html(result);
                }
            });
        });
        $("#tianjia").click(function () {//添加
            $.ajax({
                url: "LCPol_save.action",
                type: "post",
                data: {
                    polNo: $("#polNo").val(),
                    grpName: $("#grpName").val(),
                    kindCode: $("#kindCode").val(),
                    riskCode: $("#riskCode").val(),
                    getRate: $("#getRate").val(),
                    expPremium: $("#expPremium").val(),
                    expAmnt: $("#expAmnt").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#souye1").click(function () {//首页
            var page = document.getElementById('souye1');
            var url = "LCPol_findAll.action?currPage=" + page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#prempage").click(function () {//上一页
            var page = document.getElementById('prempage');
            var url = "LCPol_findAll.action?currPage=" + page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#nextpage").click(function () {//下一页
            var page = document.getElementById('nextpage');
            var url = "LCPol_findAll.action?currPage=" + page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#weiye").click(function () {//尾页
            var page = document.getElementById('weiye');
            var url = "LCPol_findAll.action?currPage=" + page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
    });
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
</body>
</html>
