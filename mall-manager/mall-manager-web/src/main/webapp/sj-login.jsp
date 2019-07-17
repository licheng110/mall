<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>商家登陆</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\login.css" rel="stylesheet">
</head>
<body>

<div class="login-main-wrap">
    <div class="login-main wrapper">
        <div class="login-box">

            <form action="/sailerlogin.do" method="post">
                <div class="box-hd">
                    <span class="tit">用户登录</span>
                    <a href="sign-in.jsp">注册新账号</a>
                </div>
                <label class="txtin-box">
                    <span class="ico user"></span>
                    <input class="txtin" type="text" name="sjname" placeholder="用户名/手机">
                </label>
                <label class="txtin-box">
                    <span class="ico pwd"></span>
                    <input class="txtin" type="password" name="sjpassword" placeholder="密码">
                </label>
                <input class="tj" type="submit" value="登&ensp;录">
                <div class="other-way clearfix">
                    <a class="item first" href="">
                        <img src="img\login\weixin.jpg" alt="" class="ico">
                        <span class="label">微信</span>
                    </a>
                    <a class="item" href="">
                        <img src="img\login\qq.jpg" alt="" class="ico">
                        <span class="label">微信</span>
                    </a>
                    <a class="item" href="">
                        <img src="img\login\sina.jpg" alt="" class="ico">
                        <span class="label">微信</span>
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<script src="js\jquery.js"></script>
<link rel="stylesheet" href="js\icheck\style.css">
<script src="js\icheck\icheck.min.js"></script>
<script src="js\global.js"></script>
<script>
    $('.check input').iCheck({
        checkboxClass: 'sty1-checkbox'
    });
</script>
</html>