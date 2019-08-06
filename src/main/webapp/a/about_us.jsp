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
    <title>关于我们_我的网站</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="a/skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="a/skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/wow.min.js"></script>
</head>
<body>
<!--头部开始-->
<jsp:include page="Head.jsp"></jsp:include>

<div class="clear"></div>
<div id="banner"><img src="a/skin/images/a.jpg" alt="图片无法显示"/></div>
<div class="clear"></div>

<!--内容区开始-->
<div class="main">
    <div class="container">
        <div class="main_top"><span>当前位置：</span>
            <ul>
                <li><a href='a/Home.jsp'>主页</a> > <a href='a/about_us.jsp'>关于我们</a></li>
            </ul>
        </div>
        <div id="right">
            <div id="right_con">
                <p>
                    &emsp;&emsp;福星人寿保险股份有限公司（以下简称“福星人寿”）于2007年11月经中国保险监督管理委员会批准设立，
                    是一家全国性的专业寿险公司，股东包括中国信达资产管理股份有限公司、三胞集团有限公司、
                    陕西煤业化工集团有限责任公司等资金实力雄厚的企业，控股股东为中国信达资产管理股份有限公司。
                    幸福人寿现有注册资本101.3亿元，总资产超过770亿元。公司总部设在北京，在全国设有22家省级分公司，
                    开设各级分支机构244家。
                </p>

                <p>
                    &emsp;&emsp;福星人寿秉承“至善至诚，传递幸福！”的企业精神，遵从“以人为本，诚信规范，共创价值，服务社会”的企业价值观，
                    紧跟市场脉搏，不断创新发展。致力于为社会各个年龄、群体的不同客户提供包括人寿保险、健康保险、
                    意外保险和养老保险在内的全方位风险保障解决方案和投资理财计划，并积极参与国家的健康养老产业、
                    基础建设以及各类民生工程。
                </p>

                <p>
                    &emsp;&emsp;福星人寿建立了95560和4006688688两条服务热线、官方微博、官方微信、职场柜台客服中心在内的“四位一体”客户服务
                    体系，拥有业内领先的集中后援运营系统，为客户提供7天24小时不间断服务，确保及时、准确的向客户兑现各项承诺。
                </p>

                <p>
                    &emsp;&emsp;福星人寿积极参与公益慈善事业，承担企业社会责任，积极回馈社会，努力奉献大众。通过“华育助学基金”，
                    帮助家庭困难的学子完成学业；启动“幸福家庭日”公益志愿活动，关爱银发老人。
                    公司在行业首推幸福“房来宝”老年人住房反向抵押养老保险，是国内住房反向抵押养老保险的先行者，
                    为促进我国养老保障服务体系的健全与发展承担更多的社会责任。
                </p>
                <p>
                    <img alt="" src="uploads/allimg/171220/1-1G22015543Q26.jpg"/>
                </p>
            </div>
        </div>
    </div>
</div>
<!--内容区结束-->

<!-- 质量保证 start -->
<jsp:include page="quality.jsp"></jsp:include>
<!-- 质量保证 end -->

<jsp:include page="Foot.jsp"></jsp:include>

<jsp:include page="Toolbar.jsp"></jsp:include>

</body>
</html>
