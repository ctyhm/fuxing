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
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>业务员管理</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link href="css/bootstrap.css" rel="stylesheet">
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
                <div class="panel-heading">业务员信息</div>
                <div class="panel-body">
                    <form action="" method="post">
                        <table class="table table-hover">
                            <tr class="warning">
                                <th>选项</th>
                                <th>用户名</th>
                                <th>所属机构</th>
                                <th>姓名</th>
                                <th>职位</th>
                                <th>状态</th>
                                <th>邮箱</th>
                                <th>电话</th>
                                <th>删除</th>
                                <th>修改</th>
                            </tr>
                            <s:if test="list.size>0">
                                <s:iterator value="list" var="salesman">
                                    <tr class="active">
                                        <td><input style="width: auto" type="checkbox" name="test"></td>
                                        <td><input name="<s:property value="#salesman.sid"/>" value="<s:property value="#salesman.sid"/>"></td>
                                            <%--用户名--%>
                                        <td><input name="<s:property value="#salesman.comcode"/>" value="<s:property value="#salesman.comcode"/>"></td>
                                            <%--所属机构--%>
                                        <td><input name="<s:property value="#salesman.sname"/>" value="<s:property value="#salesman.sname"/>"></td>
                                            <%--姓名--%>
                                        <td><input name="<s:property value="#salesman.posi"/>" value="<s:property value="#salesman.posi"/>"></td>
                                            <%--职位--%>
                                        <td><input name="<s:property value="#salesman.smanstate"/>" value="<s:property value="#salesman.smanstate"/>"></td>
                                            <%--状态--%>
                                        <td><input name="<s:property value="#salesman.semail"/>" value="<s:property value="#salesman.semail"/>"></td>
                                            <%--邮箱--%>
                                        <td><input name="<s:property value="#salesman.sphone"/>" value="<s:property value="#salesman.sphone"/>"></td>
                                            <%--电话--%>
                                        <td style="width: 50px">
                                            <button style="width: 50px" name="<s:property value="#salesman.sid"/>" class="btn btn-danger" type="button">删除</button>
                                        </td>
                                        <td style="width: 50px">
                                            <a style="width: 50px" name="<s:property value="#salesman.sid"/>" class="btn btn-warning" type="button">修改</a>
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


                <%--引入业务员录入界面--%>
                <%--
***************************************************************************************************************************
                --%>
                <hr/>
                <span class="glyphicon glyphicon-chevron-right">业务员信息录入</span>
                <label style="color: red;position: relative;left:50px;margin: 10px;">
                    <% if(request.getAttribute("salesmanmsg")!=null) {%>
                    <%=request.getAttribute("salesmanmsg")%>
                    <%}%>
                </label>
                <div id="salesman">
                    <div class="row" style="margin: 10px">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">账号</span>
                                <input type="text" id="salesmanid" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">密码</span>
                                <input type="text" id="salesmanpwd" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">姓名</span>
                                <input type="text" id="salesmanname" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div><!-- /.row -->

                    <div class="row" style="margin: 10px">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">性别</span>
                                <input type="text" id="salesmansex" class="form-control" list="ssex"
                                       placeholder="-请选择-">
                                <datalist id="ssex">
                                    <option value="男">
                                    <option value="女">
                                </datalist>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">职位</span>
                                <input type="text" id="salesmanposi" class="form-control" list="posi"
                                       placeholder="-请选择-">
                                <datalist id="posi">
                                    <option value="客户经理">
                                    <option value="业务员">
                                </datalist>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">年龄</span>
                                <input type="text" id="salesmanage" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div><!-- /.row -->

                    <div class="row" style="margin: 10px">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">机构编码</span>
                                <input type="text" id="comno" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">机构名称</span>
                                <input type="text" id="comname" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">权限</span>
                                <input type="text" id="salesmanlimit" class="form-control" list="limit"
                                        placeholder="-请选择-">
                                <datalist id="limit">
                                    <option value="1">
                                    <option value="2">
                                </datalist>
                            </div>
                        </div>
                    </div><!-- /.row -->

                    <div class="row" style="margin: 10px">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">入职日期</span>
                                <input style="height: 36px" id="startdate" class="Wdate form-control"
                                       onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">离职日期</span>
                                <input style="height: 36px" id="enddate" class="Wdate form-control"
                                       onfocus="WdatePicker({readOnly:true,maxDate:'%y-%M-%d'})" placeholder="-请选择-"/>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">状态</span>
                                <input type="text" id="salesmanstate" class="form-control" list="state1"
                                        placeholder="-请选择-">
                                <datalist id="state1">
                                    <option value="在职">
                                    <option value="离职">
                                    <option value="休假">
                                    <option value="出差">
                                </datalist>
                            </div>
                        </div>
                    </div><!-- /.row -->

                    <div class="row" style="margin: 10px">
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">地址</span>
                                <input type="text" id="saddress" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">电话</span>
                                <input type="text" id="salesmanphone" class="form-control" placeholder="">
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="input-group">
                                <span class="input-group-addon">邮箱</span>
                                <input type="text" id="salesmanemail" class="form-control" placeholder="">
                            </div>
                        </div>
                    </div><!-- /.row -->
                    <div class="row col-sm-4 col-sm-offset-4">
                        <button style="position: relative;width: 350px;height: 40px;" id="tianjia" type="button" class="btn btn-info">提交</button>
                    </div>
                </div>
                <!--引入投保人录入控件界面结束
    **************************************************************************************************************************
                -->

            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
    $(document).ready(function () {
        $(".active td button").on("click", function () {//删除
            $.ajax({
                url: "Salesman_delete.action",
                type: "post",
                data: {
                    salesmanid: $(this).attr("name")
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("tr a").on("click",function(){//更新
            var ipts = $(":checkbox:checked").parents("tr").find("input:text");
            str = ipts.map(function() {return $(this).val();}).get().join(", ");
            $.ajax({
                url:"Salesman_update.action",
                type:"post",
                data:{
                    salesmanid:str
                },
                success:function(result){
                    $("#res").html(result);
                }
            });
        });
        $("#tianjia").click(function () {//添加
            $.ajax({
                url: "Salesman_save.action",
                type: "post",
                data: {
                    salesmanid: $("#salesmanid").val(),
                    salesmanpwd: $("#salesmanpwd").val(),
                    salesmanname: $("#salesmanname").val(),
                    salesmansex: $("#salesmansex").val(),
                    salesmanposi: $("#salesmanposi").val(),
                    salesmanage: $("#salesmanage").val(),
                    comno: $("#comno").val(),
                    comname: $("#comname").val(),
                    salesmanlimit: $("#salesmanlimit").val(),
                    startdate: $("#startdate").val(),
                    enddate: $("#enddate").val(),
                    salesmanstate: $("#salesmanstate").val(),
                    saddress: $("#saddress").val(),
                    salesmanphone: $("#salesmanphone").val(),
                    salesmanemail: $("#salesmanemail").val()
                },
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#souye1").click(function () {//首页
            var page = document.getElementById('souye1');
            var url = "Salesman_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Salesman_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Salesman_findAll.action?currPage=" + page.dataset.page;
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
            var url = "Salesman_findAll.action?currPage=" + page.dataset.page;
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
