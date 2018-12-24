<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <base href="<%=basePath%>">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>汉软工业智能技术管理平台</title>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="shortcut icon" href="<%=basePath%>images/icons/favicon.ico">
    <link rel="apple-touch-icon" href="<%=basePath%>images/icons/favicon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<%=basePath%>images/icons/favicon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<%=basePath%>images/icons/favicon-114x114.png">
    <!--Loading bootstrap css-->
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,700">
    <link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Oswald:400,700,300">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/jquery-ui-1.10.4.custom.min.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/animate.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/all.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/main.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/style-responsive.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/zabuto_calendar.min.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/pace.css">
    <link type="text/css" rel="stylesheet" href="<%=basePath%>styles/jquery.news-ticker.css">
    
   
    
</head>
<body>

 <div>
     
        <!--BEGIN BACK TO TOP-->
        <a id="totop" href="#"><i class="fa fa-angle-up"></i></a>
        <!--END BACK TO TOP-->
        <!--BEGIN TOPBAR-->
        <div id="header-topbar-option-demo" class="page-header-topbar">
            <nav id="topbar" role="navigation" style="margin-bottom: 0;" data-step="3" class="navbar navbar-default navbar-static-top">
            <div class="navbar-header">
                <button type="button" data-toggle="collapse" data-target=".sidebar-collapse" class="navbar-toggle"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
                <a id="logo" href="index.html" class="navbar-brand"><span class="fa fa-rocket"></span><span class="logo-text">汉软工业</span><span style="display: none" class="logo-text-icon">µ</span></a></div>
            <div class="topbar-main"><a id="menu-toggle" href="#" class="hidden-xs"><i class="fa fa-bars"></i></a>
                <!-- 搜索框begin -->
                <form id="topbar-search" action="" method="post" class="hidden-sm hidden-xs">
                    <div class="input-icon right text-white"><a href="#"><i class="fa fa-search"></i></a><input type="text" placeholder="Search here..." class="form-control text-white"/></div>
                </form>
                 <!-- 搜索框end -->
                <div class="news-update-box hidden-xs"><span class="text-uppercase mrm pull-left text-white">News:</span>
                    <ul id="news-update" class="ticker list-unstyled">
                        <li>欢迎登陆汉软工业智能技术后台系统</li>
                        
                        <li>全国统一咨询电话：400-960-3070 期待与您的合作！谢谢！</li>
                    </ul>
                </div>
                <!-- 显示信息数量begin -->
                <ul class="nav navbar navbar-top-links navbar-right mbn">
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-bell fa-fw"></i><span class="badge badge-green">3</span></a>
                        
                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-envelope fa-fw"></i><span class="badge badge-orange">7</span></a>
                        
                    </li>
                    <li class="dropdown"><a data-hover="dropdown" href="#" class="dropdown-toggle"><i class="fa fa-tasks fa-fw"></i><span class="badge badge-yellow">8</span></a>
                        
                    </li>
                     <!-- 显示信息数量begin -->
                      <!-- 显示登陆客户信息begin -->
                    <li class="dropdown topbar-user"><a data-hover="dropdown" href="#" class="dropdown-toggle"><img src="images/avatar/48.jpg" alt="" class="img-responsive img-circle"/>&nbsp;<span class="hidden-xs">欢迎，${user.userName }</span>&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu dropdown-user pull-right">
                            <li><a href="#"><i class="fa fa-user"></i>我的信息</a></li>
                            <li><a href="#"><i class="fa fa-calendar"></i>我的日志</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i>我的收件箱<span class="badge badge-danger">3</span></a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i>我的任务<span class="badge badge-success">7</span></a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-lock"></i>Lock Screen</a></li>
                            <li><a href="user/login"><i class="fa fa-key"></i>退出</a></li>
                        </ul>
                    </li>
                     <!-- 显示登陆客户信息end-->
                    <li id="topbar-chat" class="hidden-xs"><a href="javascript:void(0)" data-step="4" data-intro="&lt;b&gt;Form chat&lt;/b&gt; keep you connecting with other coworker" data-position="left" class="btn-chat"><i class="fa fa-comments"></i><span class="badge badge-info">3</span></a></li>
                </ul>
            </div>
        </nav>
            <!--BEGIN MODAL CONFIG PORTLET-->
            <div id="modal-config" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">
                                &times;</button>
                            <h4 class="modal-title">
                                Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed eleifend et nisl eget
                                porta. Curabitur elementum sem molestie nisl varius, eget tempus odio molestie.
                                Nunc vehicula sem arcu, eu pulvinar neque cursus ac. Aliquam ultricies lobortis
                                magna et aliquam. Vestibulum egestas eu urna sed ultricies. Nullam pulvinar dolor
                                vitae quam dictum condimentum. Integer a sodales elit, eu pulvinar leo. Nunc nec
                                aliquam nisi, a mollis neque. Ut vel felis quis tellus hendrerit placerat. Vivamus
                                vel nisl non magna feugiat dignissim sed ut nibh. Nulla elementum, est a pretium
                                hendrerit, arcu risus luctus augue, mattis aliquet orci ligula eget massa. Sed ut
                                ultricies felis.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-default">
                                Close</button>
                            <button type="button" class="btn btn-primary">
                                Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
            <!--END MODAL CONFIG PORTLET-->
        </div>
        <!--END TOPBAR-->
        <div id="wrapper">
            <!--BEGIN SIDEBAR MENU-->
            <nav id="sidebar" role="navigation" data-step="2" data-intro="Template has &lt;b&gt;many navigation styles&lt;/b&gt;"
                data-position="right" class="navbar-default navbar-static-side">
            <div class="sidebar-collapse menu-scroll">
                <ul id="side-menu" class="nav">
                    
                     <div class="clearfix"></div>
                    <li class="active"><a href="dashboard.html"><i class="fa fa-tachometer fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">首页</span></a></li>
                    <li><a href="index"><i class="fa fa-desktop fa-fw">
                        <div class="icon-bg bg-pink"></div>
                    </i><span class="menu-title">Layouts</span></a>
                       
                    </li>
                    <li><a href="UIElements.html"><i class="fa fa-send-o fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">UI Elements</span></a>
                       
                    </li>
                    <li><a href=""><i class="fa fa-edit fa-fw">
                        <div class="icon-bg bg-violet"></div>
                    </i><span class="menu-title">表单</span></a>
                      
                    </li>
                    <li><a href="makeform" target="work"><i class="fa fa-th-list fa-fw">
                        <div class="icon-bg bg-blue"></div>
                    </i><span class="menu-title">表</span></a>
                          
                    </li>
                    <li><a href="dataGrid" target="work"><i class="fa fa-database fa-fw">
                        <div class="icon-bg bg-red"></div>
                    </i><span class="menu-title">Data Grids</span></a>
                      
                    </li>
                    <li><a href="Pages.html"><i class="fa fa-file-o fa-fw">
                        <div class="icon-bg bg-yellow"></div>
                    </i><span class="menu-title">Pages</span></a>
                       
                    </li>
                    <li><a href="Extras.html"><i class="fa fa-gift fa-fw">
                        <div class="icon-bg bg-grey"></div>
                    </i><span class="menu-title">Extras</span></a>
                      
                    </li>
                    <li><a href="Dropdown.html"><i class="fa fa-sitemap fa-fw">
                        <div class="icon-bg bg-dark"></div>
                    </i><span class="menu-title">Multi-Level Dropdown</span></a>
                      
                    </li>
                    <li><a href="Email.html"><i class="fa fa-envelope-o">
                        <div class="icon-bg bg-primary"></div>
                    </i><span class="menu-title">邮件</span></a>
                      
                    </li>
                    <li><a href="Charts.html"><i class="fa fa-bar-chart-o fa-fw">
                        <div class="icon-bg bg-orange"></div>
                    </i><span class="menu-title">Charts</span></a>
                       
                    </li>
                    <li><a href=""><i class="fa fa-slack fa-fw">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">Animations</span></a></li>
                     <li><a accordion-toggle" data-toggle="collapse"
								data-parent="#accordion-101236" href="#accordion-element-004"><i class="glyphicon glyphicon-cog">
                        <div class="icon-bg bg-green"></div>
                    </i><span class="menu-title">系统设置</span></a>
                  
    
                </ul>
                	<div id="accordion-element-004" class="accordion-body collapse ">
							<div style="text-align: left" class="panel-body">
								<p>
									<a href="userList" target='work'>用户管理</a>
								</p>
								<p>
									<a href="" target="work">账户注销</a>
								</p>

							</div>
            </div>
        </nav>
            <!--END SIDEBAR MENU-->
            <!--BEGIN CHAT FORM-->
            <div id="chat-form" class="fixed">
                <div class="chat-inner">
                    <h2 class="chat-header">
                        <a href="javascript:;" class="chat-form-close pull-right"><i class="glyphicon glyphicon-remove">
                        </i></a><i class="fa fa-user"></i>&nbsp; 好友列表 &nbsp;<span class="badge badge-info">3</span></h2>
                    <div id="group-1" class="chat-group">
                        <strong>收藏夹</strong><a href="#"><span class="user-status is-online"></span> <small>
                            Verna Morton</small> <span class="badge badge-info">2</span></a><a href="#"><span
                                class="user-status is-online"></span> <small>Delores Blake</small> <span class="badge badge-info is-hidden">
                                    0</span></a><a href="#"><span class="user-status is-busy"></span> <small>Nathaniel Morris</small>
                                        <span class="badge badge-info is-hidden">0</span></a><a href="#"><span class="user-status is-idle"></span>
                                            <small>Boyd Bridges</small> <span class="badge badge-info is-hidden">0</span></a><a
                                                href="#"><span class="user-status is-offline"></span> <small>Meredith Houston</small>
                                                <span class="badge badge-info is-hidden">0</span></a></div>
                    <div id="group-2" class="chat-group">
                        <strong>办公室</strong><a href="#"><span class="user-status is-busy"></span> <small>
                            Ann Scott</small> <span class="badge badge-info is-hidden">0</span></a><a href="#"><span
                                class="user-status is-offline"></span> <small>Sherman Stokes</small> <span class="badge badge-info is-hidden">
                                    0</span></a><a href="#"><span class="user-status is-offline"></span> <small>Florence
                                        Pierce</small> <span class="badge badge-info">1</span></a></div>
                    <div id="group-3" class="chat-group">
                        <strong>朋友</strong><a href="#"><span class="user-status is-online"></span> <small>
                            Willard Mckenzie</small> <span class="badge badge-info is-hidden">0</span></a><a
                                href="#"><span class="user-status is-busy"></span> <small>Jenny Frazier</small>
                                <span class="badge badge-info is-hidden">0</span></a><a href="#"><span class="user-status is-offline"></span>
                                    <small>Chris Stewart</small> <span class="badge badge-info is-hidden">0</span></a><a
                                        href="#"><span class="user-status is-offline"></span> <small>Olivia Green</small>
                                        <span class="badge badge-info is-hidden">0</span></a></div>
                </div>
                <div id="chat-box" style="top: 400px">
                    <div class="chat-box-header">
                        <a href="#" class="chat-box-close pull-right"><i class="glyphicon glyphicon-remove">
                        </i></a><span class="user-status is-online"></span><span class="display-name">Willard
                            Mckenzie</span> <small>Online</small>
                    </div>
                    <div class="chat-content">
                        <ul class="chat-box-body">
                            <li>
                                <p>
                                    <img src="images/avatar/128.jpg" class="avt" /><span class="user">John Doe</span><span
                                        class="time">09:33</span></p>
                                <p>
                                    Hi Swlabs, we have some comments for you.</p>
                            </li>
                            <li class="odd">
                                <p>
                                    <img src="images/avatar/48.jpg" class="avt" /><span class="user">Swlabs</span><span
                                        class="time">09:33</span></p>
                                <p>
                                    Hi, we're listening you...</p>
                            </li>
                        </ul>
                    </div>
                    <div class="chat-textarea">
                        <input placeholder="Type your message" class="form-control" /></div>
                </div>
            </div>
            <!--END CHAT FORM-->
            
            <!--BEGIN PAGE WRAPPER-->
            <div id="page-wrapper">
                <!--BEGIN TITLE & BREADCRUMB PAGE-->
                     <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
                    <div class="page-header pull-left">
                        
                                        <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a href="dashboard.html">首页</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="hidden"><a href="#">Dashboard</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
                        <li class="active">信息栏</li>
                    </ol>                                                                
                    </div>
                  
                    <div class="clearfix">
                    </div>
                </div>
               
                <!--END TITLE & BREADCRUMB PAGE-->
		<div style="min-height:500px; width: 100%; border:0px solid red; margin-top: 1px;margin-left:2px">


			<iframe name="work" src="welcomes" style="width:100%; min-height: 600px; border: 0px;"> </iframe>


		</div>
        </div>
        
       
  
     <script src="<%=basePath%>script/jquery-1.10.2.min.js"></script>
    <script src="<%=basePath%>script/jquery-migrate-1.2.1.min.js"></script>
    <script src="<%=basePath%>script/jquery-ui.js"></script>
    <script src="<%=basePath%>script/bootstrap.min.js"></script>
    <script src="<%=basePath%>script/bootstrap-hover-dropdown.js"></script>
    <script src="<%=basePath%>script/html5shiv.js"></script>
    <script src="<%=basePath%>script/respond.min.js"></script>
    <script src="<%=basePath%>script/jquery.metisMenu.js"></script>
    <script src="<%=basePath%>script/jquery.slimscroll.js"></script>
    <script src="<%=basePath%>script/jquery.cookie.js"></script>
    <script src="<%=basePath%>script/icheck.min.js"></script>
    <script src="<%=basePath%>script/custom.min.js"></script>
    <script src="<%=basePath%>script/jquery.news-ticker.js"></script>
    <script src="<%=basePath%>script/jquery.menu.js"></script>
    <script src="<%=basePath%>script/pace.min.js"></script>
    <script src="<%=basePath%>script/holder.js"></script>
    <script src="<%=basePath%>script/responsive-tabs.js"></script>
    <script src="<%=basePath%>script/jquery.flot.js"></script>
    <script src="<%=basePath%>script/jquery.flot.categories.js"></script>
    <script src="<%=basePath%>script/jquery.flot.pie.js"></script>
    <script src="<%=basePath%>script/jquery.flot.tooltip.js"></script>
    <script src="<%=basePath%>script/jquery.flot.resize.js"></script>
    <script src="<%=basePath%>script/jquery.flot.fillbetween.js"></script>
    <script src="<%=basePath%>script/jquery.flot.stack.js"></script>
    <script src="<%=basePath%>script/jquery.flot.spline.js"></script>
    <script src="<%=basePath%>script/zabuto_calendar.min.js"></script>
    <script src="<%=basePath%>script/index.js"></script>
    <!--LOADING SCRIPTS FOR CHARTS-->
    <script src="<%=basePath%>script/highcharts.js"></script>
    <script src="<%=basePath%>script/data.js"></script>
    <script src="<%=basePath%>script/drilldown.js"></script>
    <script src="<%=basePath%>script/exporting.js"></script>
    <script src="<%=basePath%>script/highcharts-more.js"></script>
    <script src="<%=basePath%>script/charts-highchart-pie.js"></script>
    <script src="<%=basePath%>script/charts-highchart-more.js"></script>
    <!--CORE JAVASCRIPT-->
    <script src="<%=basePath%>script/main.js"></script>
</body>
</html>