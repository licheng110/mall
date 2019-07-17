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
                       <li><a href="/getzhuce.do">我的信息</a></li>
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
    					<li><a class="active"  href="uc-apply-refund.jsp">退款/退货</a></li>
                        <li><a href="uc-refund.jsp">取消订单记录</a></li>
                    </ul>               
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">退货</div>
                    <div class="uc-panel-bd">
                        <table class="refund-returns-list">
                            <tr class="head bd-t">
                                <td width="370" class="first">商品信息</td>
                                <td colspan="3"></td>
                            </tr>
           <%
               Order order = (Order) request.getAttribute("order");

           %>
                            <tr class="item-head">
                                <td colspan="4">
                                    <div class="fl">
                                        退货编号: <%=order.getOrder_no()%> <span class="ml15">商家：<a class="sname" href=""><%=order.getShop()%></a></span>
                                    </div>
                                    <div class="fr">申请时间：<%=order.getCreate_time()%>   </div>
                                </td>
                            </tr>
                            <tr class="item">
                                <td class="first">
                                    <div class="good-desc">
                                        <img class="gimg" src="uploads\108.jpg" alt="">
                                        <div class="ginfo">
                                            <%=order.getName()%><br>订单编号：<%=order.getOrder_no()%>
                                        </div>
                                    </div>
                                </td>
                                <td>单价：<%=order.getPrice()%>元×1</td>
                                <td>合计：<span class="text-danger"><%=order.getPrice()%>元</span></td>
                                <td width="160">
                                    <span class="btn-get-wl">物流信息<i class="caret"></i>
                                        <div class="wl-toggle">
                                            <div class="inner-box">
                                                <i class="arrow"></i>
                                                <div class="wl-hd">百汇世通:846721123123</div>
                                                <div class="wl-item active">已签收,签收凭取货吗签收，感谢使用百汇世通及速递易【自提柜】期待再次为你服务</div>
                                                <div class="wl-item">已签收,签收凭取货吗签收，感谢使用百汇世通及速递易【自提柜】期待再次为你服务</div>
                                                <div class="wl-item">以上为最新信息跟踪信息 <a class="text-info" href="">查看全部</a></div>
                                            </div>
                                        </div>
                                    </span>
                                </td>
                            </tr>
                        </table>
                        <form action="/submitRefundApply.do" method="get">
                            <div class="refund-returns-panel mt15">
                                <div class="tabs">
                                    <a class="item" href="">我要退款</a>
                                </div>
                                <div class="panel-bd">
                                    <div class="control-group">
                                        <div class="hd"><em>*</em>是否收货：</div>
                                        <div class="bd">
                                            <label class="check"><input type="radio" name="receiptState" value="未收到货">未收到货</label>
                                            <label class="check ml25"><input type="radio" name="receiptState" value="已收到货">已收到货</label>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="hd"><em>*</em>退款原因：</div>
                                        <div class="bd">
                                            <select name="refundReason" id="" class="ui-txtin">
                                                <option value="请选择">请选择</option>
                                                <option value="产品损坏">产品损坏</option>
                                                <option value="质量不达标">质量不达标</option>
                                                <option value="产品丢失">产品丢失</option>
                                                <option value="未及时发货">未及时发货</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="hd"><em>*</em>退款金额：</div>
                                        <div class="bd"><input class="ui-txtin" type="text" name="refundAmount" value="499.00"><span class="ml10 text-muted">最多499.00元</span></div>
                                    </div>
<%--                                    <div class="control-group">--%>
<%--                                        <div class="hd vat">退款说明：</div>--%>
<%--                                        <div class="bd"><textarea name="description" class="ui-txtin" style="width:560px;height:90px;"></textarea><span class="vab dib ml10">还可以输入200字</span></div>--%>
<%--                                    </div>--%>
<%--                                    <div class="control-group">--%>
<%--                                        <div class="hd vat">上传凭证：</div>--%>
<%--                                        <div class="bd">--%>
<%--                                            <label class="ui-uploads">--%>
<%--                                            <span class="upload-img"></span>--%>
<%--                                            <input type="file" name="updatePicture" value="">--%>
<%--                                        </label>--%>
<%--                                            <div class="mt10 text-muted">每张图片大小不超过5M，最多3张，支持gif、jpg、png、bmp格式</div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
                                    <%
                                        request.setAttribute("orderNo",order.getOrder_no());
                                    %>
<%--                                    <script type="text/javascript">--%>
<%--                                        function insertForm() {--%>
<%--                                            var des = $(".ui-txtin").val();--%>
<%--                                            description = des;--%>
<%--                                            document.insertBefore().submit();--%>
<%--                                        }--%>
<%--                                    </script>--%>
                                    <div class="submit-group">
                                        <input class="ui-btn-theme uc-btn-lg" type="submit" value="提交退款申请">
                                    </div>
                                </div>
                            </div>
                        </form>
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
<script src="${pageContext.request.contextPath}\js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\laydate\laydate.js"></script>
<script src="js\global.js"></script>
<script>
    $('.check').iCheck({
            radioClass: 'sty2-radio'
    });
</script>
</html>