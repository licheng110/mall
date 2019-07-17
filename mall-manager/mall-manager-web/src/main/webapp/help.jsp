<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>帮助中心</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\uc.css" rel="stylesheet">
</head>
<body>
    <!--头部-->
    <div class="topper">
        <div class="wrapper">
            <div class="left-bar">
                <div class="back-home divider">
                    <em></em><a href="login.jsp">登录</a>
                </div>
                <div class="item"><a href="sign-in.jsp">注册</a></div>
            </div>
            <div class="right-bar">
                <div class="logout divider"><a href="login.jsp">退出</a></div>
                <span class=""></span>
                <div class="cart"><em></em><a href="cart.jsp">购物车</a></div>
                <div class="order"><em></em><a href="uc-order.jsp">我的订单</a></div>
                <div class="help"><em></em><a href="help.jsp">帮助中心</a></div>
            </div>
        </div>
    </div>
    <div class="uc-header-bg">
        <div class="uc-header wrapper">
            <a class="logo" href="index.jsp"><img src="img\logo2.png" alt=""></a>
        <div class="back-home"><a href="">返回商城首页</a></div>
            <ul class="uc-nav">
                <li><a href="index.jsp">首页</a></li>
                <li class="toggle">
                    <span class="label">账户设置<i class="iconfont"></i></span>
                    <div class="toggle-cont">
                        <a href="uc-account.jsp">个人信息</a>
                        <a href="uc-safe.jsp">安全设置</a>
                        <a href="uc-address.jsp">收货地址</a>
                    </div>
                </li>
                <li><a href="uc-msg.html">消息中心</a></li>
            </ul>
            <div class="schbox">
                <form action="">
                    <input class="search-txt" type="text">
                    <button class="search-btn">搜索</button>
                    <div class="suggest-box">
                        <div class="item" data-title="上衣 短款 短袖">上衣 短款 短袖<div class="tags"><span>雪纺</span><span>蕾丝</span><span>一字领</span></div></div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="wrapper uc-router">
        <ul>
            <li><a href="index.jsp">首页</a></li>
            <li><span class="divider"></span></li>
            <li><span>帮助中心</span></li>
        </ul>
    </div>

    <div class="wrapper">
        <div class="uc-main clearfix">
            <div class="uc-aside">
                <div class="uc-menu">
                    <div class="tit">帮助中心</div>
                    <ul class="sublist">
                        <li><a href="uc-order.jsp">我的订单</a></li>
                        <li><a href="">用户注册</a></li>
                        <li><a href="">用户登录与密码找回</a></li>
                    </ul>

                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">帮助中心</div>
                    <div class="uc-panel-bd">

                        <div class="mod-type-cont mb20 mt20 help-type-cont">
                            注意：以下情况不予办理保修 <br>（一）未经授权的维修、误用、碰撞、疏忽、滥用、进液、事故、改动、不正确的安装所造成的商品质量问题，或撕毁、涂改标贴、机器序号、防伪标记；
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