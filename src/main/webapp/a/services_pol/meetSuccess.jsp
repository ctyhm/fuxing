<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/6/11
  Time: 23:27
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
</head>
<body>
<script>
    alert("预约成功！");
</script>
</body>
</html>
