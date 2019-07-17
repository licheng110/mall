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
    <title>支付</title>
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
                    <div class="order"><em></em><a href="/selectinfo.do">我的信息</a></div>
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
                    <div class="step active col-3">
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
    <div class="wrapper">
        <div class="pay-wrap">
            <div class="order-result">
                <div class="section clearfix">
                    <img src="img\ico\order-success.jpg" class="ico">
                    <div class="titbox">
                        <div class="tit">订单提交成功，应付金额 1936.00 元</div>
                    </div>
                    <%
                        for(Cart cart : cList){
                    %>
                    <div class="stit">订单号：<%=cart.getOrder_num()%>    请您在 1 日 内完成支付，否则订单会被自动取消</div>
                    <div class="mt20">
                        <div class="meta">
                            <div class="hd">商品</div>
                            <div class="bd"><%=cart.getName()%></div>
                        </div>
                        <div class="meta">
                            <div class="hd">收货地址</div>
                            <div class="bd"><%=cart.getAddress()%>&nbsp;<%=cart.getSpecific_addr()%>  (提现 收) <%=cart.getPhone()%> <a href="confirm-order.jsp">[修改]</a></div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
        <div class="pay-wrap-tit">
            在线支付
        </div>
        <div class="pay-wrap">
            <div class="pay-way">
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img src="img\pay\zfb.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img src="img\pay\weixin.jpg"></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\zgyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\jsyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\nyyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\gsyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\jtyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\zsyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\yzcxyh.jpg"></label>
                    </div>
                    <div class="col col-3">
                        <label><input class="check" type="radio" name="a"><img class="bd" src="img\pay\xyyy.jpg"></label>
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-panel">
            <a href="" class="go-next ui-btn-theme">下一步</a>
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
<script src="js\global.js"></script>
<script>
    $('.check').iCheck({
            radioClass: 'sty1-radio'
    });
</script>
</html>