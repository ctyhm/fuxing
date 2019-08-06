<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/2
  Time: 13:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>网点管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="container" style="position:relative;">
    <div class="row">
        <div class="col-xs-12">
            <div class="panel">
                <div class="panel-heading">机构信息</div>
                <div class="panel-body">
                    <form action="" method="post">
                        <s:fielderror fieldName="Error" cssStyle="font-size:10px;
								color:red;position:relative;"></s:fielderror>
                        <table class="table table-hover">
                            <tr class="warning">
                                <th>机构编码</th>
                                <th>机构名称</th>
                                <th>所属省份</th>
                                <th>所属城市</th>
                                <th>机构地址</th>
                                <th>操作</th>
                            </tr>
                            <s:if test="list.size>0">
                                <s:iterator value="list" var="lccom">
                                    <tr class="active">
                                        <td style="width: 40px;"><s:property value="#lccom.comCode"/></td>
                                            <%--机构编码--%>
                                        <td style="width: 160px;"><s:property value="#lccom.comName"/></td>
                                            <%--机构名称--%>
                                        <td style="width: 40px;"><s:property value="#lccom.comprovince"/></td>
                                            <%--所属省份--%>
                                        <td style="width: 40px;"><s:property value="#lccom.comcity"/></td>
                                            <%--所属城市--%>
                                        <td style="width: 200px;"><s:property value="#lccom.comaddress"/></td>
                                            <%--机构地址--%>
                                        <td style="width: 40px;">
                                            <button name="<s:property value="#lccom.comCode"/>" class="btn btn-danger"
                                                    type="button">
                                                删除
                                            </button>
                                        </td>
                                    </tr>
                                </s:iterator>
                                <tr>
                                    <td>
                                        <input class="form-control" id="lccomno" placeholder=""><%--机构编码--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="lccomname" placeholder=""><%--机构名称--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="lccompro" placeholder=""><%--所属省份--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="lccomcity" placeholder=""><%--所属城市--%>
                                    </td>
                                    <td>
                                        <input class="form-control" id="lccomaddress" placeholder=""><%--机构地址--%>
                                    </td>
                                    <td>
                                        <button id="tianjia" class="btn btn-info">添加</button>
                                    </td>
                                </tr>
                            </s:if>
                        </table>
                    </form>
                </div>
                <table style="width:800px;">
                    <tr>
                        <td align="right">
                            <span>第<s:property value="currPage"/>/<s:property value="totalPage"/>页</span>&emsp;
                            <span>总记录数：<s:property value="totalCount"/>&emsp;每页显示：<s:property value="pageSize"/></span>&emsp;
                            <span>
                                <s:if test="currPage!=1">
                                    <a id="souye1" data-page="1" >[首页]</a>&emsp;
                                    <a id="prempage" data-page="<s:property value="currPage-1"/>" >[上一页]</a>&emsp;
                                </s:if>
                                <s:if test="currPage!=totalPage">
                                    <a id="nextpage" data-page="<s:property value="currPage+1"/>" >[下一页]</a>&emsp;
                                    <a id="weiye" data-page="<s:property value="totalPage"/>" >[尾页]</a>&emsp;
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
                url: "LDCom_delete.action",
                type: "post",
                data: {
                    comNo: $(this).attr("name")
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#tianjia").click(function () {//添加
            $.ajax({
                url: "LDCom_save.action",
                type: "post",
                data: {
                    lccomno: $("#lccomno").val(),
                    lccomname: $("#lccomname").val(),
                    lccompro: $("#lccompro").val(),
                    lccomcity: $("#lccomcity").val(),
                    lccomaddress: $("#lccomaddress").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#souye1").click(function () {//首页
            var page=document.getElementById('souye1');
            var url="LDCom_findAll.action?currPage="+page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#prempage").click(function () {//上一页
            var page=document.getElementById('prempage');
            var url="LDCom_findAll.action?currPage="+page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#nextpage").click(function () {//下一页
            var page=document.getElementById('nextpage');
            var url="LDCom_findAll.action?currPage="+page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#weiye").click(function () {//尾页
            var page=document.getElementById('weiye');
            var url="LDCom_findAll.action?currPage="+page.dataset.page;
            $.ajax({
                url: url,
                type: "post",
                data: {
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
    });
</script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>