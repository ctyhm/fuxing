<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
<head>
  <base href="<%=basePath%>">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>服务中心 > 被保人录入</title>
  <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>

  <style>
    .colwidth{
      position: relative;
      width: 100px;
    }
  </style>
</head>
<body>
<%--个险投保预约--%>
<!--头部开始-->
<div class="main">
  <div class="container">
    <div class="row">
      <div class="col-xs-10 col-xs-offset-1">
        <div class="panel panel-primary">
          <div class="panel-heading">团险投保</div>
          <div class="panel-body">
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
                  <th class="colwidth">修改</th>
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
                      <td style="width: 30px">
                        <a style="width: 30px" name="<s:property value="#pol.grpContNo"/>" class="btn-warning" type="button">修改</a>
                      </td>
                    </tr>
                  </s:iterator>
                </s:if>
                <tr>
                  <td></td>
                  <td></td>
                  <td>
                    <input readonly class="form-control colwidth" value="<s:property value="lcgrpcont.grpContNo"/>" id="grpContNo" placeholder=""><%--保单号--%>
                  </td>
                  <td>
                    <input class="form-control colwidth" id="name" placeholder=""><%--姓名--%>
                  </td>
                  <td>
                    <input class="form-control colwidth" id="sex" placeholder=""><%--性别--%>
                  </td>
                  <td>
                    <input class="form-control colwidth" id="age" placeholder=""><%--年龄--%>
                  </td>
                  <td>
                    <input class="form-control colwidth" id="idnumber" placeholder=""><%--身份证号--%>
                  </td>
                  <td>
                    <button id="tianjia" class="btn-primary">添加</button>
                  </td>
                </tr>
              </table>

            </div><!-- /.row -->
            <!--引入被保人录入控件界面结束-->

            <div id="ress"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function () {
    $("#tianjia").click(function () {//添加
      $.ajax({
        url: "LCGrpInsured_asave.action",
        type: "post",
        data: {
          grpContNo: $("#grpContNo").val(),
          name: $("#name").val(),
          sex: $("#sex").val(),
          age: $("#age").val(),
          idnumber: $("#idnumber").val()
        },
        success: function (result) {
          $("#right_con").html(result);
        }
      });
    });

    $("tr a").on("click",function(){//更新
      var ipts = $(":checkbox:checked").parents("tr").find("input:text");
      str = ipts.map(function() {return $(this).val();}).get().join(",");
      $.ajax({
        url:"LCGrpInsured_aupdate.action",
        type:"post",
        data:{
          orderid:str
        },
        success:function(result){
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
