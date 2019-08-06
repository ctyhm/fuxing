<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/13
  Time: 20:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <title>业务员查询</title>
    <link href="a/skin/css/bootstrap.min.css"/>
    <!-- Dashboard Css -->
    <link href="b/assets/css/dashboard.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="card clearfix col-sm-6 col-sm-offset-3">
            <div class="card-header">
                <h2 class="card-title">业务员查询</h2>
            </div>
            <div class="card-body">
                <div class="row profile-user-info">
                    <div class="table-responsive border ">
                        <table class="table row table-borderless">
                            <tbody class="col-xs-6">
                            <tr>
                                <td>
                                    <div style="position: center" class="input-group">
                                        <span class="input-group-btn">
                                             <label class="btn">业务员号码</label>
                                        </span>
                                        <input style="width: 260px" id="salesmanno" type="text" class="form-control"
                                               placeholder="">
                                    </div>
                                </td>
                                <td>
                                    <button style="position: center;width: 150px" id="searchsalesman" type="button" class="btn btn-primary">查询</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#searchsalesman").click(function () {//查询
            $.ajax({
                url: "Salesman_asearch.action",
                type: "post",
                data: {
                    salesmanno: $("#salesmanno").val()
                },
                success: function (result) {
                    $("#right_con").html(result);
                }
            });
        });
    });
</script>

<script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
<script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
</body>
</html>
