<%--
  Created by IntelliJ IDEA.
  User: ct
  Date: 2019/5/21
  Time: 15:09
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>我的网站</title>
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
<div style="width: auto;height: 2px ;background: 2px silver"></div>
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div style="text-align: center"><h2>《福星寿险服务协议》</h2></div>
            <h3>本网站的权利义务：</h3>

            <p>1、维护本网站的正常工作，提供网络服务。</p>

            <p>2、用户管理：本网站对用户的管理依据中华人民共和国法律法规、地方法规和国际法律等的标准。</p>

            <p>3、迅速处理用户投诉。</p>

            <p>4、用户隐私制度：请阅读本网站隐私条款。</p>

            <h3>用户的权利义务：</h3>

            <p>1、用户必须遵循：</p>

            <p>(1)中华人民共和国关于网络的相关法律法规。</p>

            <p>(2)使用网络服务不作非法用途。</p>

            <p>(3)不干扰或混乱网络服务。</p>

            <p>(4)遵守所有使用网络服务的网络协议、规定、程序和惯例。</p>

            <h3>同时用户承诺：</h3>

            <p>(1)不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料；</p>

            <p>(2)不传输任何教唆他人构成犯罪行为的资料；</p>

            <p>(3)不传输任何不符合中华人民共和国法律法规、地方法规和国际法律的资料；</p>

            <p>(4)未经许可而非法进入其它电脑系统是禁止的；</p>

            <p>(5)法律规定的其他义务；</p>

            <p>若用户的行为不符合以上提到的服务条款，本网站将作出独立判断，并采用相关行动。用户需对自己在网上的行为承担法律责任。
                用户若在本网站上散布和传播反动、色情或其他违反中华人民共和国法律法规、地方法规和国际法律的信息，
                本网站将完全配合司法机关的行动。</p>

            <p>2、基于网络服务的特性及重要性，用户同意：</p>

            <p>(1)提供详尽、准确的个人资料。</p>

            <p>(2)更新注册资料，符合及时、详尽、准确的要求。</p>

            <p>3、用户的帐号、密码和安全性</p>

            <p>用户注册成功成为本网站的合法用户后，将得到一个用户名和密码。为了保护用户个人信息安全，请勿将用户信息告知他人或与他人共享注册帐户。

                用户若发现任何非法使用该用户帐号或其它有损用户利益的情况，须立即通知本网站。用户亦可在输入正确的email地址后，自助更改密码。

                本网站建议用户定期更换密码，避免不必要的密码泄漏。另外，每个用户都要对以其用户名进行的所有活动和事件负责。</p>

            <p>4、关于责任</p>

            <p>本网站对任何直接、间接、偶然、特殊及继起的损害不负法律责任，这些损害可能来自：他人的行为、用户间文件的交流、
                在网上进行交易，非法使用网络服务或用户传送的信息有所变动。这些行为都有可能会导致本网站的形象受损，
                所以本网站事先提出这种损害的可能性。</p>

            <p>5、服务条款的修改和服务修订</p>

            <p>本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。
                如果不同意所改动的内容，用户可以在指定的栏目中讨论、投诉或者申请取消网络服务，但是在修正前必须执行现行的服务条款。
                本网站保留随时修改或中断服务而不需知照用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。</p>

            <p>6、通告</p>

            <p>本网站所有发给用户的通告都将通过重要页面的公告形式。服务条款的修改、服务变更、
                或其它重要事件的通告都会以此形式进行。</p>

            <p>7、法律管辖</p>

            <p>本网站服务条款与中华人民共和国法律相一致，用户和本网站一致同意服从中华人民共和国法院管辖。
                如发生本网站服务条款与中华人民共和国法律相抵触时，以法律为准，
                同时这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户产生法律效力和影响。</p>
        </div>
    </div>
</div>
<div style="width: auto;height: 2px ;background: 2px silver"></div>
<div id="copy_txt" class="wow fadeInUp">
    <p class="foot-English text-center">Copyright  2019  Fu Xing Insurance(Group) Company. All rights reserved.</p>
    <p class="foot-bq text-center">版权所有 2019福星寿险有限（集团）公司</p>
    <p class="foot-ba text-center"><a style="color:#8e8e8e;" href="http://www.miibeian.gov.cn/" target="_blank">京ICP备05024145号</a> 京公网安备1104015000150号</p>
</div>
</body>
</html>
