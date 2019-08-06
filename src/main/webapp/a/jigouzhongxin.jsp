<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html lang="en" dir="ltr">
<head>
    <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>机构中心_我的网站</title>
    <link href="a/skin/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
    <link href="a/skin/css/style.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/jquery.min.js"></script>
    <script type="text/javascript" src="a/skin/js/bootstrap.min.js"></script>
    <!--[if (gt IE 9)|!(IE)]><!-->
    <link href="a/skin/css/animate.min.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript" src="a/skin/js/wow.min.js"></script>
    <!--<![endif]-->
</head>
<body>
<!--头部开始-->
<header id="header">
    <div id="top">
        <div class="container">
            <div class="top_left"><span>欢迎致电：</span> <span>服务时间：</span></div>
            <div class="top_right"> <span class="span1">微信公众号
        <div class="span2 wow bounceInDown"><img src='skin/images/erweima.png' width='100' height='100' alt=''></div>
        </span> <span class="span3">网站导航
        <div class="sitemap"> <div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/chanpinzhongxin/' title='产品中心'>产品中心</a></div>
            <ul>
              
              <li><a href='/9/a/chanpinzhongxin/jibingbaozhang/' title="疾病保障">疾病保障</a></li>
              
              <li><a href='/9/a/chanpinzhongxin/shouxianbaozhang/' title="寿险保障">寿险保障</a></li>
              
              <li><a href='/9/a/chanpinzhongxin/nianjinyanglao/' title="年金养老">年金养老</a></li>
              
              <li><a href='/9/a/chanpinzhongxin/jiaoyuchubei/' title="教育储备">教育储备</a></li>
              
              <li><a href='/9/a/chanpinzhongxin/gaoduanyiliao/' title="高端医疗">高端医疗</a></li>
              
              <li><a href='/9/a/chanpinzhongxin/caifuchuancheng/' title="财富传承">财富传承</a></li>
              
            </ul>
          </div><div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/jigouzhongxin/jigouzhongxin.jsp' title='机构中心'>机构中心</a></div>
            <ul>
              
            </ul>
          </div><div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/baodanfuwu/' title='服务中心'>服务中心</a></div>
            <ul>
              
              <li><a href='/9/a/baodanfuwu/' title="保单服务">保单服务</a></li>
              
              <li><a href='/9/a/lipeifuwu/' title="理赔服务">理赔服务</a></li>
              
              <li><a href='/9/a/changjianwenti/' title="常见问题">常见问题</a></li>
              
              <li><a href='/9/a/fuwuzhongxin/xinxipilu/' title="信息披露">信息披露</a></li>
              
            </ul>
          </div><div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/zixunzhongxin/' title='资讯中心'>资讯中心</a></div>
            <ul>
              
              <li><a href='/9/a/zixunzhongxin/xingyexinwen/' title="行业新闻">行业新闻</a></li>
              
              <li><a href='/9/a/zixunzhongxin/caifuanli/' title="财富案例">财富案例</a></li>
              
              <li><a href='/9/a/zixunzhongxin/caijingjujiao/' title="财经聚焦">财经聚焦</a></li>
              
              <li><a href='/9/a/zixunzhongxin/pingtaigonggao/' title="平台公告">平台公告</a></li>
              
            </ul>
          </div><div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/guanyuwomen/' title='关于我们'>关于我们</a></div>
            <ul>
              
            </ul>
          </div><div class="sitemap_item">
            <div class="sitemap_title"><a href='/9/a/lianxiwomen/' title='联系我们'>联系我们</a></div>
            <ul>
              
            </ul>
          </div> </div>
        </span>
                <div id="search" class="wow fadeInUp">
                    <form name="formsearch" action="/9/plus/search.php">
                        <input type="hidden" name="kwtype" value="0"/>
                        <input name="q" value="" class="skw" size="12" onFocus="javascript:clearsearch(this);"
                               onBlur="javascript:redosearch(this);"/>
                        <input name="submit" value="" type="submit" class="sub"/>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div class="container">
        <div id="logo"><a href="/9/" title="我的网站"><img src="skin/images/logo.jpg" alt="我的网站"/></a></div>
        <div id="header_right">

            <nav id="navigate">
                <ul>
                    <li class="first_menu"><a href="#">首页</a></li>
                    <li><a class='' href='/9/a/chanpinzhongxin/'>产品中心</a></li>
                    <li><a class='current' href='/9/a/jigouzhongxin/jigouzhongxin.jsp'>机构中心</a></li>
                    <li><a class='' href='/9/a/baodanfuwu/'>服务中心</a></li>
                    <li><a class='' href='/9/a/zixunzhongxin/'>资讯中心</a></li>
                    <li><a class='' href='/9/a/guanyuwomen/'>关于我们</a></li>
                    <li><a class='' href='/9/a/lianxiwomen/'>联系我们</a></li>
                </ul>
            </nav>
        </div>
        <div class="clear"></div>
        <div class="row mobile_nav" style="margin-left:-15px;margin-right:-15px;">
            <nav class="collapse navbar-collapse">
                <ul>
                    <li><a href='/'>首页</a></li>
                    <li><a href="javascript:void(0);" href="/9/a/chanpinzhongxin/">产品中心<i class="touch-arrow-down"></i></a>
                        <ul>

                            <li><a href='/9/a/chanpinzhongxin/jibingbaozhang/' title="疾病保障">疾病保障</a></li>

                            <li><a href='/9/a/chanpinzhongxin/shouxianbaozhang/' title="寿险保障">寿险保障</a></li>

                            <li><a href='/9/a/chanpinzhongxin/nianjinyanglao/' title="年金养老">年金养老</a></li>

                            <li><a href='/9/a/chanpinzhongxin/jiaoyuchubei/' title="教育储备">教育储备</a></li>

                            <li><a href='/9/a/chanpinzhongxin/gaoduanyiliao/' title="高端医疗">高端医疗</a></li>

                            <li><a href='/9/a/chanpinzhongxin/caifuchuancheng/' title="财富传承">财富传承</a></li>

                        </ul>
                    </li>
                    <li><a href="/9/a/jigouzhongxin/jigouzhongxin.jsp">机构中心<i style="display:none"></i></a>
                        <ul>

                        </ul>
                    </li>
                    <li><a href="javascript:void(0);" href="/9/a/baodanfuwu/">服务中心<i class="touch-arrow-down"></i></a>
                        <ul>

                            <li><a href='/9/a/baodanfuwu/' title="保单服务">保单服务</a></li>

                            <li><a href='/9/a/lipeifuwu/' title="理赔服务">理赔服务</a></li>

                            <li><a href='/9/a/changjianwenti/' title="常见问题">常见问题</a></li>

                            <li><a href='/9/a/fuwuzhongxin/xinxipilu/' title="信息披露">信息披露</a></li>

                        </ul>
                    </li>
                    <li><a href="javascript:void(0);" href="/9/a/zixunzhongxin/">资讯中心<i
                            class="touch-arrow-down"></i></a>
                        <ul>

                            <li><a href='/9/a/zixunzhongxin/xingyexinwen/' title="行业新闻">行业新闻</a></li>

                            <li><a href='/9/a/zixunzhongxin/caifuanli/' title="财富案例">财富案例</a></li>

                            <li><a href='/9/a/zixunzhongxin/caijingjujiao/' title="财经聚焦">财经聚焦</a></li>

                            <li><a href='/9/a/zixunzhongxin/pingtaigonggao/' title="平台公告">平台公告</a></li>

                        </ul>
                    </li>
                    <li><a href="/9/a/guanyuwomen/">关于我们<i style="display:none"></i></a>
                        <ul>

                        </ul>
                    </li>
                    <li><a href="/9/a/lianxiwomen/">联系我们<i style="display:none"></i></a>
                        <ul>

                        </ul>
                    </li>
                    <div class="m_search">
                        <div id="search" class="wow fadeInUp">
                            <form name="formsearch" action="/9/plus/search.php">
                                <input type="hidden" name="kwtype" value="0"/>
                                <input name="q" value="" class="skw" size="12" onFocus="javascript:clearsearch(this);"
                                       onBlur="javascript:redosearch(this);"/>
                                <input name="submit" value="" type="submit" class="sub"/>
                            </form>
                        </div>
                    </div>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div class="clear"></div>
<div id="banner"><img src="skin/images/a.jpg"/></div>
<div class="clear"></div>
<!--内容区开始-->
<div class="main">
    <div class="container">
        <div class="main_top"><span>当前位置：</span>
            <ul>
                <li><a href='http://www.861ppt.com/9'>主页</a> > <a href='/9/a/jigouzhongxin/jigouzhongxin.jsp'>机构中心</a>
                </li>
            </ul>
        </div>
        <div id="left">
            <div class="left_list">
                <div class="left_top">
                    <h3>机构中心</h3>
                </div>
                <div class="left_con">
                    <div class="type_list">
                        <ul>

                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div id="right">
            <div id="right_top">
                <h3><a href=''>机构中心</a></h3>
            </div>
            <div id="right_con"><p style="text-align: center;">
                <img alt="" src="uploads/allimg/171220/1-1G220163102P3.jpg"/>
                <img alt="" src="uploads/allimg/171220/1-1G220163112596.png"/>
                <img alt="" src="uploads/allimg/171220/1-1G220163131T6.png"/>
                <img alt="" src="uploads/allimg/171220/1-1G220163142355.png"/></p>
            </div>
        </div>
    </div>
</div>
<!--内容区结束-->
<div class="clear"></div>
<!-- 质量保证 start -->


<div id="quality" class="wow fadeInUp">
    <div class="container">
        <li class='q1'><a style='background:url(skin/images/20178161126509.jpg) no-repeat left center;'>保监会权威认证</a></li>
        <li class='q2'><a style='background:url(skin/images/201781611241603.jpg) no-repeat left center;'>保单验真</a></li>
        <li class='q3'><a style='background:url(skin/images/201781611318761.jpg) no-repeat left center;'>无忧理赔</a></li>
        <li class='q4'><a style='background:url(skin/images/201781611420980.jpg) no-repeat left center;'>专业诚信十年</a></li>
    </div>
</div>
<!-- 质量保证 end -->
<div class="clear"></div>
<footer id="footer">
    <div class="container">
        <div id="help">
            <div class="help_list wow fadeInUp" data-wow-delay="0.2s">
                <div class="help_top">
                    <h3>产品中心</h3>
                    <span></span></div>
                <ul>

                    <li><a href='/9/a/chanpinzhongxin/jibingbaozhang/' title="疾病保障">疾病保障</a></li>

                    <li><a href='/9/a/chanpinzhongxin/shouxianbaozhang/' title="寿险保障">寿险保障</a></li>

                    <li><a href='/9/a/chanpinzhongxin/nianjinyanglao/' title="年金养老">年金养老</a></li>

                    <li><a href='/9/a/chanpinzhongxin/jiaoyuchubei/' title="教育储备">教育储备</a></li>

                    <li><a href='/9/a/chanpinzhongxin/gaoduanyiliao/' title="高端医疗">高端医疗</a></li>

                    <li><a href='/9/a/chanpinzhongxin/caifuchuancheng/' title="财富传承">财富传承</a></li>

                </ul>
            </div>
            <div class="help_list wow fadeInUp" data-wow-delay="0.2s">
                <div class="help_top">
                    <h3>服务中心</h3>
                    <span></span></div>
                <ul>

                    <li><a href='/9/a/baodanfuwu/' title="保单服务">保单服务</a></li>

                    <li><a href='/9/a/lipeifuwu/' title="理赔服务">理赔服务</a></li>

                    <li><a href='/9/a/changjianwenti/' title="常见问题">常见问题</a></li>

                    <li><a href='/9/a/fuwuzhongxin/xinxipilu/' title="信息披露">信息披露</a></li>

                </ul>
            </div>
            <div class="help_list wow fadeInUp" data-wow-delay="0.2s">
                <div class="help_top">
                    <h3>资讯中心</h3>
                    <span></span></div>
                <ul>

                    <li><a href='/9/a/zixunzhongxin/xingyexinwen/' title="行业新闻">行业新闻</a></li>

                    <li><a href='/9/a/zixunzhongxin/caifuanli/' title="财富案例">财富案例</a></li>

                    <li><a href='/9/a/zixunzhongxin/caijingjujiao/' title="财经聚焦">财经聚焦</a></li>

                    <li><a href='/9/a/zixunzhongxin/pingtaigonggao/' title="平台公告">平台公告</a></li>

                </ul>
            </div>
            <div class="help_list wow fadeInUp" data-wow-delay="0.8s">
                <div class="help_top">
                    <h3>客户服务</h3>
                    <span></span></div>
                <div class="help_con">全国统一服务热线：<span></span></div>
            </div>
            <div class="help_list wow fadeInUp" data-wow-delay="1s">
                <div class="wechat"><img src='skin/images/201799171354253.jpg' width='205' height='100' alt=''></div>
            </div>
        </div>

        <div id="copy_txt" class="wow fadeInUp">

            <p class="foot-English text-center">Copyright 2019 Fu Xing Insurance(Group) Company. All rights
                reserved.</p>
            <p class="foot-bq text-center">版权所有 2019福星寿险有限（集团）公司</p>
            <p class="foot-ba text-center"><a style="color:#8e8e8e;" href="http://www.miibeian.gov.cn/" target="_blank">京ICP备05024145号</a>
                京公网安备1104015000150号</p>
        </div>

    </div>
</footer>
<div class="blank55"></div>
<div id="toolbar2" class="layout text-center">
    <div class="col-xs-3"><a href="/9/"><span class="icon-home"></span>首页</a></div>
    <div class="col-xs-3"><a href="/9/a/chanpinzhongxin/"><span class="icon-globe"></span>产品</a></div>
    <div class="col-xs-3"><a href="tel:"><span class="icon-phone"></span>电话</a></div>
    <div class="col-xs-3"><a href="/9/a/lianxiwomen/"><span class="icon-user"></span>联系</a></div>
</div>
<div id="toolbar">
    <ul>
        <li class="toolbar_item"><a class="t_item t2" href="javascript:void(0);"><i></i></a>
            <div class="tool_qq">
                <div id="qq_top"></div>
                <div class="tool_qq_con">
                    <div><a href="http://wpa.qq.com/msgrd?v=3&uin=&site=qq&menu=yes" target="_blank"><img border="0"
                                                                                                          src="skin/images/qq_list.jpg"
                                                                                                          alt="3405971630"
                                                                                                          align="absmiddle">客服一</a>
                    </div>
                    <div class="tool_tel">
                        <h3>客户服务热线</h3>
                        <h4></h4>
                    </div>
                    <div class="tool_weixin2"><img src='skin/images/erweima.png' width='100' height='100' alt=''></div>
                </div>
            </div>
        </li>
        <li class="toolbar_item"><a class="t_item t4" href="javascript:void(0);"><i></i></a>
            <div class="tool_weixin">
                <div class="t_wx_con"><img src='skin/images/erweima.png' width='100' height='100' alt=''><br/>
                    扫码关注我们
                </div>
            </div>
        </li>
        <li class="toolbar_item" id="gotop"><a class="t_item t5" href="javascript:void(0);"><i></i></a></li>
    </ul>
</div>

<!--版权区结束-->
</body>
</html>
