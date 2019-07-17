<%@ page import="com.mall.service.Order" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>订单</title>
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
                       <a href="uc-account.jsp">个人信息</a>
                       <a href="uc-address.jsp">收货地址</a>
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
                      <li><a href="uc-address.jsp">收货地址</a></li>
                  	   <li><a href="uc-safe.jsp">账户安全</a></li>
                      <li><a href="uc-spend.jsp">消费记录</a></li>
                   </ul> 
   				<div class="tit">订单中心</div>
                   <ul class="sublist">
                       <li><a class="active" href="/orderSelect.do">我的订单</a></li>
   					<li><a href="uc-evaluate.jsp">商品评价</a></li>
                       <li><a href="uc-fav.jsp">我的收藏</a></li>
                       <li><a href="uc-footprint.jsp">浏览历史</a></li>
                   </ul>
                   <div class="tit">客户服务</div>
                   <ul class="sublist">
   					<li><a href="uc-apply-refund.jsp">退款/退货</a></li>
                       <li><a href="/refund.do">取消订单记录</a></li>
                   </ul>               
               </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">我的订单</div>
                    <div class="uc-panel-bd">
                        <div class="uc-sort">
                            <div class="uc-tabs">
                                <a class="item active" href="uc-order.jsp">所有订单</a>
                                <a class="item" href="uc-order-unpaid.jsp">待付款</a>
                                <a class="item" href="uc-order-unreceived.jsp">待收货</a>
                                <a class="item" href="uc-order-unevalue.jsp">待评价</a>
                            </div>
                            <div class="uc-search">
                                <form action="">
                                    <input type="text" class="sch-input" placeholder="输入商品名称,订单号，商品编号">
                                    <button class="sch-btn"><i class="iconfont icon-search"></i></button>
                                </form>
                            </div>
                        </div>
                        <table class="uc-table">
                            <thead>
                                <td></td>
                                <th></th>
                                <th></th>
                                <th width="120"></th>
                            </thead>
<%
    List<Order> oList = (List<Order>) request.getAttribute("oList");
%>
  <%
      for(Order order : oList){
  %>
                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left"><%=order.getCreate_time()%>   订单号: <%=order.getOrder_no()%></div>
                                    <div class="right">店铺：<a href=""><%=order.getShop()%></a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="uploads\106.jpg" alt="">
                                        <%
                                            String orderNo = order.getOrder_no();
                                            session.setAttribute("orderNo",orderNo);
                                            if("待收货".equals(order.getReceipt_state())){
                                        %>
                                            <a class="text-info refund" href="/orderRefund.do?orderNo=<%=order.getOrder_no()%>">申请退货</a>
                                        <%
                                            }
                                        %>
                                        <div class="info">
                                            <div><%=order.getName()%></div>
                                            <div><%=order.getPrice()%>元×1</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    金额：<span class="text-theme fwb">298.00元</span>
                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br>
                                    <a class="text-info" href="uc-order-detail.jsp">订单详情</a><br>
                                    <a class="text-info" href="">查看物流</a>
                                </td>
                                <td>
                                    <a href="uc-order-detail.jsp" class="ui-btn-theme uc-btn-md">去付款</a>
                                    <a href="uc-order.jsp" class="ui-btn-low ui-btn-hollow uc-btn-md mt10">取消订单</a>
                                </td>
                            </tr>
<%
    }
%>
                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left">2016-05-29   订单号: 1947584672162364</div>
                                    <div class="right">店铺：<a href="">西风旗舰店</a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="uploads\106.jpg" alt="">
                                        <a class="text-info refund" href="uc-apply-refund.jsp">申请退货</a>
                                        <div class="info">
                                            <div>西风</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    金额：<span class="text-theme fwb">298.00元</span>
                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br>
                                    <a class="text-info" href="uc-order-detail.jsp">订单详情</a><br>
                                    <a class="text-info" href="">查看物流</a>
                                </td>
                                <td>
                                    <div class="time-left"><i class="iconfont icon-shijian"></i>还剩2天8时</div>
                                    <a href="" class="ui-btn-theme uc-btn-md">确认收货</a>
                                </td>
                            </tr>
                            <tr class="hd order-meta">
                                <td colspan="4">
                                    <div class="left">2016-05-29   订单号: 1947584672162364</div>
                                    <div class="right">店铺：<a href="">西风旗舰店</a> <span class="del iconfont icon-shanchu"></span></div>
                                </td>
                            </tr>
                            <tr class="order-goods">
                                <td>
                                    <div class="goods-info">
                                        <img class="figure" src="uploads\106.jpg" alt="">
                                        <a class="text-info refund" href="uc-apply-refund.jsp">申请退货</a>
                                        <div class="info">
                                            <div>西风</div>
                                            <div>499元×1</div>
                                        </div>
                                    </div></br></br></br></br></br></br>
                                </td>
                                <td>
                                    <!-- 金额：<span class="text-theme fwb">298.00元</span> -->
                                    金额：<div class="text-theme fwb">298.00元</div></br></br></br>

                                </td>
                                <td>
                                    <span class="status">快件已签收</span><br>
                                    <a class="text-info" href="uc-order-detail.jsp">订单详情</a></br></br></br>
                                </td>
                                <td>
                                    <a href="" class="ui-btn-theme uc-btn-md">评论</a></br></br></br></br></br>
                                </td>
                            </tr>
                        </table>
                        <div class="pages">
                            <a class="page prev" href="">上一页</a>
                            <a class="page" href="">1</a>
                            <span class="cur-page">2</span>
                            <a class="page" href="">3</a>
                            <a class="page" href="">4</a>
                            <i class="page-split">...</i>
                            <a class="page" href="">71</a>
                            <a class="page next" href="">下一页</a>
                        </div>

<!--                        <div class="ta-c">-->
<!--                            <ul class="pagination">-->
<!--                                <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>-->
<!--                                <li class="active"><a href="#">1 <span class="sr-only"></span></a></li>-->
<!--                                <li><a href="#">2</a></li>-->
<!--                                <li><a href="#">3</a></li>-->
<!--                                <li><a href="#">4</a></li>-->
<!--                                <li><a href="#">5</a></li>-->
<!--                                <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>-->
<!--                             </ul>-->
<!--                        </div>-->
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
<script src="js\global.js"></script>
<script>

</script>
</html>