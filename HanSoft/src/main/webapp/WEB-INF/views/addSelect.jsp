<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.min862f.css" />
<link rel="stylesheet" href="<%=basePath%>css/main.css" />
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/plugins/layer/laydate/laydate.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
</head>

<body class="layer-bg">
	<form action="<%=basePath%>user/save.html" name="userForm"
		id="userForm" method="post">
		<div class="layer">
			<div class="layer-body">
				<div class="selectMore clearfix">
						<div class="selectWrapper pull-left">
							<select multiple name="list1" size="10" ondblclick="moveOption(document.userForm.list1, document.userForm.list2)">
								<!--<c:forEach items="${companyList}" var="company">
									<option value="${company.sitecode}">${company.siteName}</option>
								</c:forEach>-->
							</select>
						</div>
						<div class="selectBtn pull-left">
							<input type="button" value="全部添加"
								onclick="moveAllOption(document.userForm.list1, document.userForm.list2)"><br />
							<br /> <input type="button" value="添加"
								onclick="moveOption(document.userForm.list1, document.userForm.list2)"><br />
							<br /> <input type="button" value="移除"
								onclick="moveOption(document.userForm.list2, document.userForm.list1)"><br />
							<br /> <input type="button" value="全部移除"
								onclick="moveAllOption(document.userForm.list2, document.userForm.list1)">
						</div>
						<div class="selectWrapper pull-left">
							<select multiple name="list2" id="selected" size="12"
								ondblclick="moveOption(document.userForm.list2, document.userForm.list1)">
							</select>
						</div>
				</div>
			</div>
		
			<div class="layer-footer">
				<a onclick="javascript:sumbitBtn();" class="btn btn-primary btn-wid">确认</a>
			</div>
		</div>
	</form>
<script language="JavaScript"> 
/* 操作全部   多选 */
function moveAllOption(e1, e2){ 
 var fromObjOptions=e1.options; 
  for(var i=0;i<fromObjOptions.length;i++){ 
   fromObjOptions[0].selected=true; 
   e2.appendChild(fromObjOptions[i]); 
   i--; 
  } 
}

/* 操作单个 */
function moveOption(e1, e2){ 
 var fromObjOptions=e1.options; 
  for(var i=0;i<fromObjOptions.length;i++){ 
   if(fromObjOptions[i].selected){ 
    e2.appendChild(fromObjOptions[i]); 
    i--; 
   } 
  } 
  
} 

function getvalue(geto){ 
var allvalue = ""; 
for(var i=0;i<geto.options.length;i++){ 
allvalue +=geto.options[i].value + ","; 
} 
return allvalue; 
} 

function changepos1111(obj,index) 
{ 
if(index==-1){ 
if (obj.selectedIndex>0){ 
obj.options(obj.selectedIndex).swapNode(obj.options(obj.selectedIndex-1)) 
} 
} 
else if(index==1){ 
if (obj.selectedIndex<obj.options.length-1){ 
obj.options(obj.selectedIndex).swapNode(obj.options(obj.selectedIndex+1)) 
} 
} 


} 
 function sumbitBtn(){
	 var index = parent.layer.getFrameIndex(window.name); //获取窗口索引
	 var codeList="";
	 var nameList="";
	 $("#selected option").each(function () {
	    var $option = $(this);
	    var html = $option.html();
	    var value = $option.val();
	    codeList+=value+",";
	    nameList+=html+",";
	 });
	 parent.$("#selectedValue").val(nameList) 
	  parent.$("#companyId").val(codeList) 
	 parent.layer.close(index);
 }
</script>
</body>
</html>