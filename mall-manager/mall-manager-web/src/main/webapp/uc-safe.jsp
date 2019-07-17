<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>账号安全</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\uc.css" rel="stylesheet">
</head>
<body>
    <!--头部-->
    <div class="uc-header-bg">
        <div class="uc-header wrapper">
            <a class="logo" href="index.jsp"><img src="img\logo2.png" alt=""></a>
            <ul class="uc-nav">
                <li><a href="index.jsp">首页</a></li>
                <li class="toggle">
                    <span class="label">我的账户<i class="iconfont"></i></span>
                    <div class="toggle-cont">
                        <a href="/selectinfo.do">个人信息</a>
                        <a href="/alladdress.do">收货地址</a>
    					<a href="uc-safe.jsp">安全设置</a>
                    </div>
                </li>
                <li class="toggle">
    				<span class="label">消息中心<i class="iconfont"></i></span>
    				<div class="toggle-cont">
    				    <a href="uc-msg.html">我的私信</a>
    				    <a href="">商家来信</a>
    					<a href="">系统来信</a>                       
    				</div>
    			</li>
                <li>
                    <a href="cart.jsp">购物车</a>
                </li>
            </ul>
            <div class="schbox">
                <form action="">
                    <input class="search-txt" type="text">
                    <button class="search-btn">搜索</button>
                </form>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="uc-main clearfix">
            <div class="uc-aside">
                <div class="uc-menu">
                   <div class="tit">我的账户</div>
                    <ul class="sublist">
                       <li><a  href="/getzhuce.do">我的信息</a></li>
                       <li><a href="/alladdress.do">收货地址</a></li>
                   	   <li><a class="active" href="uc-safe.jsp">账户安全</a></li>
                       <li><a href="uc-spend.jsp">消费记录</a></li>
                    </ul> 
    				<div class="tit">订单中心</div>
                    <ul class="sublist">
                        <li><a href="uc-order.jsp">我的订单</a></li>
    					<li><a href="uc-evaluate.jsp">商品评价</a></li>
                        <li><a href="uc-fav.jsp">我的收藏</a></li>
                        <li><a href="uc-footprint.jsp">浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
    					<li><a href="uc-apply-refund.jsp">退款/退货</a></li>
                        <li><a href="uc-refund.jsp">取消订单记录</a></li>
                    </ul>               
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit bd-b">账号安全</div>
                    <div class="uc-panel-bd">

                        <div class="safe-list">
                            <div class="list-item">
                                <a href="uc-verify2.jsp" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>
                                <div class="cont">
                                    <img src="img\uc\pwd.jpg" class="ico">
                                    <div class="tit">帐号密码</div>
                                    <div class="desc">用于保护帐号信息和登录安全</div>
                                </div>
                            </div>
<%--                            <div class="list-item">--%>
<%--                                <a href="uc-verify.jsp" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>--%>
<%--                                <div class="cont">--%>
<%--                                    <img src="img\uc\mail.jpg" class="ico">--%>
<%--                                    <div class="tit">安全邮箱 25******1@q*.com<span class="safe-status"><i class="iconfont icon-yanzheng text-success"></i>已绑定</span></div>--%>
<%--                                    <div class="desc">安全邮箱可以用于登录小米帐号，重置密码或其他安全验证</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="list-item">--%>
<%--                                <a href="uc-verify.jsp" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>--%>
<%--                                <div class="cont">--%>
<%--                                    <img src="img\uc\phone.jpg" class="ico">--%>
<%--                                    <div class="tit">安全手机<span class="safe-status"><i class="iconfont icon-warn text-danger"></i>未绑定</span></div>--%>
<%--                                    <div class="desc">安全手机将可用于登录小米帐号和重置密码，建议立即设置</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="list-item">--%>
<%--                                <a href="uc-verify.jsp" class="edit ui-btn-low ui-btn-hollow uc-btn-md">修改</a>--%>
<%--                                <div class="cont">--%>
<%--                                    <img src="img\uc\safe.jpg" class="ico">--%>
<%--                                    <div class="tit">密保问题<span class="safe-status"><i class="iconfont icon-yanzheng text-success"></i>已设置</span></div>--%>
<%--                                    <div class="desc">密保问题用于安全验证，建议立即设置</div>--%>
<%--                                </div>--%>
<%--                            </div>--%>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--脚部-->
    <div class="fatfooter">

    </div>
    <!--脚部-->
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\laydate\laydate.js"></script>
<script src="js\global.js"></script>
</html>