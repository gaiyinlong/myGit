<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>地图展示</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link href="<%=basePath%>css/font-awesome.min93e3.css" rel="stylesheet">
<style type="text/css">
body,html,#allmap {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0;
	font-family: "微软雅黑";
	position: relative;
	box-sizing: border-box;
}
.TT-map-tip .TT-tip {
    display: inline-block;
    margin: 0 5px;
}
.TT-map-tip .TT-tip .map-top-label{
    margin: 0 0 0 5px;
    color: #676a6c;
    cursor: pointer;
    font-size:14px;
}
a {
	text-decoration: none;
	color: #2d2c3b;
}

.map-top {
	width: 100%;
	height: 45px;
	line-height: 45px;
	background: #f8f8f8;
	position: fixed;
	top: 0;
	z-index: 100;
}

.map-top .go-back {
	display: block;
	margin: 15px;
	float: right;
	background: url(../js/plugins/layer/skin/default/icon.png) no-repeat;
	width: 15px;
	height: 15px;
	background-position: 0 -39px;
}

.small-map {
	width: 180px;
	position: absolute;
	top: 45px;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .4)
}

.small-map>ul {
	height: 100%;
	margin: 0;
	padding: 0;
}

.small-map>ul>li {
	width: 100%;
	height: 20%;
	list-style: none;
}

.map-list>a {
	display: block;
	width: 100%;
	height: 100%;
}

.map-list>a>span {
	display: block;
	width: 100%;
	height: 100%;
	cursor: pointer;
	text-align: center;
	padding-top: 8px;
	box-sizing: border-box;
	color: #fff;
	font-size: 18px;
}

.lx-map {
	background: url(../img/lx-map.png) no-repeat;
	background-size: 100% 100%;
}

.lx-map:hover {
	background: url(../img/lx-map-at.png) no-repeat;
	background-size: 100% 100%;
}

.bh-map {
	background: url(../img/bh-map.png) no-repeat;
	background-size: 100% 100%;
}

.bh-map:hover {
	background: url(../img/bh-map-at.png) no-repeat;
	background-size: 100% 100%;
}

.hs-map {
	background: url(../img/hs-map.png) no-repeat;
	background-size: 100% 100%;
}

.hs-map:hover {
	background: url(../img/hs-map-at.png) no-repeat;
	background-size: 100% 100%;
}

.xs-map {
	background: url(../img/xs-map.png) no-repeat;
	background-size: 100% 100%;
}

.xs-map:hover {
	background: url(../img/xs-map-at.png) no-repeat;
	background-size: 100% 100%;
}

.xw-map {
	background: url(../img/xw-map.png) no-repeat;
	background-size: 100% 100%;
}

.xw-map:hover {
	background: url(../img/xw-map-at.png) no-repeat;
	background-size: 100% 100%;
}

.fa.fa-refresh {
	line-height: 45px;
	margin-left: 10px;
	font-size: 14px;
	color: #676a6c;
}
</style>


<script src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=gVdyqsFL2zF9qnxdZrHKF8aZ4cgtOOVK">
</script>
</head>
<body>
	<div class="map-top">
		<a href="javascript:history.go(-1);" class="go-back "></a> <a
			href="javascript:history.go(0);" class="fa fa-refresh  pull-right"></a>
		<div class="TT-map-tip pull-right">
			<div class="TT-tip">
				<a data-toggle="modal" id="ycjxt"><i class="fa fa-home fa-bg"
					style="color: #5fb29d;"></i> <label class='map-top-label'> 正常 </label> </a>
			</div>
			<div class="TT-tip">
				<a data-toggle="modal" id="faxq"><i class="fa fa-home fa-bg"
					style="color: #cf3546;"></i> <label class='map-top-label'> 故障 </label> </a>
			</div>
			<div class="TT-tip">
				<a data-toggle="modal"><i class="fa fa-home fa-bg"
					style="color: #f5ac46;"></i> <label class='map-top-label'> 异常 </label> </a>
			</div>
			<div class="TT-tip">
				<i class="fa fa-home fa-bg" style="color: #696969;"></i> <label class='map-top-label'>
					离线 </label>
			</div>
		</div>
	</div>
	<div id="allmap"></div>
	<div class="small-map">
		<ul>
			<li class="map-list"><a
				href="javascript:getBoundary('梁溪区',null,null);"> <span
					class="lx-map">${lxArea}</span> </a></li>
			<li class="map-list"><a
				href="javascript:getBoundary('滨湖区',null,null);"><span
					class="bh-map"> ${bhArea}</span>
			</a></li>
			<li class="map-list"><a
				href="javascript:getBoundary('新吴区',null,null);"><span
					class="xw-map"> ${xwArea}</span>
			</a></li>
			<li class="map-list"><a
				href="javascript:getBoundary('惠山区',null,null);"><span
					class="hs-map">${hsArea}</span>
			</a></li>
			<li class="map-list"><a
				href="javascript:getBoundary('锡山区',null,null);"><span
					class="xs-map"> ${xsArea}</span>
			</a></li>
		</ul>
	</div>
</body>
</html>
<script type="text/javascript">

	// 百度地图API功能
	var map = new BMap.Map("allmap", {enableMapClick: false});  //去除百度地图自带的地点检索功能
	map.centerAndZoom("无锡", 12);
	 
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
		var opts = {
					width : 280,     // 信息窗口宽度
					height: 190,     // 信息窗口高度
				//	title : "站点信息" , // 信息窗口标题
					enableMessage:true //设置允许信息窗发送短息
					
				   };
	 var str = JSON.parse('${jsondata}');
	 var data_info = str.data;
		for(var i=0;i<data_info.length;i++){
	 		var obj=data_info[i];
			var marker = new BMap.Marker(new BMap.Point(obj.siteLongitude,obj.siteLatitude));  // 创建标注
			if(obj.warnState==0){   //正常
			  var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 1 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			}else if(obj.warnState==3){  //离线
			  var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 4 * 25) // 设置图片偏移  
                 });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			}else if(obj.warnState==1){ //故障
			   var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 3 * 25) // 设置图片偏移  
                 }); 
               marker.setIcon(myIcon);//设置标签的图标为自定义图标
			   marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画 
			}else if(obj.warnState==2){  //异常
			  var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 2 * 25) // 设置图片偏移  
                 }); 
               marker.setIcon(myIcon);//设置标签的图标为自定义图标
			   marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画 
			}else{
			  var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 4 * 25) // 设置图片偏移  
                 }); 
               marker.setIcon(myIcon);//设置标签的图标为自定义图标
			} 
			var content = obj;
			map.addOverlay(marker);               // 将标注添加到地图中
			addClickHandler(content,marker);
		
	}
	function addClickHandler(content,marker){   //弹出信息框
		  marker.addEventListener("click",function(e){
			openInfo(content,e);}
		);  
		
		var label = new BMap.Label(content.siteName,{offset:new BMap.Size(10,-10)});
		marker.addEventListener("mouseover", function(e){ 
			label.setStyle({  //给label设置样式，任意的CSS都是可以的
			    display:"block",
			    border:"0",                    //边
			    textAlign:"center"         //文字水平居中显示
			  });
		   marker.setLabel(label);
		});
		
		marker.addEventListener("mouseout", function(e){ 
		   label.setStyle({  //给label设置样式，任意的CSS都是可以的
		    display:"none",
		    border:"0",                    //边
		    textAlign:"center"           //文字水平居中显示
		  }); 
		   marker.setLabel(label);
		}); 
		
	}
	
	
	function openInfo(content,e){ 
	 	var p = e.target;
		var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
		var sizecontent = "<div style='line-height:1.8em;font-size:15px;text-align:center;margin-top:-5px;'>"+"<div>"+content.siteName+"</div>"+"<div style='float: left;width:150px;'>"+
		 "<div style='line-height:1.9em;text-align:left;font-size:12px;'>站点等级:&nbsp;&nbsp;"+content.siteLevel+"</div>"+
		 "<div style='line-height:1.5em;text-align:left;font-size:12px;'>站点状态:&nbsp;&nbsp;"+content.siteType.typeName+
         "<a href='javascript:showDetail(\""+content.sitecode+"\");'><img src=\"<%=basePath%>img\/blue.png\" style='vertical-align: middle;margin-left:10px;border:0;'/></a>"+
		 "</div>"+
		 "<div style='line-height:1.9em;text-align:left;font-size:12px;'>所属区域:&nbsp;&nbsp;"+content.area+"</div>"+
		 "<div style='line-height:1.9em;text-align:left;font-size:12px;'>所属行业:&nbsp;&nbsp;"+content.industry+"</div>"+
		 		 "<div style='line-height:1.5em;text-align:left;font-size:12px;'>作&nbsp;业&nbsp;监&nbsp;控&nbsp;&nbsp;"+
         "<a href='javascript:showVideoPower(\""+content.siteId+"\",\""+content.siteName+"\");'><img src=\"<%=basePath%>img\/yellow.png\" style='vertical-align: middle;margin-left:10px;border:0;padding-bottom: 2px;'/></a>"+"</div>"+
		 "<div style='line-height:1.5em;text-align:left;font-size:12px;'>实时用电量&nbsp;&nbsp;"+
         "<a href='javascript:showPower(\""+content.sitecode+"\");'><img src=\"<%=basePath%>img\/yellow.png\" style='vertical-align: middle;margin-left:10px;border:0;padding-bottom: 2px;'/></a>"+"</div>"+
		 "<div style='line-height:1.5em;text-align:left;font-size:12px;'>一次接线图&nbsp;&nbsp;"+
		 "<a href='javascript:showHookup(\""+content.siteId+"\");'><img src=\"<%=basePath%>img\/yellow.png\" style='vertical-align: middle;margin-left:10px;border:0;'/></a>"+"</div>"+
	     "</div>"+"<div style='float: right;background: url(\"<%=basePath%>img\/factory.jpg\") no-repeat;width:100px;height:150px;'>"+"</div>"+ 	
		"</div>";
		 var infoWindow =new BMap.InfoWindow(sizecontent,opts);  // 创建信息窗口对象，引号里可以书写任意的html语句。
		map.openInfoWindow(infoWindow,point); //开启信息窗口
	
	}; 
	
	function infoOver(content,e){
		 var label = new BMap.Label(content,{offset:new BMap.Size(10,-10)});
	    label.setStyle({  //给label设置样式，任意的CSS都是可以的
		    display:"none"
		    
		  });
		marker.setLabel(label);  
	}
	
	map.addControl(new BMap.MapTypeControl({ mapTypes:[] }));  //去除百度地图右上角的地图卫星三维
	map.setCurrentCity("无锡");          // 设置地图显示的城市 此项是必须设置的
	map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
		function getBoundary(areaname,longitude,latitude){
		var bdary = new BMap.Boundary();
 		if(areaname!=null){
 		 if(areaname=="新吴区"){
 		  var list="120.360291,31.550623;120.343052,31.576425;120.441066,31.548193;120.502472,31.494747;120.395394,31.492615;120.436582,31.475601;120.374688,31.47052;120.362611,31.54825";
 		  bdary.get("新区", function(rs){       //获取行政区域
			var count = 10;
			var pointArray = [];
			map.clearOverlays();
		 	 for (var i = 0; i < count; i++) {
				var ply = new BMap.Polygon(list, {strokeWeight: 2, strokeColor: "#ff7575"}); //建立多边形覆盖物
				ply.setFillOpacity(0.1);  //设置透明度
				map.addOverlay(ply);  //添加覆盖物
				pointArray = pointArray.concat(ply.getPath());
			}    
			map.setViewport(pointArray);    //调整视野      
		    getLocationIcons(areaname);
	     });  
 		 }else if(areaname=="梁溪区"){
 		   bdary.get("南长区", function(rs){       //获取行政区域
			var count = 50;
			var pointArray = [];
			map.clearOverlays();
		 	 for (var i = 0; i < count; i++) {
				var ply = new BMap.Polygon(rs.boundaries[i], {strokeWeight: 2, strokeColor: "#ff0000"}); //建立多边形覆盖物
				map.addOverlay(ply);  //添加覆盖物
				pointArray = pointArray.concat(ply.getPath());
			}    
			map.setViewport(pointArray);    //调整视野      
		    getLocationIcons(areaname);
	    });  
 		  bdary.get("北塘区", function(rs){       //获取行政区域
			var count = 50;
			var pointArray = [];
		 	 for (var i = 0; i < count; i++) {
				var ply = new BMap.Polygon(rs.boundaries[i], {strokeWeight: 2, strokeColor: "#ff0000"}); //建立多边形覆盖物
				map.addOverlay(ply);  //添加覆盖物
				pointArray = pointArray.concat(ply.getPath());
			}    
			map.setViewport(pointArray);    //调整视野      
		    getLocationIcons(areaname);
	    }); 
	     bdary.get("崇安区", function(rs){       //获取行政区域
			var count = 50;
			var pointArray = [];
		 	 for (var i = 0; i < count; i++) {
				var ply = new BMap.Polygon(rs.boundaries[i], {strokeWeight: 2, strokeColor: "#ff0000"}); //建立多边形覆盖物
				map.addOverlay(ply);  //添加覆盖物
				pointArray = pointArray.concat(ply.getPath());
			}    
			map.setViewport(pointArray);    //调整视野      
		    getLocationIcons(areaname);
	    }); 
 		 }else{ 
	  	  bdary.get(areaname, function(rs){       //获取行政区域
			var count = rs.boundaries.length;
			var pointArray = [];
			map.clearOverlays();
		 	 for (var i = 0; i < count; i++) {
				var ply = new BMap.Polygon(rs.boundaries[i], {strokeWeight: 2, strokeColor: "#ff0000"}); //建立多边形覆盖物
				map.addOverlay(ply);  //添加覆盖物
				pointArray = pointArray.concat(ply.getPath());
			} 
			map.setViewport(pointArray);    //调整视野      
		    getLocationIcons(areaname);
	    });
      }	    
	   }else if(longitude!=null && latitude!=null){
             var new_point = new BMap.Point(longitude,latitude);  
             map.panTo(new_point);        
       }else{
           	 return false;
           }  
	}
	 setTimeout(function(){
		getBoundary(null,null,null);
	}, 0);
	
	
	function showDetail(siteName){    //调用父页面的详情方法
		 parent.showSiteDetail(siteName);
	} 
	 function showVideoPower(siteId,branchName){      //调用父页面的实时用电量方法
		 parent.showVideoPowerDetail(siteId,branchName);
	 }
	 
	 function showPower(siteName){      //调用父页面的实时用电量方法
		 parent.showPowerDetail(siteName);
	 }
	 
	 function showHookup(siteId){   //调用父类页面的一次接线图
	   parent.showHookupDetail(siteId);
	 }
	
	    function getLocationIcons(areaname){
	      $.post("<%=basePath%>site/areaMapLocation.html",{"area":areaname},function(data){
		     var areaList=data.areaLocation;
		    for ( var int = 0; int < areaList.length; int++) {
			var marker = new BMap.Marker(new BMap.Point(areaList[int].siteLongitude,areaList[int].siteLatitude));  // 创建标注
	    	if(areaList[int].siteType.typeName=="正常"){
			  var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 1 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			}else if(areaList[int].siteType.typeName=="离线"){
			var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 4 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			}else if(areaList[int].siteType.typeName=="故障"){
			   var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 3 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			}else if(areaList[int].siteType.typeName=="异常"){
			var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 2 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			}else{
			 var myIcon = new BMap.Icon("<%=basePath%>img/markers.png", new BMap.Size(23, 25), {  
                        offset: new BMap.Size(10, 25), // 指定定位位置  
                        imageOffset: new BMap.Size(0, 0 - 4 * 25) // 设置图片偏移  
                    });  
			  marker.setIcon(myIcon);//设置标签的图标为自定义图标
			  marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
			} 
			map.addOverlay(marker);               // 将标注添加到地图中
			addClickHandler(areaList[int],marker);
			    }
		    });
	}
</script>