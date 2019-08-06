<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>资讯中心 / 财经聚焦_我的网站</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <link href="../skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="../skin/css/pintuer.css" type="text/css" rel="stylesheet"/>
    <link href="../skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="../skin/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../skin/js/touchslide.1.1.js"></script>
    <script type="text/javascript" src="../skin/js/common.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="../skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="../skin/js/wow.min.js"></script>
    <!--<![endif]-->

</head>
<body>
<!--头部开始-->
<jsp:include page="head.jsp"></jsp:include>

<div class="clear"></div>
<div id="banner"><img src="../skin/images/a.jpg"/></div>
<div class="clear"></div>
<!--内容区开始-->
<div class="main">
    <div class="container">
        <div class="main_top"><span>当前位置：</span>
            <ul>
                <li><a href='../Home.jsp'>主页</a> > <a href='home-zx.jsp'>资讯中心</a> > <a href='caijingjujiao.jsp'>财经聚焦</a>
                    >
                </li>
            </ul>
            <div class="span2"></div>
        </div>
        <div id="left">
            <div class="left_list">
                <div class="left_top">
                    <h3>资讯中心</h3>
                </div>
                <div class="left_con">
                    <div class="type_list">
                        <ul>
                            <li class="first_cat"><a href='hangyexinwen.jsp' title='行业新闻'>行业新闻</a></li>
                            <li class='first_cat'><a href='caifuanli.jsp'>财富案例</a></li>
                            <li class="first_cat"><a class='current' href='caijingjujiao.jsp' title='财经聚焦'>财经聚焦</a></li>
                            <li class="first_cat"><a href='pingtaigonggao.jsp' title='平台公告'>平台公告</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="right">
            <div id="right_top">
                <h3><a href=''>财经聚焦</a></h3>
            </div>
            <div id="right_con">
                <div class="articleList">
                    <ul>

                    </ul>
                </div>
                <div class="blank clear"></div>
                <div class="pages">
                    <li><span class="pageinfo">共 <strong>0</strong>页<strong>0</strong>条记录</span></li>
                </div>
            </div>
        </div>
    </div>
</div>
<!--内容区结束-->
<div class="clear"></div>
<jsp:include page="foot.jsp"></jsp:include>
<!--版权区结束-->
</body>
</html>
