<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018/12/6
  Time: 16:07
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
    <link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
    <link href="<%=basePath%>css/iconfont.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap-datetimepicker.min.css">
    <!-- <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen"> -->
    <link rel="stylesheet/less" type="text/css" href="<%=basePath%>css/less.less">
</head>

<body>
<div class="layout">
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid pa_right0">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <a class="navbar-brand" href="/form/index1">
                    <img src="images/logo.png" alt="">
                </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/index1">首页</a></li>
                    <li><a href="AlarmInformation.html">消息 <span class="badge badgetop">4</span></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户：管理员
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">用户：管理员</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="login.html">退出</a></li>
                        </ul>
                    </li>
                    <li><a href="#">您上次登录的时间：2016/07/01</a></li>
                    <li class="font_img"><img src="images/font.png" alt=""></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- 头部导航结束 -->
    <div class="content over">
        <div class="left_big page-sidebar fl-l">
            <div class="con_left">
                <section class="sidebar">
                    <ul class="sidebar-menu page-sidebar-menu">
                        <div class="left_topimg glyphicon glyphicon-menu-hamburger" data='1'></div>
                        <li class="treeview active">
                            <a href="index.html">
                                <i class="iconfont icon-engine" title="首页"></i>
                                <span>首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="">
                                <i class="iconfont icon-engine" title="能源监控"></i>
                                <span>能源监控</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="mainWorkShop" target="work">
                                        <span>总厂</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorElectricPower.html">
                                        <span>电力</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorWaterPower.html">
                                        <span>软水</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorWaterPower.html">
                                        <span>纯水</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorVapourDetail.html">
                                        <span>蒸汽</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorVapourDetail.html">
                                        <span>压缩空气</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MonitorEquipment.html">
                                        <span>能源单机信息监控</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="">
                                <i class="iconfont icon-huabanfuben2" title="能源报表"></i>
                                <span>能源报表</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a  href="/areas/reportMeasure" target="work">
                                        <span>能源计量统计报表</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span>能源实绩报表</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ReportArea.html">
                                        <span>能源区域报表</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="EquipmentConsumption.html">
                                        <span>单机能耗分析</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="CostAnalysis.html">
                                        <span>能源成本分析</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="CostForecast.html">
                                        <span>能源成本预测</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="SingleEquipmentConsumption.html">
                                        <span>单品能源能耗分析</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="EnergyBalanceAnalysis.html">
                                        <span>能源平衡分析</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="EnergyBenchmarkinging.html">
                                        <span>能源对标分析</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-huabanfuben3" title="单机能源"></i>
                                <span>单机能源</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="EquipmentProductionRecord.html">
                                        <span>单机能源生产记录</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="CIPefficiencyAnalysis.html">
                                        <span>CIP能效分析</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-preserve" title="设备维护"></i>
                                <span>设备维护</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="EnergyMachineManagement.html">
                                        <span>能源单机管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MachineMaintainSettings.html">
                                        <span>单机保养设置</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MachineMaintenance.html">
                                        <span>单机保养维护</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="OperationInstruction.html">
                                        <span>作业指导书</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="MaintenanceOrder.html">
                                        <span>单机维保提醒</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-item" title="技改项目"></i>
                                <span>技改项目</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="#">
                                        <span>技改类型</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="TechnicalReformation.html">
                                        <span>技改项目</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-data" title="数据管理"></i>
                                <span>数据管理</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="DataManualOperation.html">
                                        <span>手动录入仪表数据</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="DataChange.html">
                                        <span>更换仪表功能</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="EnergyPrice.html">
                                        <span>能源价格</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="EnergyAnomalousEvent.html">
                                        <span>能源异常事件</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ProductOutput.html">
                                        <span>单品产量</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ProductPlannedtOutput.html">
                                        <span>单品计划产量</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ProductKPI.html">
                                        <span>单品KPI指标</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-company" title="能源模型"></i>
                                <span>能源模型</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="EnergyModel.html">
                                        <span>能源模型</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-control" title="基础信息"></i>
                                <span>基础信息</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="PlannedData.html">
                                        <span>计划数据</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="AlarmInformation.html">
                                        <span>报警信息</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="OrganizationalStructure.html">
                                        <span>组织架构</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="DeviceManagement.html">
                                        <span>设备管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="ProductManagement.html">
                                        <span>产品管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="CollectionPointManagement.html">
                                        <span>采集点管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="PersonnelInformationManagement.html">
                                        <span>人员信息管理</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="SystemManagement.html">
                                        <span>制度管理</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="iconfont icon-control" title="系统管理"></i>
                                <span>系统管理</span>
                                <i class="iconfont icon-arrow_right"></i>
                                <i class="iconfont icon-arrow_down"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="SystemManagement.html">
                                        <span>系统管理</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </div>
            <!-- con_left结束 -->
        </div>
        <!-- left_big  左侧侧导航结束 -->
        <div class="page-content over">
            <div class="con_right">
                <div class="right_div">
                    <div class="container-fluid con_table">
                        <div class="row">
                            <div class="col-md-12">
                               <!-- <img src="<%=basePath%>images/index.jpg" alt="">-->

                               <iframe name="work" src="/welcomes" style="width:100%; min-height: 600px;"> </iframe>




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
        language: 'zh-CN', //显示中文
        format: 'yyyy-mm-dd hh:ii', //显示格式
        minuteStep: 30,
        minView: "hour", //设置只显示到月份
        initialDate: new Date(), //初始化当前日期
        autoclose: true, //选中自动关闭
        todayBtn: true //显示今日按钮
    });
</script>
</body>

</html>
