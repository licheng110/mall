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
		                   <li><a class="active" href="uc-spend.jsp">消费记录</a></li>
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
		                    <li><a href="uc-refund.jsp">取消订单记录</a></li>
		                </ul>               
		            </div>
		        </div>		

				<div class="uc-content">
					<div class="uc-panel">
						<div class="uc-bigtit">消费记录</div>
						<div class="uc-panel-bd">

							<table class="uc-table">
								<thead>
								<td>
								</td><th></th>
								<th></th>
								<th width="120"></th>
								</thead>
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
										<a class="text-info" href="uc-order-detail.jsp">订单详情</a></br>
										<a class="text-info" href="">查看物流</a></br></br></br>
									</td>
									<td>
										<span class="ui-btn-theme uc-btn-md show">追加评论</span></br></br></br></br></br>
									</td>
								</tr>
								<tr class="hd order-meta discuss" style="display: none" >
									<td colspan="4">
										<textarea style="width: 500px; height: 200px"></textarea><br>
										<input style="margin: 0px 50px" class="ui-btn-theme uc-btn-md" type="button" value="提交评论">
										<input style="margin: 0px 50px" class="ui-btn-theme uc-btn-md hide" type="button" value="取消">
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
										<a class="text-info" href="uc-order-detail.jsp">订单详情</a></br>
										<a class="text-info" href="">查看物流</a></br></br></br>
									</td>
									<td>
										<a href="" class="ui-btn-theme uc-btn-md">追加评论</a></br></br></br></br></br>
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
										<a class="text-info" href="uc-order-detail.jsp">订单详情</a></br>
										<a class="text-info" href="">查看物流</a></br></br></br>
									</td>
									<td>
										<a href="" class="ui-btn-theme uc-btn-md">追加评论</a></br></br></br></br></br>
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

							<!--							<div class="ta-c">-->
<!--								<ul class="pagination">-->
<!--									<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>-->
<!--									<li class="active"><a href="#">1 <span class="sr-only"></span></a></li>-->
<!--									<li><a href="#">2</a></li>-->
<!--									<li><a href="#">3</a></li>-->
<!--									<li><a href="#">4</a></li>-->
<!--									<li><a href="#">5</a></li>-->
<!--									<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>-->
<!--								</ul>-->
<!--							</div>-->
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
	<script type="text/javascript">
		$(document).ready(function(){
			$(".show").click(function(){
				$(".discuss").show();
			});
			$(".hide").click(function(){
				$(".discuss").hide();
			});
		});
	</script>
</html>
