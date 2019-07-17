<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%--    <base href="<%=basePath%>">--%>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商城首页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\sxtc.css" rel="stylesheet">
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
            <div class="item"><a href="sj-sign-in.jsp">商家注册</a></div>
            <div class="item"><a href="sj-login.jsp">商家登录</a></div>
        </div>
        <div class="right-bar">
            <div class="logout divider"><a href="login.jsp">退出</a></div>
            <span class=""></span>
            <div class="cart"><em></em><a href="/cartSelect.do">购物车</a></div>
            <div class="order"><em></em><a href="/getzhuce.do">我的信息</a></div>
            <div class="help"><em></em><a href="help.jsp">帮助中心</a></div>
        </div>
    </div>
</div>
<div class="header-wrap">
    <div class="header wrapper">
        <a href="" class="logo">
            <img src="img\logo4.png" alt="">
        </a>
        <span class="channel">酒品</span>
        <div class="header-schbox">
            <div class="inner clearfix">
                <form action="" method="">
                    <div class="search-switch">
                        <i class="arrow"></i>
                        <!--                        <div class="item">商品</div>-->
                        <!--                        <div class="item active">店铺</div>-->
                    </div>
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
                <span class="tel">400-000-0000</span>
            </div>
            <div class="item">
                <span class="ico iconfont">&#xe61d;</span><a class="kefu">在线客服</a>
            </div>
        </div>
    </div>
</div>
<div class="nav-box">
    <div class="nav wrapper">
        <div class="category-tit">全部分类</div>
        <ul class="nav-ul">
            <li><a href="#">首页</a></li>
            <li><a href="">酒鬼酒专场</a></li>
            <li><a href="">葡萄酒馆</a></li>
            <li><a href="">洋酒馆</a></li>
            <li><a href="">新品</a></li>
        </ul>
    </div>
</div>
<!--头部-->

<div class="wrapper">
    <div class="category-menu">
        <div class="f-item">
            <div class="f-tit">白酒</div>
            <div class="f-list">
                <a href="search-goods.jsp">茅台</a><a href="search-goods.jsp">五粮液</a><a href="search-goods.jsp">酒鬼</a><a href="search-goods.jsp">汾酒</a><a href="search-goods.jsp">剑南春</a>
            </div>
            <div class="c-box">
                <div class="c-list">
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>

                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">酒鬼酒</div>
                        <div class="dd">
                            <a href="search-goods.jsp">酒鬼原浆酒</a>
                            <a href="search-goods.jsp">酒鬼酒珍藏特酿</a>
                            <a href="search-goods.jsp">酒鬼湘泉老坛</a>
                            <a href="search-goods.jsp">酒鬼馥郁天成</a>
                            <a href="search-goods.jsp">酒鬼紫坛</a>
                            <a href="search-goods.jsp">酒鬼酒(妙造)</a>
                            <a href="search-goods.jsp">酒鬼酝酿品味</a>
                            <a href="search-goods.jsp">酒鬼黄坛</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">汾酒</div>
                        <div class="dd">
                            <a href="search-goods.jsp">清香型</a>
                            <a href="search-goods.jsp">浓香型</a>
                            <a href="search-goods.jsp">兼香型</a>
                            <a href="search-goods.jsp">酱香型</a>
                            <a href="search-goods.jsp">其他</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                </div>
                <a class="b-img">
                    <img src="uploads\46.jpg" alt="">
                </a>
            </div>
        </div>
        <div class="f-item">
            <div class="f-tit">葡萄酒</div>
            <div class="f-list">
                <a href="search-goods.jsp">拉菲</a><a href="search-goods.jsp">奔富</a><a href="search-goods.jsp">黄尾袋鼠</a><a href="search-goods.jsp">张裕</a><a href="search-goods.jsp">长城</a>
            </div>
            <div class="c-box">
                <div class="c-list">
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                </div>
                <a class="b-img">
                    <img src="uploads\46.jpg" alt="">
                </a>
            </div>
        </div>

        <div class="f-item">
            <div class="f-tit">洋酒</div>
            <div class="f-list">
                <a href="search-goods.jsp">人头马</a><a href="search-goods.jsp">芝华士</a><a href="search-goods.jsp">轩尼诗</a><a href="search-goods.jsp">皇家礼炮</a><a href="search-goods.jsp">百加得</a>
            </div>
            <div class="c-box">
                <div class="c-list">
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div></div>
            </div>
        </div>
        <div class="f-item">
            <div class="f-tit">啤酒/黄酒/养生酒</div>
            <div class="f-list">
                <a href="search-goods.jsp">青岛</a><a href="search-goods.jsp">雪花</a><a href="search-goods.jsp">竹叶青</a><a href="search-goods.jsp">劲牌</a><a href="search-goods.jsp">喜力</a>
            </div>
            <div class="c-box">
                <div class="c-list">
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">茅台</div>
                        <div class="dd">
                            <a href="search-goods.jsp">飞天茅台</a>
                            <a href="search-goods.jsp">五星茅台</a>
                            <a href="search-goods.jsp">茅台年份酒</a>
                            <a href="search-goods.jsp">茅台纪念酒</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                    <div class="dl">
                        <div class="dt">五粮液</div>
                        <div class="dd">
                            <a href="search-goods.jsp">五粮液喜结缘</a>
                            <a href="search-goods.jsp">五粮液老酒</a>
                            <a href="search-goods.jsp">五粮液国宾</a>
                            <a href="search-goods.jsp">六和液</a>
                            <a href="search-goods.jsp">金六福</a>
                            <a href="search-goods.jsp">五粮液喜酒</a>
                            <a href="search-goods.jsp">果酒</a>
                            <a href="search-goods.jsp">老作坊</a>
                        </div>
                    </div>
                </div>
                <a class="b-img">
                    <img src="uploads\46.jpg" alt="">
                </a>
            </div>
        </div>

    </div>
    <div class="home-banner">
        <a href="goods-detail.jsp"><img src="img1/carousel/lunbo1.png" alt=""></a>
        <a href="goods-detail.jsp"><img src="img1/carousel/lunbo2.png" alt=""></a>
        <a href="goods-detail.jsp"><img src="img1/carousel/lunbo3.png" alt=""></a>
        <a href="goods-detail.jsp"><img src="img1/carousel/lunbo4.png" alt=""></a>
        <a href="goods-detail.jsp"><img src="img1/carousel/lunbo5.png" alt=""></a>
    </div>
    <div class="home-banner-ad category-menu">
        <div style="width: 80px; height: 400px; margin: 1px auto">
            <h3>排行榜</h3>
            <ul>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
                <a href="goods-detail.jsp"><li>泸州老窖</li></a>
            </ul>
        </div>
    </div>
</div>

<div class="wrapper">
    <div class="home-promot">
        <div class="home-promot-tit">口碑甄选</div>
        <div class="clearfix">
            <div class="list-x">
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/105.jpg" alt=""></a>
                    <div class="info">
                        <div class="name"><a href="goods-detail.jsp">45°西凤金窖500ml</a></div>
                        <div class="price">￥19.80</div>
                    </div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/105.jpg" alt=""></a>
                    <div class="info">
                        <div class="name"><a href="goods-detail.jsp">45°西凤金窖500ml</a></div>
                        <div class="price">￥19.80</div>
                    </div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/105.jpg" alt=""></a>
                    <div class="info">
                        <div class="name"><a href="goods-detail.jsp">45°西凤金窖500ml</a></div>
                        <div class="price">￥19.80</div>
                    </div>
                </div>
            </div>
            <div class="list-y">
                <a href="goods-detail.jsp" class="item"><img src="img1/main/109.jpg" alt=""></a>
                <a href="goods-detail.jsp" class="item"><img src="img1/main/109.jpg" alt=""></a>
            </div>
        </div>
    </div>
</div>

<div class="today-special">
    <div class="wrapper">
        <div class="today-special-hd">
            <div class="tit">今日特惠</div>
            <div class="slogan">
                限时钜惠&nbsp;新鲜特供&nbsp;浓郁美味&nbsp;来这儿尝鲜
            </div>
        </div>
        <div class="today-special-slider">
            <div>
                <div class="item">
                    <div class="cont">
                        <div class="name"><a href="goods-detail.jsp">52°酒鬼酒珍藏特酿500ml</a></div>
                        <div class="desc">酒香浓郁 味道鲜美</div>
                        <div class="price">29.00元</div>
                        <a href="javascript:;" class="add-cart"><i class="iconfont icon-cart2"></i>加入购物车</a>
                    </div>
                    <a href=""><img src="img1/main/03.jpg" alt="" class="figure"></a>
                </div>
            </div>
            <div>
                <div class="item">
                    <div class="cont">
                        <div class="name"><a href="goods-detail.jsp">52°酒鬼酒珍藏特酿500ml</a></div>
                        <div class="desc">酒香浓郁 味道鲜美</div>
                        <div class="price">29.00元</div>
                        <a href="javascript:;" class="add-cart"><i class="iconfont icon-cart2"></i>加入购物车</a>
                    </div>
                    <a href=""><img src="img1/main/03.jpg" alt="" class="figure"></a>
                </div>
            </div>
            <div>
                <div class="item">
                    <div class="cont">
                        <div class="name"><a href="goods-detail.jsp">52°酒鬼酒珍藏特酿500ml</a></div>
                        <div class="desc">酒香浓郁 味道鲜美</div>
                        <div class="price">29.00元</div>
                        <a href="javascript:;" class="add-cart"><i class="iconfont icon-cart2"></i>加入购物车</a>
                    </div>
                    <a href=""><img src="img1/main/03.jpg" alt="" class="figure"></a>
                </div>
            </div>
            <div>
                <div class="item">
                    <div class="cont">
                        <div class="name"><a href="goods-detail.jsp">52°酒鬼酒珍藏特酿500ml</a></div>
                        <div class="desc">酒香浓郁 味道鲜美</div>
                        <div class="price">29.00元</div>
                        <a href="javascript:;" class="add-cart"><i class="iconfont icon-cart2"></i>加入购物车</a>
                    </div>
                    <a href=""><img src="img1/main/03.jpg" alt="" class="figure"></a>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="home-main">
    <div class="wrapper">

        <div class="home-tit">
            <div class="tit">新鲜酒</div>
        </div>
        <div class="fresh-news">
            <div class="col col1">
                <div class="col-tit">特别推荐</div>
                <div class="video-con">
                    <img src="img1/main/110.jpg" alt="" width="300px" height="310px">
                </div>
                <!--<div class="intro">
                    <div class="hd">
                        <i class="arrow"></i>
                        <a href=""><img class="hdpic" src="img1/main/04.jpg" alt="" height="200px" width="200px"></a>
                    </div>
                </div>-->
            </div>
            <div class="col col2">
                <div class="col-tit">限时抢购</div>
                <div class="name"><a href="">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                <a class="buy" href="">立即抢购</a>
                <a href=""><img class="figure" src="img1/main/110.jpg" alt="" class="figure"></a>
            </div>
            <div class="col col3">
                <div class="col-tit">资讯</div>
                <a href=""><img src="img1/main/109.jpg" alt="" class="figure"></a>
                <div class="tit"><a href="">酒鬼之心</a></div>
                <div class="desc">元 杨维桢 《龙眠居士画扪虱图》诗：“金榼堕地非酒鬼，巾箱以驴行万里。</div>
            </div>
        </div>

        <div class="home-tit">
            <span class="ico sg"></span>
            <div class="tit">白酒馆</div>
            <!--                <div class="more">-->
            <!--                    <a href="">樱桃</a>-->
            <!--                    <a href="">椰青</a>-->
            <!--                    <a href="">火龙果</a>-->
            <!--                    <a href="">夏橙</a>-->
            <!--                    <a href="">牛油果</a>-->
            <!--                    <a href="">佳沛</a>-->
            <!--                    <a href="">新奇士</a>-->
            <!--                    <a href="">加工蔬菜</a>-->
            <!--                    <a href="">根茎•瓜类</a>-->
            <!--                </div>-->
        </div>
        <div class="home-floor clearfix">
            <div class="floor-ad">
                <a href="goods-detail.jsp"><img src="img1/main/10.jpg" alt=""></a>
            </div>
            <div class="floor-goods">
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/110.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">52°茅台集团茅坛V99 500ml（双瓶装）</a></div>
                    <div class="price">59.90元</div>
                </div>
            </div>
        </div>

        <div class="home-tit">
            <span class="ico hx"></span>
            <div class="tit">葡萄酒馆</div>
        </div>
        <div class="home-floor clearfix">
            <div class="floor-ad">
                <a href="goods-detail.jsp"><img src="img1/main/11.jpg" alt=""></a>
            </div>
            <div class="floor-goods">
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/12.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">酩悦（Moet ＆ Chandon ）粉红香槟750ml</a></div>
                    <div class="price">59.90元</div>
                </div>
            </div>
        </div>

        <div class="home-tit">
            <span class="ico xr"></span>
            <div class="tit">洋酒馆</div>
        </div>
        <div class="home-floor clearfix">
            <div class="floor-ad">
                <a href="goods-detail.jsp"><img src="img1/main/13.jpg" alt=""></a>
            </div>
            <div class="floor-goods">
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">珍享 美国进口新奇士脐橙</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/14.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">40°法国进口穆泽卡沐烈焰谷xo白兰地洋酒700ml</a></div>
                    <div class="price">59.90元</div>
                </div>
            </div>
        </div>

        <div class="home-tit">
            <span class="ico sc"></span>
            <div class="tit">啤酒馆</div>
        </div>
        <div class="home-floor clearfix">
            <div class="floor-ad">
                <a href="goods-detail.jsp"><img src="img1/main/15.jpg" alt=""></a>
            </div>
            <div class="floor-goods">
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
                <div class="item">
                    <a href="goods-detail.jsp"><img src="img1/main/16.jpg" alt="" class="figure"></a>
                    <div class="name"><a href="goods-detail.jsp">乌苏啤酒（wusu）红乌苏黄啤酒易拉罐500ml（12罐）</a></div>
                    <div class="price">59.90元</div>
                </div>
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
<script>
    $('.home-banner').slick({
        autoplay: true,
        autoplaySpeed: 5000,
        dots: true
    });

    $('.today-special-slider').slick({
        autoplay: true,
        autoplaySpeed: 5000,
        slidesToShow: 3,
        draggable: false
    });

</script>
</html>