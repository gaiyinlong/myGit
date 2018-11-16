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
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>css/style.min862f.css" />
<link rel="stylesheet" href="<%=basePath%>css/main.css" />
</head>

<body class="layer-bg">
	<form action="<%=basePath%>user/save.html" name="userForm" id="userForm" method="post">
	    <input type="hidden"  name="companyId" id="companyId" value=""/>
		<div class="layer">
			<div class="layer-body">
				<input type="hidden" name="userId" id="userId" value="" />
				<input type="hidden" name="password" id="password" value="" />
				<table>
					<tbody>
						<tr>
							<td width="80px" align="left">登录名：</td>
							<td><input type="text" name="loginname" id="loginname"
								class="input_txt" value="" /></td>
						</tr>
						<tr id="passwordhidden">
							<td width="80px" align="left">密码：</td>
							<td><input type="password" name="pwd" id="pwd"
								class="input_txt" value="" /></td>
						</tr>
						<tr id="chkpwdhidden">
							<td width="80px" align="left">确认密码：</td>
							<td><input type="password" name="chkpwd" id="chkpwd"
								class="input_txt" /></td>
						</tr>
						<tr>
							<td width="80px" align="left">用户名：</td>
							<td><input type="text" name="username" id="username"
								class="input_txt" value="" /></td>
						</tr>
						<tr>
							<td width="80px" align="left">角色：</td>
							<td><select name="roleId" id="roleId" class="input_txt" >
									<option value="">请选择</option>
									<!--<c:forEach items="${roleList}" var="role">
										<option value="${role.roleId }">${role.roleName }</option>
									</c:forEach>-->
							</select></td>
						</tr>
						<tr class="company" id="company" >
							<td width="80px" align="left">所属企业：</td>
							<td>
							<input type="text" name="selectedValue" id="selectedValue" class="input_txt selectValue" value="" />
							  <a class="btn btn-primary btn-wid" id="addSelectCont" onclick="selectUser();" style="width:20%;margin-left:8%;height:28px;padding:0 8px; margin-top:-4px;line-height:28px">选择</a>
							</td>
					</tbody>
				</table>
			</div>
		
			<div class="layer-footer">
				<a onclick="javascript:sumbitBtn();" class="btn btn-primary btn-wid">确认</a>
			</div>
		</div>
	</form>

	<iframe name="result" id="result" src="about:blank" frameborder="0"
		width="0" height="0"></iframe>
	<script src="<%=basePath%>js/jquery.min.js"></script>
	<script src="<%=basePath%>js/plugins/layer/laydate/laydate.js"></script>
	<script src="<%=basePath%>js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins/layer/layer.min.js"></script>
	<script type="text/javascript">
			$(document).ready(function(){
				if($("#userId").val()!=""){
					$("#loginname").attr("readonly","readonly");
					$("#loginname").css("color","gray");
					var roleId = "${user.roleId}";
					if(roleId!=""){
						$("#roleId").val(roleId);
					}
					
				    document.getElementById("passwordhidden").style.display = "none";
				    document.getElementById("chkpwdhidden").style.display = "none";  
				} 
				    
			});
			
			function sumbitBtn(){
				
		        if($("#loginname").val()==""){
					parent.layer.msg("请输入登录名!");
					$("#loginname").focus();
					return;
				}
		        var pwd =$("#pwd").val().replace(/\s+/g, "");
		        var chkpwd =$("#chkpwd").val().replace(/\s+/g, "");
				if($("#userId").val()==""){
				    if($("#pwd").val()==""){
				      parent.layer.msg("请输入密码!");
					  $("#pwd").focus();
					  return;
				    }
				    
				    if(pwd!=chkpwd){
					  parent.layer.msg("两次输入密码不一致!");
					  $("#pwd").focus();
					  return;
				    }
				}
				var boolpass = isPasswd($("#pwd").val());
				if(boolpass==false){
				 parent.layer.msg("您输入的密码至少包含一个数字和一个字母！");
				 return;
				}
				if(pwd.length<6 || $("#pwd").val().length>20){
				 parent.layer.msg("只能输入6-20个字母、数字！");
				 return;
				}
				$("#password").val(pwd)
				if($("#username").val()==""){
					parent.layer.msg("请输入用户名");
					$("#username").focus();
					return;
				}
				if($("#roleId").val()==""){
					parent.layer.msg("请选择角色!");
					$("#roleId").focus();
					return;
				}
				if($("#selectedValue").val()==""){
					alert("请选择所属企业!");
					return;
				}
				
				var bool = getSameUserName();
				if(bool==false){
				 alert("【"+$("#loginname").val()+"】已存在，请重新输入");
				 return;
				}
				$("#userForm").submit();
			}
			
			function failed(){
				alert("新增失败，该用户名已存在！");
				$("#loginname").select();
				$("#loginname").focus();
				return false;
			}
			
			function onchangeCompany(){
			  var roleId=$("#roleId").val();
			  var row = document.getElementById("company"); 
		      if (row != null) { 
		        if (roleId == 4) { 
		           row.style.opacity = "1";
		        } 
		        else { 
		           row.style.opacity = "0"; 
		        } 
		      } 
		        var url = "<%=basePath%>user/getCompany.html";
				$.get(url,function(data){
				     if(data.siteList.length>0){
				         var sltCity = document.getElementById("companyId");
						 while (sltCity.firstChild) {
							  sltCity.removeChild(sltCity.firstChild); //移除已有的节点
						    }
						$("#companyId").append( "<option value=''>请选择</option> ");
					    for ( var i = 0; i < data.siteList.length; i++) {
							$("#companyId").append( "<option value='"+data.siteList[i].sitecode+"'>"+ data.siteList[i].siteName + " </option> ");
						}
				     }else{
				       $("#companyId").append( "<option value=''>请选择</option> ");
				     }
				  
				});
			}
			
		 function getSameUserName(){
		      var bool=null;
			  var loginname = $("#loginname").val();
			  var companyId = $("#companyId").val();
		        var url = "<%=basePath%>user/getSameUserName.html?loginname="+loginname+"&siteId="+companyId;
		        $.ajaxSetup({  
				    async : false //取消异步  
				});
				$.get(url,function(data){
				     bool= data.boolean;
				});
			return bool;
		}
		
		//校验密码：由数字和26个英文字母组成的字符串     
		function isPasswd(obj)  
		{  
			 if (obj.match(/\d/) && obj.match(/[a-zA-Z]/)){  
	           return true;  
	         }  
	         else{  
	           return false;  
	         }  
		} 
		
		function selectUser() {
			layer.open({
				type : 2,
				title : '选择企业',
				skin: 'demo-class',
				area : [ '500px', '300px' ],
				content : '<%=basePath%>user/selectUser'
			});
		}
		</script>
</body>
</html>