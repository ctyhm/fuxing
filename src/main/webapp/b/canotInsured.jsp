<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/14
  Time: 17:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
<script>
    alert("操作不合法，该保单被保人为虚拟被保人！");
</script>

</body>
</html>
