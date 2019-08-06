<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>自助服务 > 网点查询</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <style>
        td{
            width: 100px;
        }
        th{
            width: 100px;
        }
    </style>
</head>
<body>

<div class="main" id="res">
    <div class="container">
        <div class="row">
            <div class="panel">
                <div class="panel-heading">机构信息</div>
                <div class="panel-body">
                    <form action="" method="post">
                        <table class="table table-hover">
                            <tr class="warning">
                                <th>机构编码</th>
                                <th>机构名称</th>
                                <th>所属省份</th>
                                <th>所属城市</th>
                                <th>机构地址</th>
                            </tr>
                            <s:if test="list.size>0">
                                <s:iterator value="list" var="lccom">
                                    <tr class="active">
                                        <td style="width: 70px;"><s:property value="#lccom.comCode"/></td>
                                            <%--机构编码--%>
                                        <td style="width: 160px;"><s:property value="#lccom.comName"/></td>
                                            <%--机构名称--%>
                                        <td style="width: 80px;"><s:property value="#lccom.comprovince"/></td>
                                            <%--所属省份--%>
                                        <td style="width: 80px;"><s:property value="#lccom.comcity"/></td>
                                            <%--所属城市--%>
                                        <td style="width: 200px;"><s:property value="#lccom.comaddress"/></td>
                                            <%--机构地址--%>
                                    </tr>
                                </s:iterator>
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

<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#souye1").click(function () {//首页
            var page=document.getElementById('souye1');
            var url="LDCom_afindAll.action?currPage="+page.dataset.page;
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
            var url="LDCom_afindAll.action?currPage="+page.dataset.page;
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
            var url="LDCom_afindAll.action?currPage="+page.dataset.page;
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
            var url="LDCom_afindAll.action?currPage="+page.dataset.page;
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

</body>
</html>
