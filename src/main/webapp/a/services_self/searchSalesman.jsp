<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
<title>自助服务 > 业务员查询</title>
	<link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
	<!-- Dashboard Css -->
	<link href="b/assets/css/dashboard.css" rel="stylesheet">
</head>
<body>
<div class="main">
	<div class="container">
			<div class="row">
				<div class="card clearfix">
					<div class="card-header">
						<h2 class="card-title">Salesman info</h2>
					</div>
					<div class="card-body">
						<div class="row profile-user-info">
							<div class="col-lg-12">
								<div class="table-responsive border ">
									<table class="table row table-borderless">
										<tbody class="col-xs-6">
										<tr>
											<td><strong>业务员编号：</strong>
												<s:property value="salesman.sid"/></td>
										</tr>
										<tr>
											<td><strong>所属机构编码：</strong>
												<s:property value="salesman.comcode"/></td>
										</tr>
										<tr>
											<td><strong>所属机构名称：</strong><s:property value="salesman.comname"/></td>
										</tr>
										<tr>
											<td><strong>入职日期：</strong><s:property value="salesman.startdate"></s:property></td>
										</tr>
										<tr>
											<td><strong>联系电话：</strong><s:property value="salesman.sphone"></s:property></td>
										</tr>
										<tr>
											<td><strong>状态：</strong><s:property value="salesman.smanstate"></s:property></td>
										</tr>
										</tbody>
										<tbody class="col-xs-6">
										<tr>
											<td><strong>姓名：</strong><s:property value="salesman.sname"></s:property></td>
										</tr>
										<tr>
											<td><strong>性别：</strong><s:property value="salesman.ssex"></s:property></td>
										</tr>
										<tr>
											<td><strong>年龄：</strong><s:property value="salesman.sage"></s:property></td>
										</tr>
										<tr>
											<td><strong>职位：</strong><s:property value="salesman.posi"></s:property></td>
										</tr>
										<tr>
											<td><strong>邮箱：</strong><s:property value="salesman.semail"></s:property></td>
										</tr>
										<tr>
											<td><strong>离职日期：</strong><s:property value="salesman.enddate"></s:property></td>
										</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
</div>
<script src="js/jquery-3.4.1.js"></script>
<script src="js/bootstrap.min.js"></script>

</body>
</html>
