<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/12
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <link href="css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row">
        <div id="res" class="col-xs-8">
            <div style="margin: 100px" class="col-xs-8">
                <div style="position: relative;left: 200px;width: 400px;" class="input-group">
                    <span class="input-group-btn">
                        <a class="btn">保单号码</a>
                    </span>
                    <input id="contno" style="width: 200px" type="text" class="form-control" placeholder="">
                    <button id="searchcont" type="button" class="btn btn-primary">查询</button>
                </div>
                <br/>
                <br/>
                <button style="position: relative;left: 200px;width: 400px;" id="newcont" type="button" class="btn btn-success">新单申请</button>

                <br/>
                <br/>
                <table style="position: relative;left: 200px;width: 400px;" class="table table-bordered">
                    <tr class="success">
                        <th style="width: 300px">保单号</th>
                        <th>操作</th>
                    </tr>
                    <s:if test="lcgrpcont.grpContNo!=null">
                        <tr class="danger">
                            <td style="width: 300px"><input class="form-control" id="contnumber" value="<s:property value="lcgrpcont.grpContNo"/>"></td>
                            <td><button type="button" class="btn" id="contInput">新单录入</button></td>
                        </tr>
                    </s:if>
                </table>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#searchcont").click(function () {
            $.ajax({
                url: "LCGrpCont_searchCont.action",
                type: "post",
                data: {
                    contno: $("#contno").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#newcont").click(function () {
            $.ajax({
                url: "LCGrpCont_newCont.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#contInput").click(function () {
            $.ajax({
                url: "LCGrpCont_contInput.action",
                type: "post",
                data: {
                    contnumber:$("#contnumber").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
    });
</script>

<script src="js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
</body>
</html>
