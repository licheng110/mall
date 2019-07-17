<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/17
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>我的私信</title>
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
                <!-- <div class="suggest-box"> -->
                <div class="toggle-cont">
                    <div class="item" data-title="上衣 短款 短袖">上衣 短款 短袖<div class="tags"><span>雪纺</span><span>蕾丝</span><span>一字领</span></div></div>
                </div>
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
                    <li><a class="active" href="/getzhuce.do">我的信息</a></li>
                    <li><a href="/alladdress.do">收货地址</a></li>
                    <li><a href="uc-safe.jsp">账户安全</a></li>
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
                <div class="uc-bigtit">我的私信</div>
                <div class="uc-tabs">
                    <a class="item active" href="javascript:;">系统私信</a>
                </div>
                <div class="uc-bar">
                    <div class="fl">
                        <span class="va-m-ib mr5">共有<span class="text-danger">1</span>个联系人</span><input class="ui-txtin" type="text" name="" id=""><input class="ui-btn-theme ml5" type="submit" value="搜索">
                    </div>
                    <div class="fr">
                        <a href="" class="ui-btn-warn">清空所有私信</a>
                        <a href="" class="ui-btn-theme ml5">发送私信</a>
                    </div>
                </div>
                <div class="mc-list">
                    <div class="item">
                        <div class="desc">
                            私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容
                        </div>
                        <div class="bar">
                            <div class="date">5天前</div>
                            <div class="op">
                                <a href="">回复</a>
                                <a href="">删除</a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class="desc">
                            私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容私信内容
                        </div>
                        <div class="bar">
                            <div class="date">5天前</div>
                            <div class="op">
                                <a href="">回复</a>
                                <a href="">删除</a>
                            </div>
                        </div>
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
