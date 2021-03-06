﻿<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <title>注册</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link href="css\iconfont\iconfont.css" rel="stylesheet">
    <link href="css\common.css" rel="stylesheet">
    <link href="css\login.css" rel="stylesheet">
</head>
<body>
<!--头部-->
    <div class="login-header">
        <div class="wrapper">
            <div class="logo">
                <a href="index.jsp"><img src="img\logo3.png" alt="logo"></a>
            </div>
            <div class="zp">
                <span class="ico"></span>
                <div>正品保障</div>
            </div>
        </div>
    </div>
    <div class="main-wrap">
        <div class="wrapper">
            <div class="center-box">
                <form action="" method="">
                    <div class="box-hd">
                        <span class="tit">用户注册</span>
                        <a href="login.jsp">账号登陆</a>
                    </div>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="" placeholder="用户名">
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="text" name="" placeholder="手机">
                    </label>
                    <label class="txtin-box txtin-box-code">
                        <input class="txtin" type="text" name="" placeholder="输入验证码">
                        <a href="" class="get-yzm">获取验证码</a>
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="password" name="" placeholder="输入密码">
                    </label>
                    <label class="txtin-box">
                        <input class="txtin" type="password" name="" placeholder="确认密码">
                    </label>
                    <div class="clearfix tool">
                        <label class="check"><input type="checkbox" name="" id="">我已阅读并同意智迈科技《<a href="">服务协议</a>》</label>
                    </div>
                    <input class="tj" type="submit" value="注&ensp;册">
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
    <div class="login-footer">
        贵州茅台酒股份有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789
        <div class="authentication">
            <a href=""><img src="uploads\35.jpg" alt=""></a>
            <a href=""><img src="uploads\36.jpg" alt=""></a>
            <a href=""><img src="uploads\37.jpg" alt=""></a>
            <a href=""><img src="uploads\38.jpg" alt=""></a>
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