<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>我的收藏</title>
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
                     <li><a  href="/getzhuce.do">我的信息</a></li>
                     <li><a href="/alladdress.do">收货地址</a></li>
                 	   <li><a href="uc-safe.jsp">账户安全</a></li>
                     <li><a href="uc-spend.jsp">消费记录</a></li>
                  </ul> 
  				<div class="tit">订单中心</div>
                  <ul class="sublist">
                      <li><a href="uc-order.jsp">我的订单</a></li>
  					<li><a href="uc-evaluate.jsp">商品评价</a></li>
                      <li><a class="active" href="uc-fav.jsp">我的收藏</a></li>
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
                    <div class="uc-bigtit">我的收藏</div>
                    <div class="uc-panel-bd">
                        <div class="uc-tabs">
                            <a class="item active" href="uc-fav.jsp">我收藏的商品</a>
                            <a class="item" href="uc-fav-shop.jsp">我收藏的店铺</a>
                        </div>
                        <table class="uc-table">
                            <tr class="hd">
                                <td width="16" class="check"><input type="checkbox"></td>
                                <td widtd="360" class="align-left">
                                    商品名称
                                </td>
                                <td width="100">价格</td>
                                <td width="100">库存情况</td>
                                <td width="120">操作</td>
                                <td><a href="" class="del iconfont icon-shanchu"></a></td>
                            </tr>
                            <tr class="fav-goods">
                                <td class="check"><input type="checkbox"></td>
                                <td class="item">
                                    <img src="" alt=""><span class="name">西风</span>
                                </td>
                                <td><span class="text-theme fwb">298元</span></td>
                                <td>现货</td>
                                <td><a href="" class="ui-btn-theme uc-btn-md mb5">加入购物车</a><br><a class="text-muted" href="">取消收藏</a></td>
                                <td><a href="" class="text-warning">删除</a></td>
                            </tr>


                        </table>
                        <div class="pages">
                            <a class="page prev" href="">上一页</a>
                            <span class="cur-page">1</span>
							<a class="page" href="">2</a>
                            <a class="page" href="">3</a>
                            <a class="page" href="">4</a>
                            <i class="page-split">...</i>
                            <a class="page" href="">71</a>
                            <a class="page next" href="">下一页</a>
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
<script src="js\global.js"></script>
<script>
$(function () {
    $('.check input').iCheck({
            checkboxClass: 'sty1-checkbox'
        });
});
</script>
</html>