<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	// 获得项目完全路径（假设你的项目叫myWork，那么获得到的地址就是 http://localhost:8080/myWork/）:
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path + "/";
	// 将 "项目路径basePath" 放入pageContext中
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!--  /index.html -->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<title>集约式电能服务平台</title>
<!--[if lt IE 9]>
         <meta http-equiv="refresh" content="0;ie.html" />
        <![endif]-->
<link rel="shortcut icon" href="favicon.ico">
<link href="<%=basePath%>css/bootstrap.min14ed.css" rel="stylesheet">
<link href="<%=basePath%>css/font-awesome.min93e3.css" rel="stylesheet">
<link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
<link href="<%=basePath%>css/plugins/toastr/toastr.min.css" rel="stylesheet">
<link href="<%=basePath%>css/style.min862f.css" rel="stylesheet">
</head>

<body class="fixed-sidebar full-height-layout gray-bg"
	style="overflow:hidden">
	<div id="wrapper">
		<!--左侧导航开始-->
		<nav class="navbar-default navbar-static-side" role="navigation">
		<div class="nav-close">
			<i class="fa fa-times-circle"></i>
		</div>
		<div class="sidebar-collapse">
			<ul class="nav" id="side-menu">
				<li class="nav-header">
					<div class="dropdown profile-element">
						<span><img alt="image" class="img-circle"
							src="<%=basePath%>img/sn2.png" /> </span> <a data-toggle="dropdown"
							class="dropdown-toggle" href="#"> <span class="clear">
								<span class="block m-t-xs"><strong class="font-bold"></strong>
							</span> <span class="text-muted text-xs block"><!-- <b
									class="caret"></b> --> </span> </span> </a>
					 <ul class="dropdown-menu animated fadeInRight m-t-xs">
							<li><a class="J_menuItem" href="form_avatar.html">修改头像</a></li>
							<li><a class="J_menuItem" href="profile.html">个人资料</a></li>
							<li><a class="J_menuItem" href="contacts.html">们</a></li>
							<li><a class="J_menuItem" href="mailbox.html">信箱</a></li>
							<li class="divider"></li>
							<li><a href="login.html">安全退出</a></li>
						</ul>
					</div>
					<div class="logo-element">
						<span><img alt="image" class="img-circle"
							src="<%=basePath%>img/sn2.png" /> </span>
					</div></li>
				<c:forEach items="${menuList}" var="menu">
					<li><c:if test="${menu.hasMenu}">
							<a href="#"> <i class="${menu.classId}"></i> <span
								class="nav-label">${menu.menuName }</span> <span
								class="fa arrow"></span> </a>
							<ul class="nav nav-second-level">
								<c:forEach items="${menu.subMenu}" var="sub">
									<c:if test="${sub.hasMenu}">
										<c:choose>
											<c:when test="${not empty sub.menuUrl}">
												<li><a href="<%=basePath%>${sub.menuUrl }"
													class="J_menuItem">${sub.menuName}</a>
												</li>
											</c:when>
											<c:otherwise>
												<li><a href="javascript:void(0);" class="J_menuItem">${sub.menuName}</a>
												</li>
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach>
							</ul>
						</c:if></li>
				</c:forEach>
			</ul>
		</div>
		</nav>
		<!--左侧导航结束-->
		<!--右侧部分开始-->
		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation"
					style="margin-bottom: 0">
				<div class="navbar-header">
					<a class="navbar-minimalize minimalize-styl-2 btn btn-primary "
						href="#"><i class="fa fa-bars"></i> </a>
				</div>
				</nav>
			</div>
			<div class="row content-tabs">
				<button class="roll-nav roll-left J_tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs J_menuTabs">
				<div class="page-tabs-content">
					<a href="javascript:;" class="active J_menuTab"
						data-id="index_v1.html">首页</a>
				</div>
				</nav>
				<button class="roll-nav roll-right J_tabRight">
					<i class="fa fa-forward"></i>
				</button>
				<div class="btn-group roll-nav roll-right">
					<button class="dropdown J_tabClose" data-toggle="dropdown">
						关闭操作<span class="caret"></span>

					</button>
					<ul role="menu" class="dropdown-menu dropdown-menu-right">
						<li class="J_tabShowActive"><a>定位当前选项卡</a></li>
						<li class="divider"></li>
						<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
						<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
					</ul>
				</div>
				<a href="login.html" class="roll-nav roll-right J_tabExit"><i
					class="fa fa fa-sign-out"></i> 退出</a>
			</div>
			<div class="row J_mainContent" id="content-main">
				<!--地图-->
				<c:if test="${flag==4}">
					<%--<iframe class="J_iframe" name="iframe0" width="100%" height="100%"
						frameborder="0" src="<%=basePath%>site/showHookupDetail.html?companyId=${user.companyId}"
						 data-id="index_v1.html"></iframe>
				--%>
				<iframe class="J_iframe" name="iframe0" width="100%" height="100%"
						frameborder="0" src="<%=basePath%>meter/energyconcept.html?companyId=${user.companyId}"
						 data-id="index_v1.html"></iframe>
				</c:if>
				<c:if test="${flag!=4}">
					<iframe class="J_iframe" name="iframe0" width="100%" height="100%"
						src="<%=basePath%>warn/index_inner.html" frameborder="0"
						data-id="index_v1.html"></iframe> 
				</c:if>
			</div>
		    <div class="footer">
				<div >&copy;Copyright   2017-2020 江苏晟能售电有限公司. All rights reserved.
					<a href="" target="_blank"></a>
				</div>
			</div>  
		</div>
		<!--右侧部分结束-->

	</div>
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script
		src="<%=basePath%>js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="<%=basePath%>js/toastr/toastr.min.js"></script>
	<script src="<%=basePath%>js/plugins/layer/layer.min.js"></script>
	<script src="<%=basePath%>js/hplus.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>js/contabs.min.js"></script>
</body>
<script type="text/javascript">
	var str = JSON.parse('${jsondata}');
	var jsondata = str.data;

	function showSiteDetail(siteId) {
		layer.open({
			type : 2,
			title : '站点详情',
			skin : 'demo-class',
			maxmin : true,
			shade : 0,
			id : '1',
			area : [ '800px', '520px' ],
			content : '<%=basePath%>warn/siteWarnSearch.html?siteId=' + siteId
		});
	};

	function showPowerDetail(sitecode) {
		layer.open({
			type : 2,
			title : '实时用电量',
			skin : 'demo-class',
			shade : 0,
			area : [ '800px', '520px' ],
			content : 'site/showPower.html?sitecode=' + sitecode
		});
	}
	
	function showVideoPowerDetail(videoId,branchName) {
		layer.open({
			type : 2,
			title : '作业监控',
			skin : 'demo-class',
			shade : 0,
			area : [ '100%', '100%' ],
			content : '<%=basePath%>video/showVideo.html?videoId=' + videoId
		});
	}

	function showHookupDetail(siteId) {
		layer.open({
			type : 2,
			title : '一次接线图',
			skin : 'demo-class',
			//maxmin : true,
			shade : 0,
			area : [ '100%', '100%' ],
			content : 'site/showHookupDetail.html?companyId=' + siteId
		});
	}
$(function(){
toastr.options = {
  "closeButton": true,
  "debug": false,
  "progressBar": true,
  "positionClass": "toast-top-right",
  "onclick": null,
  "showDuration": "0",
  "hideDuration": "0",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}  
toastr.options.onclick=function(){
    var warnframe = document.getElementById("warnframe");
    if(warnframe==null){
        var p = "<a href='javascript:;' class='active J_menuTab warnframe' id='warnframe' data-id='<%=basePath%>siteType/warnDetail.html'>告警详情<i class='fa fa-times-circle'></i></a>";
		$(".J_menuTab").removeClass("active");
		var n = "<iframe class='J_iframe' name='warnframe' width='100%' height='100%' src='siteType/warnDetail.html' frameborder='0' data-id='<%=basePath%>siteType/warnDetail.html' seamless></iframe>";
		$(".J_mainContent").find("iframe.J_iframe").hide().parents( ".J_mainContent").append(n);
		$(".J_menuTabs .page-tabs-content").append(p);
    }else{
        $(".J_menuTab").removeClass("active");
        var n = "<iframe class='J_iframe' name='warnframe' width='100%' height='100%' src='siteType/warnDetail.html' frameborder='0' data-id='<%=basePath%>siteType/warnDetail.html' seamless></iframe>";
		$(".J_mainContent").find("iframe.J_iframe").hide().parents( ".J_mainContent").append(n);
		$(".warnframe").addClass("active");
    }
} 
 // warnRemind();    
})

function warnRemind(){  
    $.ajax( {  
	        type : "post",  
	        url : "<%=basePath%>warn/warnRemind.html",
			success : function(data) {
			  if(data.length>0){
			      for(var i=0;i<data.length;i++){
			          if(data[i].typeId==1){
			             toastr.warning(data[i].branchName,data[i].name);
			          }else if(data[i].typeId==2){
			             toastr.error(data[i].branchName,data[i].name);
			          }else if(data[i].typeId==3){
			             toastr.error(data[i].branchName,data[i].name);
			          }
			           
			      }
			  }
              setTimeout("warnRemind()",1000*60);  
			}
		});
}  

 
</script>
</html>