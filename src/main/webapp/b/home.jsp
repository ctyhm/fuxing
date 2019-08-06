<!doctype html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-TileColor" content="#0061da">
    <meta name="theme-color" content="#1643a3">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <!-- Title -->
    <title>福星寿险核心系统</title>
    <link rel="stylesheet" href="b/assets/fonts/fonts/font-awesome.min.css">

    <!-- Sidemenu Css -->
    <link href="b/assets/plugins/fullside-menu/css/style.css" rel="stylesheet">
    <link href="b/assets/plugins/fullside-menu/waves.min.css" rel="stylesheet">

    <!-- Dashboard Css -->
    <link href="b/assets/css/dashboard.css" rel="stylesheet">

    <!-- Morris.js Charts Plugin -->
    <link href="b/assets/plugins/morris/morris.css" rel="stylesheet">

    <!-- Custom scroll bar css-->
    <link href="b/assets/plugins/scroll-bar/jquery.mCustomScrollbar.css" rel="stylesheet">

    <!---Font icons-->
    <link href="b/assets/css/icons.css" rel="stylesheet">
</head>
<body class="">
<div id="global-loader"></div>
<div class="page">
    <div class="page-main">
        <%--头部--%>
        <div class="app-header1 header py-1 d-flex">
            <div class="container-fluid">
                <div class="d-flex">
                    <a class="header-brand" href="b/home.jsp">
                        <img src="b/assets/images/brand/logo.png" class="header-brand-img" alt="adminor logo">
                    </a>
                    <div class="menu-toggle-button">
                        <a class="nav-link wave-effect" id="sidebarCollapse">
                            <span class="fa fa-bars"></span>
                        </a>
                    </div>
                    <div class="d-flex order-lg-2 ml-auto header-right-icons header-search-icon">


                        <div class="dropdown d-none d-md-flex">
                            <a class="nav-link icon full-screen-link nav-link-bg">
                                <i class="fa fa-expand" id="fullscreen-button"></i>
                            </a>
                        </div>

                        <div class="dropdown d-none d-md-flex ">
                            <a class="nav-link icon " data-toggle="dropdown">
                                <i class="fe fe-grid floating"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow ">
                                <a class="dropdown-item">
                                    <i class="dropdown-icon mdi mdi-account-outline"></i> Profile
                                </a>
                                <a class="dropdown-item">
                                    <i class="dropdown-icon  mdi mdi-settings"></i> Settings
                                </a>
                                <a class="dropdown-item">
                                    <span class="float-right"><span class="badge badge-primary">6</span></span>
                                    <i class="dropdown-icon mdi  mdi-message-outline"></i> Inbox
                                </a>
                                <a class="dropdown-item">
                                    <i class="dropdown-icon mdi mdi-comment-check-outline"></i> Message
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item">
                                    <i class="dropdown-icon mdi mdi-compass-outline"></i> Need help?
                                </a>
                                <a class="dropdown-item" href="b/login.jsp">
                                    <i class="dropdown-icon mdi  mdi-logout-variant"></i> Sign out
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%--头部结束--%>

        <div class="wrapper">
            <!-- Sidebar Holder -->
            <%--导航栏--%>
            <nav id="sidebar" class="nav-sidebar">
                <ul class="list-unstyled components" id="accordion">
                    <div class="user-profile">
                        <div class="dropdown user-pro-body">
                            <div class="mb-2">
                                <a aria-haspopup="true" aria-expanded="false">
                                    <span class="font-weight-semibold">
                                        <%=session.getAttribute("name")%>
                                    </span>
                                </a>
                                <br>
                                <span class="text-gray">Web Designer</span>
                            </div>
                        </div>
                    </div>

                    <%--险种管理--%>
                    <li>
                        <a href="#polmanage" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-desktop mr-2"></i> 险种管理
                        </a>
                        <ul class="collapse list-unstyled" id="polmanage" data-parent="#accordion">
                            <li><a id="pol">个险管理</a></li>
                            <li><a id="grppol">团险管理</a></li>
                        </ul>
                    </li>


                    <%--预约管理--%>
                    <li>
                        <a href="#meetmanage" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-tachometer mr-2"></i> 预约管理
                        </a>
                        <ul class="collapse list-unstyled" id="meetmanage" data-parent="#accordion">
                            <li>
                                <a id="meet">个险预约</a>
                            </li>
                            <li>
                                <a id="Grpmeet">团险预约</a>
                            </li>
                        </ul>
                    </li>

                    <%--投保管理--%>
                    <li>
                        <a href="#appntmanage" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-area-chart mr-2"></i> 投保管理
                        </a>
                        <ul class="collapse list-unstyled" id="appntmanage" data-parent="#accordion">
                            <li>
                                <a id="ContInput">个单录入</a>
                            </li>
                            <li>
                                <a id="GrpContInput">团单录入</a>
                            </li>
                        </ul>
                    </li>

                    <%--核保管理--%>
                    <li>
                        <a href="#newcheck" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="mdi mdi-buffer mr-2"></i> 新单复核
                        </a>
                        <ul class="collapse list-unstyled" id="newcheck" data-parent="#accordion">
                            <li>
                                <a id="check">个险新单复核</a>
                            </li>
                            <li>
                                <a id="Grpcheck">团险新单复核</a>
                            </li>
                        </ul>
                    </li>

                    <%--核保订正--%>
                    <li>
                        <a href="#Uidesign" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-windows mr-2"></i> 核保订正
                        </a>
                        <ul class="collapse list-unstyled" id="Uidesign" data-parent="#accordion">
                            <li>
                                <a id="correct">个险核保订正</a>
                            </li>
                            <li>
                                <a id="Grpcorrect">团险核保订正</a>
                            </li>
                        </ul>
                    </li>

                    <%--承保管理--%>
                    <li>
                        <a href="#Submenu21" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="zmdi zmdi-lamp mr-2"></i> 保险受理
                        </a>
                        <ul class="collapse list-unstyled" id="Submenu21" data-parent="#accordion">
                            <li>
                                <a id="checkok">个单受理</a>
                            </li>
                            <li>
                                <a id="Grpcheckok">团单受理</a>
                            </li>
                        </ul>

                    </li>


                    <%--到账确认--%>
                    <li>
                        <a href="#pay" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-dollar mr-3"></i> 到账确认
                        </a>
                        <ul class="collapse list-unstyled" id="pay" data-parent="#accordion">
                            <li>
                                <a id="payok">个单确认</a>
                            </li>
                            <li>
                                <a id="Grppayok">团单确认</a>
                            </li>
                        </ul>
                    </li>



                    <%--签发保单--%>
                    <li>
                        <a href="#sign" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-pencil-square-o mr-2"></i> 签发保单
                        </a>
                        <ul class="collapse list-unstyled" id="sign" data-parent="#accordion">
                            <li>
                                <a id="polsign">个单签发</a>
                            </li>
                            <li>
                                <a id="Grppolsign">团单签发</a>
                            </li>
                        </ul>
                    </li>

                    <%--状态查询--%>
                    <li>
                        <a href="#state" class="accordion-toggle wave-effect" data-toggle="collapse"
                           aria-expanded="false">
                            <i class="fa fa-tachometer mr-2"></i> 状态查询
                        </a>
                        <ul class="collapse list-unstyled" id="state" data-parent="#accordion">
                            <li>
                                <a id="status">个单状态查询</a>
                            </li>
                            <li>
                                <a id="Grpstatus">团单状态查询</a>
                            </li>
                        </ul>
                    </li>

                    <%--全国网点管理--%>
                    <li>
                        <a id="lccom"><i class="zmdi zmdi-city-alt mr-2"></i>全国网点管理</a>
                    </li>
                    <%--业务员管理--%>
                    <li>
                        <a id="salesman"><i class="mdi mdi-account-settings-variant mr-2"></i>业务员管理</a>
                    </li>

                </ul>
            </nav>
            <%--导航栏结束--%>

            <%--业务图层--%>
            <div class="content-area">
                <div class="page-header">
                    <h4 class="page-title"></h4>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">Details</li>
                    </ol>
                </div>
                <div class="row row-cards">
                    <div id="res">
                        <img style="margin: 150px" src="b/assets/images/brand/logo.png">
                    </div>
                </div>
            </div>
            <%--业务图层结束--%>

        </div>
    </div>

    <!--footer-->
    <footer class="footer">
        <div class="container">
            <div class="row align-items-center flex-row-reverse">
                <div class="col-md-12 col-sm-12 mt-3 mt-lg-0 text-center">
                    Copyright © 2019 <a href="#" title="">admin</a>. 福星寿险股份有限公司 All rights reserved.
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer-->
</div>

<!-- Back to top -->
<a href="#top" id="back-to-top" style="display: inline;"><i class="fa fa-angle-up"></i></a>

<!-- Dashboard Core -->
<script src="b/assets/js/vendors/jquery-3.2.1.min.js"></script>
<script src="b/assets/js/vendors/bootstrap.bundle.min.js"></script>
<script src="b/assets/js/vendors/jquery.sparkline.min.js"></script>
<script src="b/assets/js/vendors/selectize.min.js"></script>
<script src="b/assets/js/vendors/jquery.tablesorter.min.js"></script>
<script src="b/assets/js/vendors/circle-progress.min.js"></script>
<script src="b/assets/plugins/rating/jquery.rating-stars.js"></script>

<!-- Fullside-menu Js-->
<script src="b/assets/plugins/fullside-menu/jquery.slimscroll.min.js"></script>
<script src="b/assets/plugins/fullside-menu/waves.min.js"></script>

<!-- Dashboard Core -->
<script src="b/assets/js/index1.js"></script>

<!--Morris.js Charts Plugin -->
<script src="b/assets/plugins/morris/raphael-min.js"></script>
<script src="b/assets/plugins/morris/morris.js"></script>

<!-- Custom scroll bar Js-->
<script src="b/assets/plugins/scroll-bar/jquery.mCustomScrollbar.concat.min.js"></script>

<!-- Custom Js-->
<script src="b/assets/js/custom.js"></script>


<script type="text/javascript">
    $(document).ready(function () {
        $("#pol").click(function () {
            $.ajax({
                url: "LCPol_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#grppol").click(function () {
            $.ajax({
                url: "GrpPol_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#meet").click(function () {
            $.ajax({
                url: "Meet_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grpmeet").click(function () {
            $.ajax({
                url: "GrpMeet_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#ContInput").click(function () {
            $.ajax({
                url: "LCCont_precont.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#GrpContInput").click(function () {
            $.ajax({
                url: "LCGrpCont_precont.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#check").click(function () {
            $.ajax({
                url: "LCCont_bcheck.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grpcheck").click(function () {
            $.ajax({
                url: "LCGrpCont_bGrpcheck.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#correct").click(function () {
            $.ajax({
                url: "LCCont_bcorrect.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grpcorrect").click(function () {
            $.ajax({
                url: "LCGrpCont_bGrpcorrect.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#checkok").click(function () {
            $.ajax({
                url: "LCCont_accept.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grpcheckok").click(function () {
            $.ajax({
                url: "LCGrpCont_Grpaccept.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#payok").click(function () {
            $.ajax({
                url: "LCCont_bpayok.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grppayok").click(function () {
            $.ajax({
                url: "LCGrpCont_bGrppayok.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });

        $("#polsign").click(function () {
            $.ajax({
                url: "LCCont_bpolsign.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grppolsign").click(function () {
            $.ajax({
                url: "LCGrpCont_bGrppolsign.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });

        $("#lccom").click(function () {
            $.ajax({
                url: "LDCom_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#salesman").click(function () {
            $.ajax({
                url: "Salesman_findAll.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });

        $("#status").click(function () {
            $.ajax({
                url: "LCCont_bstatus.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
        $("#Grpstatus").click(function () {
            $.ajax({
                url: "LCGrpCont_bGrpstatus.action",
                type: "post",
                data: {},
                success: function (result) {
                    $("#res").html(result);
                }
            });
        });
    });
</script>
</body>
</html>