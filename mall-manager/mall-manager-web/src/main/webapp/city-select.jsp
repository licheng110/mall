<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>切换城市</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\home.css" rel="stylesheet">
</head>
<body>
    <!--头部-->
    <div class="topper">
        <div class="wrapper">
            <div class="left-bar">
                <div class="change-city"><a class="name">合肥</a><a class="toggle" href="city-select.jsp">[切换]</a></div>
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
    <div class="header-wrap">
        <div class="header wrapper">
            <div class="logo">
                <a href="index.jsp"><img src="img\logo.png" alt="logo"></a>
            </div>
            <div class="header-schbox">
                <div class="inner clearfix">
                <form action="" method="">
                    <input class="search-txt" placeholder="搜流行酒">
                    <button class="search-btn"></button>
                </form>
                </div>
                <div class="hot-words">
                    <a href="">茅台</a><a href="">五粮液 </a><a href="">酒鬼</a><a href="">郎酒</a><a href="">泸州老窖</a>
                </div>
            </div>
            <div class="contact">
                <div class="item">
                    <span class="ico iconfont">&#xe61b;</span>
                    <span class="tel">400-889-8188</span>
                </div>
                <div class="item">
                     <span class="ico iconfont">&#xe61d;</span><a class="kefu">在线客服</a>
                </div>
            </div>
        </div>
    </div>
    <div class="nav-box">
        <div class="nav wrapper">
            <div class="slogan"></div>
            <ul class="nav-ul">
                <li><a href="index.jsp">首页</a></li>
                <li><a href="">酒鬼酒专场</a></li>
                <li><a href="">葡萄酒馆</a></li>
                <li><a href="">洋酒馆</a></li>
                <li><a href="">新品</a></li>
            </ul>
        </div>
    </div>
    <!--头部-->

    <div class="city-chose-bar">
        <div class="wrapper">
            <div class="label">按省份选择：</div>
            <select name="" id="" class="ui-txtin mr5" style="min-width:100px"></select>
            <select name="" id="" class="ui-txtin mr5" style="min-width:100px"></select>
            <input type="submit" class="ui-btn-theme mr5" class="确定">
            <div class="label ml25">直接搜索：</div>
            <input type="text" class="ui-txtin" placeholder="请输入城市中文或拼音" style="width:350px">
        </div>
    </div>
    <div class="city-chose-quick">
        <div class="wrapper mb15">
            <div class="tit">常用城市：</div>
            <div class="list">
                <a href="">上海</a><a href="">北京</a><a href="">天津</a><a href="">合肥</a><a href="">芜湖</a><a href="">深圳</a><a href="">上海</a><a href="">上海</a><a href="">上海</a><a href="">上海</a>
            </div>
        </div>
        <div class="wrapper">
            <div class="tit">最近访问：</div>
            <div class="list">
                <a href="">上海</a><a href="">北京</a><a href="">天津</a><a href="">合肥</a><a href="">芜湖</a><a href="">深圳</a><a href="">上海</a><a href="">上海</a><a href="">上海</a><a href="">上海</a>
            </div>
        </div>
    </div>
    <div class="city-chose-main">
        <div class="wrapper">
            <div class="chose-tip">按拼音首字母选择</div>
            <div class="city-chose-list">
                <div class="item clearfix">
                   <span class="label">A</span> <a href="">鞍山</a><a href="">阿拉善盟</a><a href="">安庆</a><a href="">安阳</a><a href="">安顺</a>
                </div>
                <div class="item clearfix">
                   <span class="label">A</span> <a href="">鞍山</a><a href="">阿拉善盟</a><a href="">安庆</a><a href="">安阳</a><a href="">安顺</a>
                </div>
                <div class="item clearfix">
                   <span class="label">A</span> <a href="">鞍山</a><a href="">阿拉善盟</a><a href="">安庆</a><a href="">安阳</a><a href="">安顺</a>
                </div>
            </div>
        </div>
    </div>



     <!--脚部-->
    <div class="fatfooter">
        <div class="wrapper">
            <div class="fatft-service">
                <div class="item">
                    <a href="">
                        <img src="img\ico\ft-ser1.png" alt="" class="ico">
                        <span>品质保障</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <img src="img\ico\ft-ser2.png" alt="" class="ico">
                        <span>七天无理由退换货</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <img src="img\ico\ft-ser3.png" alt="" class="ico">
                        <span>特色服务体验</span>
                    </a>
                </div>
                <div class="item">
                    <a href="">
                        <img src="img\ico\ft-ser4.png" alt="" class="ico">
                        <span>帮助中心</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="fatft-links">
            <div class="wrapper">
                <div class="col-link">
                    <div class="tit">购物指南</div>
                    <div class="link"><a href="">购物流程</a></div>
                    <div class="link"><a href="">账户安全</a></div>
                    <div class="link"><a href="">联系客服</a></div>
                    <div class="link"><a href="">会员介绍</a></div>
                </div>
                <div class="col-link">
                    <div class="tit">配送方式</div>
                    <div class="link"><a href="">配送服务查询上</a></div>
                    <div class="link"><a href="">门自提</a></div>
                    <div class="link"><a href="">物流费用标准</a></div>
                </div>
                <div class="col-link">
                    <div class="tit">支付方式</div>
                    <div class="link"><a href="">银联支付</a></div>
                    <div class="link"><a href="">支付宝支付</a></div>
                    <div class="link"><a href="">微信支付</a></div>
                </div>
                <div class="col-link">
                    <div class="tit">售后服务</div>
                    <div class="link"><a href="">售后政策</a></div>
                    <div class="link"><a href="">价格保护</a></div>
                    <div class="link"><a href="">退单说明</a></div>
                    <div class="link"><a href="">取消订单</a></div>
                </div>
                <div class="col-link">
                    <div class="tit">联系我们</div>
                    <div class="link"><a href="">商家入驻</a></div>
                    <div class="link"><a href="">营销服务</a></div>
                    <div class="link"><a href="">关于我们</a></div>
                    <div class="link"><a href="">广告服务</a></div>
                </div>
                <div class="col-contact">
                    <div class="phone">400-000-0000</div>
                    <div class="time">周一至周日 8:00-18:00 <br>（仅收市话费）</div>
                    <div class="tool">
                        <a href="" class="kefu"><i class="iconfont icon-huifu"></i>在线客服</a>
                        <a class="ico weixin" href=""><img src="img\ico\ft-weixin.png" alt=""><img src="uploads\ercode.jpg" class="ercode"></a>
                        <a class="ico sina" href=""><img src="img\ico\ft-sina.png" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer">安徽XXX网络科技有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789</div>
    <!--脚部-->
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\slick\slick.css">
<script src="js\slick\slick.min.js"></script>
<script src="js\global.js"></script>
</html>