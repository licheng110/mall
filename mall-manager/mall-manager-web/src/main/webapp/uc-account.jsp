<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>个人信息</title>
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
                        <a class="active" href="/selectinfo.do">个人信息</a>
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
                       <li><a class="active" href="/getzhuce.do">我的信息</a></li>
                       <li><a href="/alladdress.do">收货地址</a></li>
                   	   <li><a href="uc-safe.jsp">账户安全</a></li>
                       <li><a href="uc-spend.jsp">消费记录</a></li>
                    </ul> 
					<div class="tit">订单中心</div>
                    <ul class="sublist">
                        <li><a href="/orderSelect.do">我的订单</a></li>
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
                    <div class="uc-bigtit">个人信息</div>
                    <div class="uc-panel-bd">
                        <div class="account-info clearfix">
                            <div class="col-headpic">
                                <div class="pic-wrap">
                                    <div class="label">头像</div>
                                    <div class="picbox">
                                        <img src="img\uc\headpic.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                            <%
                           User user =(User)request.getAttribute("user");
                            %>
                            <form action="/info.do?_method=update" method="post">
                            <div class="col-userinfo">
                                <div class="control-group">
                                    <div class="hd">真实姓名：</div>
                                    <div class="bd"><input class="ui-txtin" type="text" name="truename" value=""></div>
                                </div>
                                <div class="control-group">
                                    <div class="hd">昵称：</div>
                                    <div class="bd"><input class="ui-txtin" type="text" name="username" value="<%=user.getUsername()%>"></div>
                                </div>
                                <div class="control-group">
                                    <div class="hd">生日：</div>
                                    <div bgcolor="yellow" class="bd"><input class="ui-txtin" type="date" name="birthday"></div>
                                </div>
                                <div class="control-group">
                                    <div class="hd">性别：</div>
                                    <div class="bd">
                                        <label class="check"><input type="radio" name="sex" value="man">男</label>
                                        <label class="check ml25"><input type="radio" name="sex" value="women">女</label>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="hd">电话：</div>
                                    <div class="bd"><input class="ui-txtin" type="text" name="phone" value="<%=user.getPhone()%>"></div>
                                </div>

                                <div class="control-group">
                                    <div class="hd">邮箱：</div>
                                    <div class="bd">
                                        <div class="text-black"><input type="text" name="email"></div>
                                    </div>
                                </div>
                                <div class="control-submit">
                                    <input class="ui-btn-theme submit" type="submit" value="确认">
                                </div>
                                <a href="" value="成为商家" style="height: 100px; width: 100px"></a>
                            </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\laydate\laydate.js"></script>
<script src="js\layer\layer.js"></script>
<script src="js\global.js"></script>
<script>
$(function () {
     $('.check').iCheck({
            radioClass: 'sty2-radio'
    });

     laydate({
        elem: '#birthday',
        format: 'YYYY/MM',
        festival: true
    });
});
</script>
</html>