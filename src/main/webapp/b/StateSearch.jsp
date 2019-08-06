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
    <link href="css/bootstrap.css" type="text/css">
    <link href="css/bootstrap-theme.css" type="text/css">
</head>
<body>
<div class="container">
    <div class="row">
        <div id="res" class="col-xs-8">
            <div style="margin: 100px" class="col-xs-8">
            <div style="position: relative;left: 200px;width: 400px;" class="input-group">
                    <span class="input-group-btn">
                        <a class="btn">个险保单号码</a>
                    </span>
                <input id="contno" style="width: 200px" type="text" class="form-control" placeholder="">
                <button id="searchcont" type="button" class="btn btn-primary">查询</button>
            </div>
            <br/>
            <br/>
            <table style="position: relative;left: 200px;width: 400px;" class="table table-bordered">
                <tr class="success">
                    <th style="width: 300px">保单号</th>
                    <th>状态</th>
                </tr>
                <s:if test="lccont.contNo!=null">
                    <tr class="danger">
                        <td style="width: 300px"><input readonly class="form-control" value="<s:property value="lccont.contNo"/>"></td>
                        <td><input readonly class="form-control" value="<s:property value="lccont.contState"/>"></td>
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
                url: "LCCont_searchState.action",
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

<script src="js/bootstrap.js"></script>
<script src="js/jquery.min.js"></script>
</body>
</html>
