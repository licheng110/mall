﻿
<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.Cart" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%--    测试--%>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>购物车</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\cart.css" rel="stylesheet">
</head>
<body class="graybg-theme">

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
<!--                    <div class="login-user sub-menu">-->
<!--                        <a class="menu-hd" href="">txtangxia<em></em></a>-->
<!--                        <div class="down">-->
<!--                            <a href="">内容</a>-->
<!--                            <a href="">内容</a>-->
<!--                            <a href="">内容</a>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                    <div class="item"><a href="uc-msg.html">消息（<span class="txt-theme">0</span>）</a></div>-->
                    <div class="logout divider"><a href="login.jsp">退出</a></div>
                    <span class=""></span>
                    <div class="cart"><em></em><a href="cart.jsp">购物车</a></div>
                    <div class="order"><em></em><a href="uc-order.jsp">我的信息</a></div>
                    <div class="help"><em></em><a href="help.jsp">帮助中心</a></div>
                </div>
            </div>
        </div>
        <div class="cart-header wrapper">
            <div class="logo">
                <a href="index.jsp"><img src="img\logo.png" alt="logo"></a>
            </div>
            <div class="step-box">
                <div class="row">
                    <div class="step first active col-3">
                        <span class="num">1</span><span class="line"></span><span class="label">我的购物车</span>
                    </div>
                    <div class="step col-3">
                        <span class="num">2</span><span class="line"></span><span class="label">确认订单信息</span>
                    </div>
                    <div class="step col-3">
                        <span class="num">3</span><span class="line"></span><span class="label">选择支付方式</span>
                    </div>
                    <div class="step last col-3">
                        <span class="num">4</span><span class="line"></span><span class="label">完成付款</span>
                    </div>
                </div>
            </div>
        </div>

    <!--头部-->
    <%
        List<Cart> cList = (List<Cart>)request.getAttribute("cList");
//        List<String> check = new ArrayList<>();
    %>
    <div class="wrapper">
        <form action="/cartConfirm.do" method="get">
        <table class="cart-table">
            <thead>
                <tr class="hd">
                    <th width="30px" class="first"><label class="check"><input id="checkall" type="checkbox" name="all"><span>全选</span></label></th>
                    <th width="430px">商品名称</th>
                    <th width="180px">店铺名称</th>
                    <th width="180px">单价</th>
                    <th width="190px">数量</th>
                    <th width="180px">小计</th>
                    <th width="190px">操作</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for(Cart cart: cList){
                %>
                <tr class="goods">
                    <td class="first"><div class="check"><input type="checkbox" value=<%=cart.getName()%> name="checkbox"></div></td>
                    <td>
                        <div class="info-box">
                            <img src="img1/main/04.jpg" alt="">
                            <div class="info">
                                <div class="name"><%=cart.getName()%></div>
                                <div class="meta"><span><%=cart.getNum()%></span></div>
                            </div>
                        </div>
                    </td>
                    <td><span><%=cart.getShop()%></span></td>
                    <td>￥<span class="unitprice"><%=cart.getPrice()%></span></td>
                    <td>
                        <div class="mod-numbox cart-numbox" data-max="30">
                            <span class="count-minus"></span>
                            <input class="count-input" value="1" type="text" name="num">
                            <span class="count-plus"></span>
                        </div>
                    </td>
                    <td class="txt-error">￥<span class="price"><%=cart.getPrice()%></span></td>
                    <td><a href="/cartDelete.do?productName=<%=cart.getName()%>" class="del iconfont icon-shanchu"></a></td>
                </tr>
                <%
                    }
                %>
            </tbody>

        </table>

        <div class="cart-total-box">
            <div class="cart-total">
                <div class="fl">
                    <div class="back"><a href="">继续购物</a></div><div class="count">共 <span class="num" id="totalNum">1</span> 件商品， 已选择 <span class="num" id="selectedNum">1</span> 件</div>
                </div>
                <div class="fr">
                    <div class="price">
                        合计（不含运费）：<span id="totalMoney">988.00</span>元
                    </div>
                    <input class="go-account ui-btn-theme" type="submit" value="去结算">
                </div>
            </div>
        </div>

        </form>
    </div>

    <!--脚部-->
    <div class="fatfooter">

    </div>
    <!--脚部-->
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
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

        $('.mod-numbox').goodsCount(); //数量加减
        $('.check input').iCheck({
            checkboxClass: 'sty1-checkbox'
        });

        +function () {
            var box=$('.cart-table');
            function caculate () {
                var selectNum=0,
                totalNum=0,
                totalPrice=0;
                checkNum=0,
                itemlen=box.find('.goods:not(.goods-useless)').length;
                $('.goods:not(.goods-useless)').each(function () {
                    var $check=$(this).find('.check input'),
                    $price=$(this).find('.price'),
                    $count=$(this).find('.count-input'),
                    unitp=parseFloat($(this).find('.unitprice').text()),
                    num=parseInt($count.val());
                    var price=unitp*num;
                    $price.text(price.toFixed(2)); //设置单个商品总价
                    totalNum+=num;
                    if ($check.is(':checked')) {
                        selectNum+=num;
                        totalPrice+=price;
                        checkNum+=1;
                    }

                });
                $('#selectedNum').text(selectNum);
                $('#totalNum').text(totalNum);
                $('#totalMoney').text(totalPrice.toFixed(2));
                if (itemlen==0) {return false;}
                if (checkNum<itemlen) {
                    $('#checkall').iCheck('uncheck');
                }
                else {
                   $('#checkall').iCheck('check');
               }
             }
             function shopaccess () {
                $('.shop').each(function(index, el) {
                    var next=$(this).parents('tbody').next('tbody');
                    if (next.find('.goods:not(.goods-useless)').length<=0) {
                        $(this).find('.check input').iCheck('disable');
                        return;
                    }
                });
             }
             function shopcheck (obj) {
                var shop=obj.prev('tbody').find('.shop'),
                    goods=obj.find('.goods:not(.goods-useless)'),
                    len=goods.length,
                    cur=0;
                    goods.each(function(index, el) {
                        if ($(this).find('.check input').is(':checked')) {
                            cur++;
                        }
                    });
                    if (cur==len) {
                        shop.find('.check input').iCheck('check')
                    }
                    else {
                        shop.find('.check input').iCheck('uncheck')
                    }
             }

             $('.count-input').on('change blur',function () {
                    caculate();
             });
             $('.mod-numbox span').on('click',function () {
                    caculate();
             });
             box.find('.goods .check input').on('ifToggled',function () {
                    caculate();
                    var gbox=$(this).parents('tbody');
                    shopcheck(gbox);
             });
             $('#checkall').on('ifClicked',function () {
                //全选
                if ($(this).is(':checked')) {
                    $('.check input').iCheck('uncheck');
                }
                else {
                    $('.check input').iCheck('check');
                }
                caculate();
             })

             box.find('.shop .check input').on('ifClicked',function () {
                //店铺全选

                var curItem=$(this).parents('tbody').next('tbody').find('.goods');

                if ($(this).is(':checked')) {
                    curItem.find('.check input').iCheck('uncheck');
                }
                else {
                    curItem.find('.check input').iCheck('check');
                }
                caculate();
             });
             //删除
             $('.goods .del').on('click',function () {
                    var self=$(this),
                    shop=self.parents('tbody').prev('tbody'),
                    gbox=self.parents('tbody');
                    self.parents('.goods').remove();
                    var len=gbox.find('.goods').length;
                    if (len<=0) {
                       shop.remove();
                    }
                    caculate();
                    shopaccess();
                    shopcheck(gbox);
             });
             // $('#delall').on('click',function () {
             //    $('.shop:not(.goods-useless) .check input').each(function () {
             //        if ($(this).prop('checked')==true) {
             //            $(this).parents('.cart-item').remove();
             //        }
             //    });
             //    caculate();
             //    shopaccess()
             // });

             box.find('.check input').iCheck('check',true);//初始化全选测试

            caculate();
            shopaccess();
        }();


        //结算固定显示
        $(window).on('load resize scroll',function () {
            var bar=$('.cart-total'),
            barH=bar.outerHeight(),
            barWrap=bar.parent(),
            otop=barWrap.offset().top,
            oleft=barWrap.offset().left,
            sTop=$(this).scrollTop(),
            wh=$(this).height();
            if (sTop+wh-barH<otop) {
                bar.addClass('fixed');
                var left2=oleft-$(this).scrollLeft()
                bar.css('left',left2);
            }
            else {
                bar.removeClass('fixed');
            }
        });
    });
</script>
</html>