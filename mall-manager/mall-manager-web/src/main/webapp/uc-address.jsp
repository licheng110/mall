<%@ page import="java.util.List" %>
<%@ page import="com.mall.service.Address" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>收货地址</title>
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
						<a href="uc-safe.html">安全设置</a>                       
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
            </ul>
            <div class="schbox">
                <form action="">
                    <input class="search-txt" type="text">
                    <button class="search-btn">搜索</button>
                    <!-- <div class="suggest-box"> -->
					<div class="toggle-cont">
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
                       <li><a href="/getzhuce.do">我的信息</a></li>
                       <li><a href="/alladdress.do">收货地址</a></li>
                   	   <li><a href="uc-safe.jsp">账户安全</a></li>
                       <li><a href="uc-spend.html">消费记录</a></li>
                    </ul> 
					<div class="tit">订单中心</div>
                    <ul class="sublist">
                        <li><a href="uc-order.html">我的订单</a></li>
						<li><a href="uc-evaluate.html">商品评价</a></li>
                        <li><a href="uc-fav.html">我的收藏</a></li>
                        <li><a href="uc-footprint.html">浏览历史</a></li>
                    </ul>
                    <div class="tit">客户服务</div>
                    <ul class="sublist">
						<li><a href="uc-apply-refund.html">退款/退货</a></li>
                        <li><a href="uc-refund.html">取消订单记录</a></li>
                    </ul>               
                </div>
            </div>
            <div class="uc-content">
                <div class="uc-panel">
                    <div class="uc-bigtit">收货地址</div>
                    <div class="uc-panel-bd">


                            <div class="address-list">
                                <div class="col col-4">
                                    <a class="item va-m-box ta-c add" id="show">
                                        <div class="add-new">
                                            <span class="ico"><i class="iconfont icon-tianjia"></i></span>
                                            <div class="label">添加收货地址</div>
                                        </div>
                                    </a>
                                </div>
                                <%
                                    List<Address> addressList = (List<Address>) request.getAttribute("addressList");
                                %>
                                <%
                                for (Address address:addressList){
                                %>
                                <form action="/address.do?_method=delete" method="post">

                                <div class="col col-4">
                                    <div class="item">
                                        <div class="action">
                                            <div class="fl">
                                                <input type="submit" value="删除" style="margin-left: 100px">
                                            </div>
                                        </div>
                                        <div class="info">

                                            <div class="info-item name ellipsis" ><input type="text"  style="border:none"  value="<%=address.getShouhuoren()%>" name="sjren"></div>
                                            <div class="info-item address">地址：<%=address.getDizhi()%></div>
                                            <div class="info-item tel ellipsis">电话：<%=address.getPhonenum()%></div>
                                        </div>
                                    </div>
                                </div>
                                </form>
                                <%
                                }
                                %>


                            </div>
                        <div id="addressform" style="display:none" class="layer-address">

                            <form action="/address.do?_method=insert" method="post">
                                <div class="control-group">
                                    <div class="hd">
                                        收货人姓名：
                                    </div>
                                    <div class="bd">
                                        <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="shouhuoren">
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="hd">
                                        联系电话：
                                    </div>
                                    <div class="bd">
                                        <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="phonenum">
                                    </div>
                                </div>

                                    <div class="hd vat">
                                        所在地区：
<%--                                        <a href="threelink.jsp" style="color: #3f8efc">去选择</a>--%>
                                        <input type="text" placeholder="详细地址（省、市、区、县、乡镇、村）" name="dizhi">
                                    </div>
<%--                                <%--%>
<%--                                    String area = (String) request.getAttribute("area");--%>
<%--                                    if(!area.equals("") && area != null){--%>
<%--                                %>--%>
<%--                                <div class="mt10">--%>
<%--                                    <input class="ui-txtin ui-txtin-thin" style="width: 560px;" type="text" value="<%=request.getAttribute("address")%>" name="dizhi">--%>
<%--                                </div>--%>
<%--                                <%--%>
<%--                                    }--%>
<%--                                %>--%>

                                <div class="control-group">
                                    <div class="hd vat">
                                        邮政编码：
                                    </div>
                                    <div class="bd">
                                        <input class="ui-txtin ui-txtin-thin" style="width: 200px;" type="text" name="youzhengnum">
                                    </div>
                                </div>
                                <div class="control-bottom clearfix">
                                    <input type="submit" value="保存"><a href="" class="fr btn ui-btn cancle">取消</a>
                                </div>
                            </form>
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

    <!--脚部-->
</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\laydate\laydate.js"></script>
<script src="js\global.js"></script>
<script src="js\layer\layer.js"></script>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script>
<script>
    $(document).ready(function(){
        $("#hide").click(function(){
            $("#addressform").hide();
        });
        $("#show").click(function(){
            $("#addressform").show();
        });
    });
</script>

</html>