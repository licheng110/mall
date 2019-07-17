<%@ page import="com.mall.service.Cart" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>确认订单</title>
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
                <div class="step active col-3">
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
    %>
    <div class="wrapper confirm-wrap">
        <div class="confirm-tit">
            <span class="tit">选择收货地址 :</span>
        </div>

<%--        <div class="confirm-address clearfix">--%>
<%--            <%--%>
<%--                for(Cart cart : cList){--%>
<%--            %>--%>
<%--            <div class="col col-4 active">--%>
<%--                <div class="item">--%>
<%--                    <div class="action">--%>
<%--                        <a class="edit" href="javascript:;">修改</a>--%>
<%--                    </div>--%>
<%--                    <div class="info">--%>
<%--                        <div class="ellipsis"><img src="img\ico\user.jpg" alt=""><%=cart.getAddress()%>（唐霞 收）</div>--%>
<%--                        <div class="ellipsis"><img src="img\ico\tel.jpg" alt=""><%=cart.getPhone()%></div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <%--%>
<%--                }--%>
<%--            %>--%>

        <div class="confirm-address clearfix">
            <div class="col col-4" id="a1">
                <div class="item active" >
                    <div class="action">
                        <a class="edit" href="javascript:;">修改</a>
                    </div>
                    <div class="info">
                        <div class="ellipsis"><img src="img\ico\user.jpg" alt="">山西省太原市尖草坪区（唐霞 收）</div>
                        <div class="ellipsis"><img src="img\ico\dizhi.jpg" alt="">学院路3号中北大学%></div>
                        <div class="ellipsis"><img src="img\ico\tel.jpg" alt="">11111</div>
                    </div>
                </div>
            </div>

            <div class="col col-4 id="a2"">
                <div class="item">
                    <div class="action">
                        <a class="edit" href="javascript:;">修改</a>
                    </div>
                    <div class="info">
                        <div class="ellipsis"><img src="img\ico\user.jpg" alt="">山西省忻州市五台县（唐霞 收）</div>
                        <div class="ellipsis"><img src="img\ico\dizhi.jpg" alt="">关羽庙110号</div>
                        <div class="ellipsis"><img src="img\ico\tel.jpg" alt="">22222</div>
                    </div>
                </div>
            </div>

            <div class="col col-4" id="a3">
                <div class="item">
                    <div class="action">
                        <a class="edit" href="javascript:;">修改</a>
                    </div>
                    <div class="info">
                        <div class="ellipsis"><img src="img\ico\user.jpg" alt="">广东广州（唐霞 收）</div>
                        <div class="ellipsis"><img src="img\ico\dizhi.jpg" alt="">学院路3号中北大学</div>
                        <div class="ellipsis"><img src="img\ico\tel.jpg" alt="">33333</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="confirm-address-bar" style="display: none;">
            <a href="javascript:;" class="drop" data-action="drop">显示全部地址</a>
        </div>
        <div class="confirm-tit">
           <span class="tit">确认商品信息:</span><div class="right"><a class="back" href="">返回购物车></a></div>
        </div>
        <%
            for(Cart cart : cList){
        %>
        <div class="confirm-goods">
            <div class="confirm-goods-hd clearfix">
                <div class="col col1">店铺：<%=cart.getShop()%></div>
                <div class="col col2">单价（元）</div>
                <div class="col col3">数量</div>
                <div class="col col4">小计（元）</div>
            </div>
            <div class="confirm-goods-bd">
                <div class="goods clearfix">
                    <div class="col col1">
                        <img src="img1/main/04.jpg" alt="">
                        <div class="info">
                            <div class="name"><%=cart.getName()%></div>
                            <div class="meta"><span><%=cart.getNum()%>瓶</span></div>
                        </div>
                    </div>
                    <div class="col col2">￥<%=cart.getPrice()%></div>
                    <div class="col col3"><%=cart.getNum()%></div>
                    <div class="col col4">￥<%=cart.getPrice()%></div>
                </div>
            </div>
            <div class="confirm-goods-ft clearfix">
                <div class="fl"><span class="vm-ib">买家留言： </span><textarea class="ui-txtin" style="width: 410px;" name="" placeholder="在此输入给商家的留言"></textarea></div>
                <div class="fr">店铺合计(含运费): ¥1922.00</div>
            </div>
        </div>
        <%
            }
        %>
         <div class="confirm-total">
            <div class="box">
                <div class="item">应付总额：<strong> ¥
                    <%
                        double total = 0;
                        for (Cart cart : cList){
                            total += cart.getPrice();
                        }
                    %>
                    <%=total%>
                </strong></div>
                <a class="ui-btn-theme go-charge" href="/cartPay.do">去结算</a>
            </div>
        </div>
    </div>

    <!--脚部-->
    <div class="fatfooter">

    </div>
    <!--脚部-->
    <div id="addressform" style="display:none" class="layer-address">
        <form action="">
            <div class="control-group">
                <div class="hd">
                    收货人姓名：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text">
                </div>
            </div>
            <div class="control-group">
                <div class="hd">
                    联系电话：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text">
                </div>
                <div class="hd">或固定电话：</div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text">
                </div>
            </div>
            <div class="control-group">
                <div class="hd vat">
                    所在地区：
                </div>
                <div class="bd">
                    <select class="ui-txtin ui-txtin-thin" style="width: 180px;">
                        <option value="">选择省</option>
                    </select>
                    <div class="mt10">
                        <input class="ui-txtin ui-txtin-thin" style="width: 560px;" type="text"placeholder="请填写具体地址，不需要重复填写省/市/区">
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="hd vat">
                    邮政编码：
                </div>
                <div class="bd">
                    <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text">
                </div>
            </div>
            <div class="control-bottom clearfix">
                <a href="" class="fl btn ui-btn-theme">保存</a><a href="" class="fr btn ui-btn cancle">取消</a>
            </div>
        </form>
    </div>
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\layer\layer.js"></script>
<script src="js\global.js"></script>
<script>
    $(document).ready(function(){
        $("#a1>div").click(function () {

            $("#a1>.item").addClass("active");
            $("#a2>.item #a3>.item").removeClass("active");
        })
        $("#a2>div").click(function () {

            $("#a2>.item").addClass("active");
            $("#a1>.item #a3>.item").removeClass("active");
        })
        $("#a2>div").click(function () {

            $("#a3>.item").addClass("active");
            $("#a1>.item #a2>.item").removeClass("active");
        })
        // for(var i = 0 ; i < 3 ; i++){
        //     $(".col").eq(i).click(function () {
        //         $(".col").eq(i).$("div").addClass("active");
        //     })
        // }
    });
</script>
<script>
//这里不使用自带按钮，因为设计按钮较特殊，不准备作为通用样式
$('.confirm-address .edit,.confirm-address .add').on('click',function () {
    layer.open({
        type: 1,
        skin: 'layui-layer-seaing',
        title: '标题',
        area: ['720px', 'auto'],
        content: $('#addressform')
        //btn: ['按钮一', '按钮二']
    });
});
$(document.body).on('click','.layer-address .cancle',function () {
    layer.closeAll();
    return false;
})

//
function juggeAddressNum () {
    var col=$('.confirm-address .col'),
    cH=col.height();
    $('.confirm-address').height(cH)
    if (col.length>3) {
        $('.confirm-address-bar').show();
    }
    else {
        $('.confirm-address-bar').hide();
    }
}
juggeAddressNum();
zAction.add({
    'drop':function () {
        $('.confirm-address').height('auto')
        var h=$('.confirm-address').height()
        juggeAddressNum();
        $('.confirm-address').animate({height: h}, 300);
        $(this).parent().remove();
    }
});
// <a href="javascript:;" class="drop" data-action="drop">显示全部地址</a>
</script>
</html>