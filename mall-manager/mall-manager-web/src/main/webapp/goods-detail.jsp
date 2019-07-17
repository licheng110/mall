<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商城详情页</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\goods-detail.css" rel="stylesheet">
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
        <div class="shop-header wrapper">
            <div class="logo">
                <a href="index.jsp"><img src="img\logo.png" alt="logo"></a>
            </div>
            <div class="shop-meta">
                <span class="ico"></span>
                <div class="info">
                    <div class="name">河套酒业</div>
                    <div class="meta">
                        [&nbsp;描述&nbsp;<span class="txt-warn">4.6</span>&ensp;质量&nbsp;<span class="txt-theme">4.8</span>&ensp;服务&nbsp;<span class="txt-theme">4.9</span>&ensp;发货&nbsp;<span class="txt-theme">4.8</span>&nbsp;]
                    </div>
                </div>
            </div>
            <div class="shop-schbox">
                <div class="layout">
                    <form action="" method="">
                        <input class="search-txt" placeholder="搜流行酒品">
                        <button class="search-btn site">搜全站</button>
                        <button class="search-btn shop">搜本店</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="shop-nav-box">
            <div class="shop-nav wrapper">
                <div class="shop-nav-all">
                    <a href="">所有酒类</a>
                    <div class="sublist">
                        <a href="">白酒</a>
                        <a href="">啤酒</a>
                        <a href="">红酒</a>
                    </div>
                </div>
                <ul class="shop-nav-rec">
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="">茅台</a></li>
                    <li><a href="">西凤酒</a></li>
                    <li><a href="">剑南春</a></li>
                </ul>
            </div>
        </div>
    <!--头部-->

    <div class="wrapper">
        <div class="detail-top clearfix">
            <div class="detail-goods">
                <div class="detail-show">
                    <div class="origin-show">
                        <div class="zoomup"></div>
                        <img class="big-pic" src="img1/main/105.jpg" alt="45°西凤金窖(2012-2013年）">
                    </div>
                    <div class="thumb-show">
                        <span class="item"><img class="s-pic" src="img1/main/05.jpg" bsrc="img1/main/105.jpg"></span>
                        <span class="item"><img class="s-pic" src="img1/main/06.jpg" bsrc="img1/main/106.jpg"></span>
                        <span class="item"><img class="s-pic" src="img1/main/07.jpg" bsrc="img1/main/107.jpg"></span>
                        <span class="item"><img class="s-pic" src="img1/main/08.jpg" bsrc="img1/main/108.jpg"></span>
                    </div>
                    <div class="zoom-show">
                        <img src="" alt="">
                    </div>
                </div>
                <div class="detail-info">
                    <div class="item-title">西凤金窖</div>
                    <div class="item-price">
                        <span class="now">￥49.00</span><span class="dft">￥69.00</span>
                    </div>
                    <ul class="item-data clearfix">
                        <li class="col-4">销量<span class="txt-theme ml10">27件</span></li>
                        <li class="col-4">好评率<span class="txt-theme ml10">99%</span></li>
                        <li class="col-4">收藏<span class="txt-theme ml10">228人</span></li>
                    </ul>
                    <div class="sku-info">
                        <div class="prop">
                            <div class="dt">包装：</div>
                            <div class="dd">
                                <ul class="chose-img">
                                    <li><a href=""><img src="img1/main/05.jpg" alt=""></a></li>
                                    <li><a class="active" href=""><img src="img1/main/05.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="prop">
                            <div class="dt">度数：</div>
                            <div class="dd">
                                <ul class="chose-common">
                                    <li><a href="">49度</a></li>
                                    <li><a class="active" href="">53度</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="prop">
                            <div class="dt">容量：</div>
                            <div class="dd">
                                <ul class="chose-common">
                                    <li><a href="">450ml</a></li>
                                    <li><a class="active" href="">500ml</a></li>
                                    <li><a class="disable" href="">550ml</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="prop">
                            <div class="dt">数量：</div>
                            <div class="dd">
                                <div class="mod-numbox chose-num" data-max="30">
                                    <span class="count-minus"></span>
                                    <input class="count-input" value="1" type="text" name="num">
                                    <span class="count-plus"></span>
                                </div>
                                <span>（限购30件）</span>
                                <div class="stock">(库存102件)</div>
                            </div>
                        </div>
                    </div>
                    <div class="item-action">
                        <a href="cart.jsp" class="buy-now">立即购买</a>
                        <a href="/cartAdd.do?name=45°西凤金窖(2012-2013年）&price=49.00&num=1&shop=河套酒业&address=广东广州" class="add-cart">加入购物车</a>
                    </div>
                    <div class="item-extend">
                        <!-- <a href="" class="fav"><i class="iconfont icon-star"></i>收藏</a> -->
                        <a href="" class="fav">已收藏</a>
                        <a href="" class="share"><i class="iconfont icon-fenxiang"></i>分享</a>
                    </div>
                </div>
            </div>
            <div class="detail-shop">
                <div class="clearfix">
                    <a class="shop-brand" href="">
                        <img src="uploads\1.png" alt="">
                    </a>
                    <div class="shop-intro">
                        <div class="shop-name">河套酒业</div>
                        <!-- <a class="shop-follow-btn" href="javascript:;"><i class="iconfont icon-jiaguanzhu"></i>关注</a> -->
                        <a class="shop-follow-btn active" href="javascript:;"><span class="showtxt"><i class="iconfont icon-check01"></i>已关注</span><span class="hidetxt">取消关注</span></a>
                        <div class="shop-follow-count"><strong>268</strong>粉丝</div>
                    </div>
                </div>
                <div class="shop-assess clearfix">
                    <div class="col col-3">
                        <div class="tit">描&ensp;述</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">质&ensp;量</div>
                        <div class="point up">
                            <span class="num">4.9</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">服&ensp;务</div>
                        <div class="point down">
                            <span class="num">4.7</span><i class="iconfont">--</i>
                        </div>
                    </div>
                    <div class="col col-3">
                        <div class="tit">发&ensp;货</div>
                        <div class="point">
                            <span class="num">4.8</span><i class="iconfont">--</i>
                        </div>
                    </div>
                </div>
                <ul class="shop-info">
                    <li>所在地区：广东广州</li>
                    <li>商品数量：518</li>
                    <li>销售数量：60285</li>
                    <li>店铺资质：<img class="ico" src="img\ico\approve.png" alt=""></li>
                </ul>
                <a href="shoppage.jsp" class="detail-shop-enter">
                    <i class="iconfont icon-dianpu"></i>进入店铺
                </a>
            </div>
        </div>
        <!-- 商品推荐 -->
        <div class="ui-tabs">
            <span class="item active">店长推荐</span>
        </div>
        <ul class="detail-rec clearfix">
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
            <li>
                <a href="" class="figure"><img src="img1/main/105.jpg" alt=""></a>
                <div class="name"><a href="">50°五粮液股份干一杯475ml*4</a></div>
                <div class="price">￥119.00</div>
            </li>
        </ul>
        <!-- 商品推荐 -->
    </div>
    <div style="width: 1200px; margin: 1px auto">
        <div class="ui-tabs" >
            <span class="item active">用户评价</span>
        </div>
        <div style="height: 130px ;width: 1000px; margin: 0 auto" >
            <div style="width: 100px ;height: 100%; float: left">
                <div style="margin: 20px"><img style="width: 80px;height: 80px" src="img1/main/user.jpg"></div>
            </div>
            <div style=" width: 700px;height: 100% ; float: left">
                <div style="margin: 50px 20px; width: 700px; "><span>心得：趁着活动价，又买了一箱，其实之前的还没喝完,哈哈，酒仙网值得信赖！,酱香突出,老牌名酒,多次购买</span></div>
            </div>
            <div style=" width: 200px;height: 100% ; float: left">
                <div style="margin: 30px 20px"><span>2019-07-09 11:33:25</span></div>
            </div>
            <hr style="clear: both; color: #9d98e8">
        </div>
        <div style=" height: 130px ;width: 1000px; margin: 0 auto" >
            <div style="width: 100px ;height: 100%; float: left">
                <div style="margin: 20px"><img style="width: 80px;height: 80px" src="img1/main/user.jpg"></div>
            </div>
            <div style=" width: 700px;height: 100% ; float: left">
                <div style="margin: 50px 20px; width: 700px; "><span>心得：趁着活动价，又买了一箱，其实之前的还没喝完,哈哈，酒仙网值得信赖！,酱香突出,老牌名酒,多次购买</span></div>
            </div>
            <div style=" width: 200px;height: 100% ; float: left">
                <div style="margin: 30px 20px"><span>2019-07-09 11:33:25</span></div>
            </div>
            <hr style="clear: both; color: #9d98e8">
        </div>
        <div style=" height: 130px ;width: 1000px; margin: 0 auto" >
            <div style="width: 100px ;height: 100%; float: left">
                <div style="margin: 20px"><img style="width: 80px;height: 80px" src="img1/main/user.jpg"></div>
            </div>
            <div style=" width: 700px;height: 100% ; float: left">
                <div style="margin: 50px 20px; width: 700px; "><span>心得：趁着活动价，又买了一箱，其实之前的还没喝完,哈哈，酒仙网值得信赖！,酱香突出,老牌名酒,多次购买</span></div>
            </div>
            <div style=" width: 200px;height: 100% ; float: left">
                <div style="margin: 30px 20px"><span>2019-07-09 11:33:25</span></div>
            </div>
            <hr style="clear: both; color: #9d98e8">
        </div>
        <div style=" height: 130px ;width: 1000px; margin: 0 auto" >
            <div style="width: 100px ;height: 100%; float: left">
                <div style="margin: 20px"><img style="width: 80px;height: 80px" src="img1/main/user.jpg"></div>
            </div>
            <div style=" width: 700px;height: 100% ; float: left">
                <div style="margin: 50px 20px; width: 700px; "><span>心得：趁着活动价，又买了一箱，其实之前的还没喝完,哈哈，酒仙网值得信赖！,酱香突出,老牌名酒,多次购买</span></div>
            </div>
            <div style=" width: 200px;height: 100% ; float: left">
                <div style="margin: 30px 20px"><span>2019-07-09 11:33:25</span></div>
            </div>
            <hr style="clear: both; color: #9d98e8">
        </div>
    </div>

</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\slick\slick.css">
<script src="js\slick\slick.min.js"></script>
<script src="js\global.js"></script>
<script>
    /*商品数量操作*/
    function goodsCount(o){
            if(!(o instanceof Object)) var o={};
            var inputCell = o.inputCell || ".count-input",
                minusCell = o.minusCell || ".count-minus",
                plusCell = o.plusCell || ".count-plus",
                disClass = o.disClass || "disabled";
            return this.each(function(){
                var $wrap = $(this),
                    $input = $(inputCell,$wrap),
                    $minus = $(minusCell,$wrap),
                    $plus = $(plusCell,$wrap),
                    maxnum=parseInt($wrap.attr('data-max')) || false,
                    minnum=$wrap.attr('data-min') || 1,
                    initnum=$input.val() || minnum;
                /*初始*/
                $input.val(initnum);
                checkIlegal();
                function checkIlegal(){
                    var value =parseInt($input.val());

                    //
                     if (maxnum&&value>maxnum) {
                        $input.val(maxnum);
                    }
                    else if (value<minnum) {
                        $input.val(minnum);
                    }
                    if(value<=minnum){
                        $minus.addClass(disClass);
                    }else{
                        $minus.removeClass(disClass);
                    }
                    if (value>=maxnum) {
                        $plus.addClass(disClass);
                    }else {
                        $plus.removeClass(disClass);
                    }

                }
                function checknull() {
                    var value =$input.val();
                    if(value === "" || value === "0"){
                        $input.val(minnum);
                    }
                }
                $input.keyup(function(evt){
                    var value = $(this).val();
                    var newvalue = value.replace(/[^\d]/g,"");
                    $(this).val(newvalue);
                    checknull();
                });
                $input.blur(function(){
                    checknull();
                    checkIlegal();
                })

                $minus.click(function(){
                    minus();
                     checkIlegal();
                });

                $plus.click(function(){
                    add();
                    checkIlegal();
                });

                function add () {
                    var value = $input.val();
                    var plus = parseInt(value)+1;
                    $input.val(plus);
                }
                function minus () {
                    var value = parseInt($input.val());
                    var minus = value-1;
                    $input.val(minus);
                }
            });
        }
        $.fn.goodsCount = goodsCount;
</script>

<script>
    $(function () {

        +function () {
            var index=0,
            bsrc='',
            timer=null,
            box=$('.detail-show'),
            origin=$('.origin-show'),
            bigimg=box.find('.big-pic'),
            tumb=box.find('.thumb-show'),
            tumbItem=tumb.find('.item'),
            zoomup=box.find('.zoomup'),
            zoomshow=box.find('.zoom-show');

            /*图片切换*/
            tumbItem.on('mouseenter',function () {
                index=$(this).index();
                clearTimeout(timer);
                timer=setTimeout(function (){
                    update(index);
                }, 300)

            });

            function update (index) {
                bsrc=tumbItem.eq(index).find('.s-pic').attr('bsrc');
                bigimg.attr('src', bsrc);
                tumbItem.find('.s-pic').removeClass('active').end().eq(index).find('.s-pic').addClass('active');
            }

            update(index);

            if ($('.detail-show .thumb-show .item').length>5) {
                $('.detail-show .thumb-show').slick({
                    slidesToShow: 5,
                    infinite:false
                });
            }

            /*放大镜*/
            origin.on('mouseover mouseout',function (e) {
                if (e.type=="mouseover") {
                    var oX=$(this).offset().left,
                    oY=$(this).offset().top,
                    zX=e.pageX,
                    zY=e.pageY,
                    pW=$(this).outerWidth(),
                    pH=$(this).outerHeight(),
                    zW=zoomup.outerWidth(),
                    zH=zoomup.outerHeight(),
                    scale=pW/zW,
                    zsW=zoomshow.width()*scale,//放大后的宽度
                    factor=zsW/pW

                    zoomshow.find('img').attr('src',bigimg.attr('src')).width(zsW);

                    $(document).on('mousemove.zoom',function (e) {
                        zX=e.pageX-oX- zW/2;
                        zY=e.pageY-oY- zH/2;
                        move();
                    });

                    function move () {
                        zX=zX<=0?0:zX;
                        zX=zX>=pW-zW?pW-zW:zX;
                        zY=zY<=0?0:zY;
                        zY=zY>=pH-zH?pH-zH:zY;
                        zoomup.show().css({top:zY,left:zX});
                        zoomshow.show().find('img').css({top:-zY*factor,left:-zX*factor});
                    }
                }
                else {
                    $(document).off('mousemove.zoom');
                     zoomup.hide()
                     zoomshow.hide();
                }
            });
        }();

        $('.mod-numbox').goodsCount(); //数量加减

        $('.detail-main').zTab({
            tabnav:'.detail-tabs',
            trigger:'click'
        });
    });
</script>
</html>