<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.Order" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>退款/退货</title>
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
                      <li><a class="active" href="uc-refund.jsp">取消订单记录</a></li>
                  </ul>               
              </div>
          </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">退货</div>
                    <div class="uc-panel-bd">
                        <div class="uc-sort">
                            <div class="uc-tabs">
                                <a class="item active" href="uc-refund.jsp">退货申请</a>
                            </div>
                            <div class="uc-search">
                                <form action="">
                                    <input type="text" class="sch-input" placeholder="输入商品名称,订单号，商品编号">
                                    <button class="sch-btn"><i class="iconfont icon-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <table class="refund-returns-list">
                            <tr class="head bd-t">
                                <td width="370" class="first">商品信息</td>
                                <td>退款金额（元）</td>
                                <td>审核状态</td>
                                <td>平台确认</td>
                                <td width="140">操作</td>
                            </tr>
                            <%
                                List<Order> oList = (List<Order>) request.getAttribute("oList");
                            %>
                            <%
                                for(Order order : oList){
                            %>
                            <tr class="item-head">
                                <td colspan="5">
                                    <div class="fl">
                                        退货编号: <%=order.getOrder_no()%> <span class="ml15">商家：<a class="sname" href=""><%=order.getShop()%></a></span>
                                    </div>
                                    <div class="fr">申请时间：<%=order.getCreate_time()%>   </div>
                                </td>
                            </tr>
                            <tr class="item">
                                <td class="first">
                                    <div class="good-desc">
                                        <img class="gimg" src="uploads\105.jpg" alt="">
                                        <div class="ginfo">
                                            <%=order.getShop()%><br>订单编号：<%=order.getOrder_no()%>
                                        </div>
                                    </div>
                                </td>
                                <td><span class="text-danger"><%=order.getPrice()%>元</span></td>
                                <td>待审核</td>
                                <td>无</td>
                                <td class="last"><a href="" class="ui-btn-theme uc-btn-md">查看</a></td>
                            </tr>
                            <tr class="blank"></tr>
                            <%
                                }
                            %>
                        </table>
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