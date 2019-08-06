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
    <title>团险新单受理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet">
    <style>
        table tr th{
            width: 130px;
        }
        table tr td{
            width: 130px;
        }
        table tr td input{
            width: 130px;
        }
    </style>
</head>
<body>
<div class="container" style="position:relative;">
    <div class="row">
        <div class="col-xs-10">
            <div class="panel">
                <div class="panel-heading">团险待受理保单信息</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <tr class="warning">
                            <th style="width: 80px">选项</th>
                            <th style="width: 200px">保单号</th>
                            <th>险种号</th>
                            <th>投保单位</th>
                            <th>录单人</th>
                            <th>操作</th>
                        </tr>
                        <s:if test="contlist.size>0">
                            <s:iterator value="contlist" var="cont">
                                <tr class="active">
                                    <td style="width: 80px"><input style="width: auto" type="checkbox" name="test"></td>
                                    <td style="width: 200px"><input style="width: 200px" name="<s:property value="#cont.grpContNo"/>" value="<s:property value="#cont.grpContNo"/>"></td>
                                        <%--保单号--%>
                                    <td><input name="<s:property value="#cont.grppolNo"/>" value="<s:property value="#cont.grppolNo"/>"></td>
                                        <%--险种号--%>
                                    <td><input name="<s:property value="#cont.grpName"/>" value="<s:property value="#cont.grpName"/>"></td>
                                        <%--投保人--%>
                                    <td><input name="<s:property value="#cont.inputOperator"/>" value="<s:property value="#cont.inputOperator"/>"></td>
                                        <%--录单人--%>
                                    <td style="width: 50px">
                                        <button style="width: 50px" name="<s:property value="#cont.grpContNo"/>" class="btn btn-success" type="button">申请</button>
                                    </td>
                                </tr>
                            </s:iterator>
                        </s:if>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $(".active td button").on("click", function () {//申请
            $.ajax({
                url: "LCGrpCont_acceptapply.action",
                type: "post",
                data: {
                    contid: $(this).attr("name")
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
