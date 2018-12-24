<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";


%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Tetra Pak</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link href="<%=basePath%>css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>css/css.css" rel="stylesheet">
    <link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/iconfont.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap-datetimepicker.min.css" >
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
    <link rel="stylesheet/less" type="text/css" href="<%=basePath%>css/less.less">
</head>
<body>

<!-- <div style="height:500px;"></div> -->
<div class="layout">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid pa_right0">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.html">
                    <img src="images/logo.png" alt="">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <!-- <li><a href="index.html">首页</a></li>
                    <li><a href="AlarmInformation.html">消息 <span class="badge badgetop">4</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户：宇宙超级无敌车车
                        <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">用户：宇宙超级无敌车车</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="login.html">退出</a></li>
                        </ul>
                    </li>
                    <li><a href="#">您上次登录的时间：2016/07/01</a></li> -->
                    <li class="font_img"><img src="images/font.png" alt=""></li>
                </ul>
            </div>
            <!-- /.navbar-collapse-->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- 头部导航结束 -->
    <div class="content over loginCon" id="mydiv">
        <form class="login" id="login-form" action="/user/loginto" method="post">
            <div class="log_title">账号登录</div>
            <div class="denglu">
                <label>用户名：</label>
                <input type="text" name="userName" id="userName" autocomplete="off" disableautocomplete>
            </div>
            <div class="denglu">
                <label>密　码：</label>
                <input type="password" name="userPass" id="userPass">
            </div>

            <div class="forget_pass">
                <div class="fl-l"><input class="check" type="checkbox" checked="">记住我</div>
                <div class="fl-r">忘记密码</div>

            </div>
            <div class="denglu yanz fl-l" style="width:100%">
                <label>验证码：</label>
                <input type="text" name="verify" autocomplete="off" disableautocomplete style="float:left;width:88px;">
                <div class="fl-l y_ma" style="width:51px; height:29px;">
                    <img src="<%=basePath%>images/yanzheng1.png" alt="" width="135%"><!-- <img id="verify" src="{:U('Login/Signin/verify')}" BORDER="0" title="点击刷新验证码" style="cursor:pointer" align="absmiddle" height="30" width="60"> --></div>
            </div>
            <div class="denglu clear d_deng">
                <a href=""  class="d_inter" style="width:100%;display:block;position:relative;z-index:1;text-align:center;line-height:30px;text-decoration: none">

                    <button type="submit" class="d_inter">登录</button></a>
            </div>
        </form><!-- login -->
        <!-- <video class="covervid-video" autoplay loop>

            <source src="videos/scene.mp4" type="video/mp4">

        </video> -->
    </div>
    <!-- content结束 -->
</div>
<!-- layout -->
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=basePath%>js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=basePath%>js/bootstrap.js"></script>
<script src="<%=basePath%>js/less.min.js"></script>
<script src="<%=basePath%>js/sidebar-menu.js"></script>
<script src="<%=basePath%>js/script.js"></script>
<script src="<%=basePath%>js/bootstrap-datetimepicker.js"></script>
<script src="<%=basePath%>js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=basePath%>covervid.js"></script>
<!-- Call CoverVid -->
<script type="text/javascript">
    $('.covervid-video').coverVid(190, 1080);

</script>
<script>
    $.sidebarMenu($('.sidebar-menu'));
    $('.form-date').datetimepicker({
        language: 'zh-CN',//显示中文
        format: 'yyyy-mm-dd hh:ii',//显示格式
        minuteStep: 30,
        minView: "hour",//设置只显示到月份
        initialDate: new Date(),//初始化当前日期
        autoclose: true,//选中自动关闭
        todayBtn: true//显示今日按钮
    });
    window.onload = function() {
        //配置
        var config = {
            vx: 4,  //小球x轴速度,正为右，负为左
            vy: 4,  //小球y轴速度
            height: 2,  //小球高宽，其实为正方形，所以不宜太大
            width: 2,
            count: 200,     //点个数
            color: "121, 162, 185",     //点颜色
            stroke: "130,255,255",      //线条颜色
            dist: 6000,     //点吸附距离
            e_dist: 20000,  //鼠标吸附加速距离
            max_conn: 10    //点到点最大连接数
        }

        //调用
        CanvasParticle(config);
    }
</script>
<script type="text/javascript" src="<%=basePath%>js/canvas-particle.js"></script>
</body>
</html>