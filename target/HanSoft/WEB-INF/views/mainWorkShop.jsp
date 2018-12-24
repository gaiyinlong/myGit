<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/12/7
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
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
    <link href="<%=basePath%>css/iconfont.css" rel="stylesheet">
    <link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap-datetimepicker.min.css" >
    <!-- <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen"> -->
</head>
<body>




<div  class="page-content over">
    <div class="con_right">
        <div class="right_div">
            <div class="container-fluid con_table">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <div class="row">
                                <div class="col-md-10">
                                    <div class="bt bt_small"><img src="<%=basePath%>images/t_11.png" alt="">总厂</div><!-- 标题结束 -->
                                </div>
                                <div class="col-md-1 fl-r">
                                    <form action="">
                                        <select name="" id="">
                                            <option value="">水</option>
                                            <option value="">电</option>
                                            <option value="">蒸汽</option>
                                            <option value="">全部</option>
                                        </select>
                                    </form>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <!-- 标题结束 -->
                        <div class="big">
                            <div>
                                <img src="<%=basePath%>images/company.gif" alt="" width="100%">
                                <img style="margin-top: -138px;width: 100%" src="<%=basePath%>images/shade.png" alt="">
                            </div>
                        </div>
                        <!-- big结束 -->
                    </div>
                    <!-- col-md-6 -->
                </div>
                <!-- row结束 -->
            </div>
            <!-- datagrid结束 -->
        </div>
        <!-- right_div结束 -->
    </div>
    <!-- con_right结束 -->
</div>
<!--右侧大盒子结束 -->
</div>
<!-- content结束 -->
</div>
<!-- layout -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">批量删除</h4>
            </div>
            <div class="modal-body">
                <img src="<%=basePath%>images/retan.png" alt="">确定要删除吗？
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">确定</button>
            </div>
            <!-- modal-header -->
        </div>
        <!-- modal-content -->
    </div>
    <!-- modal-dialog -->
</div>
<!-- model -->
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="<%=basePath%>js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<%=basePath%>js/bootstrap.js"></script>
<script src="<%=basePath%>js/less.min.js"></script>
<script src="<%=basePath%>js/sidebar-menu.js"></script>
<script src="<%=basePath%>js/script.js"></script>
<script src="<%=basePath%>js/bootstrap-datetimepicker.js"></script>
<script src="<%=basePath%>js/bootstrap-datetimepicker.zh-CN.js"></script>
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
</script>

</body>
</html>
