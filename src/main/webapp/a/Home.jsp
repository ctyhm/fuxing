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
    <title>福星人寿</title>
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

<jsp:include page="Head.jsp"></jsp:include>

<div class="clear"></div>
<div id="flash">
    <div id="slideBox" class="slideBox">
        <div class="bd">
            <ul>
                <a>
                    <li style="background: transparent url(a/uploads/allimg/171220/1-1G220150J40-L.jpg) no-repeat scroll center center / cover ; width: 100%; float: left; margin-right: -100%; position: relative; display: block; z-index: 1;"></li>
                </a>
            </ul>
        </div>
        <div class="hd">
            <ul>
            </ul>
        </div>
        <span class="prev"></span><span class="next"></span>
    </div>
</div>
<div class="clear"></div>
<!-- 热销产品 start -->
<div id="pro">
    <div class="container">
        <div class="home_top">
            <h3>产品中心</h3>
            <a href="a/persional_products/home.jsp">查看更多</a></div>
        <div class="pro_con">
            <div class='pro_left wow fadeInLeft'>
                <div class="pro_item pro_item_1">
                    <div class="pro_item_img "
                         style="background-image:url(a/uploads/allimg/171220/1-1G220163S80-L.jpg);"></div>
                    <div class="pro_item_title">
                        <h3><a href='a/persional_products/wealth_details.jsp'>财富年金保险</a></h3>
                        <h4>保费低、高保障...</h4>
                    </div>
                </div>
                <div class="pro_item pro_item_2">
                    <div class="pro_item_img "
                         style="background-image:url(a/uploads/allimg/171220/1-1G2201521310-L.jpg);"></div>
                    <div class="pro_item_title">
                        <h3><a href='a/persional_products/endowment_details.jsp'>颐养天年险</a></h3>
                        <h4>各项保障、实实在...</h4>
                    </div>
                </div>
                <div class="pro_item pro_item_3">
                    <div class="pro_item_img "
                         style="background-image:url(a/uploads/allimg/171220/1-1G2201520400-L.jpg);"></div>
                    <div class="pro_item_title">
                        <h3><a href='a/persional_products/health_details.jsp'>优选重疾险</a></h3>
                        <h4>住院、门诊全报销...</h4>
                    </div>
                </div>
            </div>
            <div class='pro_right wow fadeInRight'>
                <div class="pro_item pro_item_4">
                    <div class="pro_item_img "
                         style="background-image:url(a/uploads/allimg/171220/1-1G220151Z50-L.jpg);"></div>
                    <div class="pro_item_title ">
                        <h3><a href='a/persional_products/accident_details.jsp'>人气意外险</a></h3>
                        <h4>保障全面、价格更...</h4>
                    </div>
                </div>
                <div class="pro_item pro_item_5">
                    <div class="pro_item_img "
                         style="background-image:url(a/uploads/allimg/171220/1-1G220151R20-L.jpg);"></div>
                    <div class="pro_item_title ">
                        <h3><a href='a/persional_products/travel_details.jsp'>交通旅行保险</a></h3>
                        <h4>高额身价、随心出...</h4>
                    </div>
                </div>

                <div class="pro_item pro_item_6">
                    <div class="pro_item_img" style="background-image:url(a/skin/images/p001.jpg);"></div>
                    <div class="pro_item_title title_position_2">
                        <h3><a href='a/persional_products/home.jsp'>全部保险产品</a></h3>
                    </div>
                </div>
            </div>
        </div>


        <div id="right">
            <div id="right_top">
                <h3><a href=''>机构中心</a></h3>
            </div>
            <div id="right_con"><p style="text-align: center;">
                <img alt="" src="a/uploads/allimg/171220/1-1G220163102P3.jpg"/>
                <img alt="" src="a/uploads/allimg/171220/1-1G220163112596.png"/>
                <img alt="" src="a/uploads/allimg/171220/1-1G220163131T6.png"/>
                <img alt="" src="a/uploads/allimg/171220/1-1G220163142355.png"/></p>
            </div>
        </div>

    </div>
</div>
<script>
    $(window).load(function () {
        //scrollable-default
        $(".scrollable-default").carouFredSel({
            width: '100%',
            infinite: false,
            //circular 	: false,
            auto: {pauseOnHover: true, timeoutDuration: 3500},
            //swipe    	: { onTouch:true, onMouse:true },
            prev: {
                button: function () {
                    return $(this).parent().next('.carousel-direction').find(".carousel-prev");
                }
            },
            next: {
                button: function () {
                    return $(this).parent().next('.carousel-direction').find(".carousel-next");
                }
            },
            pagination: "#partner_page"
        });
        $(".scrollable-default").parents(".scrollable").css("overflow", "visible");
    });
</script>
<!-- 热销产品 end -->
<!-- 新闻中心 start -->
<div id="news">
    <div class="container">
        <div class="slideTxtBox2">
            <div class="hd">
                <ul>

                    <li>行业新闻</li>

                    <li>财富案例</li>

                </ul>
            </div>
            <div class="bd">
                <ul>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/xingyexinwen/24.jsp'><img
                                src='a/uploads/allimg/171220/1-1G220163S80-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a href='a/zixun_center/xingyexinwen/24.jsp'>高净值家庭70%收益来自资产配置</a>
                            </div>
                            <div class="news_item_desc">
                                针对此事小编也向某公司的业务员了解了一下，据业务员讲诉，该公司已经实施了双录，用手机下载公司研发的APP软件，即可直接进行录音录像操作，公司...<a
                                    href='a/zixun_center/xingyexinwen/24.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/xingyexinwen/23.jsp'><img
                                src='a/uploads/allimg/171220/1-1G220163Q00-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a
                                    href='a/zixun_center/xingyexinwen/23.jsp'>二胎来临，如何做好未来家庭的保障计划</a>
                            </div>
                            <div class="news_item_desc">
                                由以上五幅图可以看出保险公司越大，业务量越多，它所涉及的投诉量就越高，尤其是国寿，太平洋和平安等，都是名列前茅，要优秀的业绩又要保证零投...<a
                                    href='a/zixun_center/xingyexinwen/23.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/xingyexinwen/22.jsp'><img
                                src='a/uploads/allimg/171220/1-1G2201636410-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a
                                    href='a/zixun_center/xingyexinwen/22.jsp'>港险全攻略之理赔时，香港保险公司如何</a>
                            </div>
                            <div class="news_item_desc">
                                针对此事小编也向某公司的业务员了解了一下，据业务员讲诉，该公司已经实施了双录，用手机下载公司研发的APP软件，即可直接进行录音录像操作，公司...<a
                                    href='a/zixun_center/xingyexinwen/22.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/xingyexinwen/1.jsp'><img
                                src='a/uploads/allimg/171220/1-1G220143T3202-lp.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a
                                    href='a/zixun_center/xingyexinwen/1.jsp'>癌症治疗新进展：能够钻孔的纳米机器，</a>
                            </div>
                            <div class="news_item_desc">（图注：绿色部分为纳米机器钻孔的轨迹。）
                                如何治疗癌症，这一直是医学家的一大难题。现在，一种新技术或许能让人类在治愈癌症的道路上更进一步。...<a
                                        href='a/zixun_center/xingyexinwen/1.jsp' class="news_item_more">[详情]</a>
                            </div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>

                </ul>
                <ul>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/caifuanli/29.jsp'><img
                                src='a/uploads/allimg/171220/1-1G2201642230-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a href='a/zixun_center/caifuanli/29.jsp'>高风险职业投保团险
                                未如实告知将依法拒</a></div>
                            <div class="news_item_desc">
                                保安服务公司是受理的公安机关应当自收到申请材料之日起15日内进行审核，并将审核意见报所在地的省、自治区、直辖市人民政府公安机关。在日常工作...<a
                                    href='a/zixun_center/caifuanli/29.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/caifuanli/28.jsp'><img
                                src='a/uploads/allimg/171220/1-1G2201641480-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a href='a/zixun_center/caifuanli/28.jsp'>保险理赔典型案例：无索赔单证原件不予</a>
                            </div>
                            <div class="news_item_desc">
                                原件主要指文件中，具有原始法律效益，特别指盖章的文件，包括有档案原件，户口原件、保密文件、商标原件、限制文件、法律原件和其他文件原件等。...<a
                                    href='a/zixun_center/caifuanli/28.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/caifuanli/27.jsp'><img
                                src='a/uploads/allimg/171220/1-1G2201641330-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a href='a/zixun_center/caifuanli/27.jsp'>保险理赔典型案例：“举证不能”如何调</a>
                            </div>
                            <div class="news_item_desc">举证不能是法律术语，表示的是一种状态，指应当举证证明自己诉讼请求的一方当事人无法提出确凿的证据而要承担的可能败诉的不利后果。
                                近日，在一起...<a href='a/zixun_center/caifuanli/27.jsp' class="news_item_more">[详情]</a>
                            </div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>
                    <div class="news_item ">
                        <div class="news_item_img"><a href='a/zixun_center/caifuanli/26.jsp'><img
                                src='a/uploads/allimg/171220/1-1G2201640480-L.jpg'/></a></div>
                        <div class="news_item_con">
                            <div class="news_item_title"><a href='a/zixun_center/caifuanli/26.jsp'>万能险最新结算利率出炉
                                最高的2款达到</a></div>
                            <div class="news_item_desc">
                                针对万能险，通知明确提到，万能单独账户资产应单独管理、独立核算，同一万能单独账户管理的保单应采用同一结算利率，设立万能单独账户特别储备和...<a
                                    href='a/zixun_center/caifuanli/26.jsp' class="news_item_more">[详情]</a></div>
                            <div class="news_item_time">2017-12-20</div>
                        </div>
                    </div>

                </ul>
            </div>
        </div>
        <script type="text/javascript">jQuery(".slideTxtBox2").slide();</script>
    </div>
</div>
<!-- 新闻中心 end -->
<!-- 合作机构 start -->
<div id="partner">
    <div class="container">
        <div class="partner_top"><h3>合作机构</h3></div>
        <div class="partner_con">
            <div class="partner_con_row">
                <div class="scrollable scrollable-5col">
                    <ul class="scrollable-default clearfix">
                        <li>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G220153I90-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G220153H50-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G220153G10-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G220153A00-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G2201536330-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G2201536170-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G2201536000-L.jpg);"></div>
                            </div>
                            <div class="partner_item">
                                <div class="partner_item_img"
                                     style="background-image:url(a/uploads/allimg/171220/1-1G2201535440-L.jpg);"></div>
                            </div>
                        </li>
                    </ul>
                    <div id="partner_page" class="partner_page"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 合作机构 end -->
<div class="clear"></div>
<div class="clear"></div>
<!-- 质量保证 start -->
<jsp:include page="quality.jsp"></jsp:include>
<!-- 质量保证 end -->
<div class="clear"></div>

<jsp:include page="Foot.jsp"></jsp:include>

<div class="blank55"></div>

<jsp:include page="Toolbar.jsp"></jsp:include>

<!--版权区结束-->
</body>
</html>
