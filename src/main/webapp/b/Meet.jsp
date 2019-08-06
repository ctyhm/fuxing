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
    <title>个险预约管理</title>
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
                <div class="panel-heading">个险预约信息</div>
                <div class="panel-body">
                    <form action="" method="post">
                        <table class="table table-hover">
                            <tr class="warning">
                                <th>选项</th>
                                <th>预约号</th>
                                <th>投保人</th>
                                <th>被保人</th>
                                <th>机构编码</th>
                                <th>险种编码</th>
                                <th>预约日期</th>
                                <th>邮箱</th>
                                <th>电话</th>
                                <th>删除</th>
                                <th>修改</th>
                            </tr>
                            <s:if test="list.size>0">
                                <s:iterator value="list" var="meet">
                                    <tr class="active">
                                        <td><input style="width: auto" type="checkbox" name="test"></td>
                                        <td><input style="width: 50px" readonly name="<s:property value="#meet.meetid"/>" value="<s:property value="#meet.meetid"/>"></td>
                                            <%--预约号--%>
                                        <td><input name="<s:property value="#meet.lpname"/>" value="<s:property value="#meet.lpname"/>"></td>
                                            <%--投保人--%>
                                        <td><input name="<s:property value="#meet.linsuredname"/>" value="<s:property value="#meet.linsuredname"/>"></td>
                                            <%--被保人--%>
                                        <td><input name="<s:property value="#meet.comcode"/>" value="<s:property value="#meet.comcode"/>"></td>
                                            <%--机构编码--%>
                                        <td><input name="<s:property value="#meet.polNo"/>" value="<s:property value="#meet.polNo"/>"></td>
                                            <%--险种编码--%>
                                        <td><input name="<s:property value="#meet.meetdate"/>" value="<s:property value="#meet.meetdate"/>"></td>
                                            <%--预约日期--%>
                                        <td><input name="<s:property value="#meet.email"/>" value="<s:property value="#meet.email"/>"></td>
                                            <%--邮箱--%>
                                        <td><input name="<s:property value="#meet.phone"/>" value="<s:property value="#meet.phone"/>"></td>
                                            <%--电话--%>
                                        <td style="width: 50px">
                                            <button style="width: 50px" name="<s:property value="#meet.meetid"/>" class="btn btn-danger" type="button">删除</button>
                                        </td>
                                        <td style="width: 50px">
                                            <a style="width: 50px" name="<s:property value="#meet.meetid"/>" class="btn btn-warning" type="button">修改</a>
                                        </td>
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
                url: "Meet_delete.action",
                type: "post",
                data: {
                    lcmeetid: $(this).attr("name")
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
                url:"Meet_update.action",
                type:"post",
                data:{
                    lcmeetid:str
                },
                success:function(result){
                    $("#res").html(result);
                }
            });
        });
        $("#souye1").click(function () {//首页
            var page = document.getElementById('souye1');
            var url = "Meet_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Meet_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Meet_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Meet_findAll.action?currPage=" + page.dataset.page;
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
