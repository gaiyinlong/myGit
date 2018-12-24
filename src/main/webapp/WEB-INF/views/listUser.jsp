<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>用户设置</title>
		<link rel="stylesheet" href="<%=basePath%>css/bootstrap.min.css" />
		<link href="<%=basePath%>css/font-awesome.min93e3.css" rel="stylesheet">
		<link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
		<link href="<%=basePath%>css/style.min862f.css" rel="stylesheet">
		<style>
		.table tr td{
		  max-width:200px;
		  overflow: hidden;
          text-overflow: ellipsis;
		}
		</style>
	</head>

	<body class="gray-bg">
		<div style="border:0px solid red;width:105%;height:110%;margin-left:-21px;margin-top:-18px" class="wrapper wrapper-content animated fadeInRight">
			<div class="row">
				<div  class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-content text-center clearfix">
						<form action="<%=basePath%>user.html" method="post" name="userForm" id="userForm" class="clearfix">
							<label class="control-label">登录名</label>
							<div class=" pd-right">
								<input " type="text" placeholder="登录名" class="form-control" name="loginname" value="" />
							</div>
							<label class="control-label">角色</label>
							<div class=" pd-right">
								<select  name="roleId" id="roleId"  class="form-control">
									<option value="">
										请选择
									</option>
									<!--<c:forEach items="${roleList}" var="role">
										<option value="${role.roleId }"
											<c:if test="${user.roleId==role.roleId}">selected</c:if>>
											${role.roleName }
										</option>
									</c:forEach>-->
								</select>
							</div>
							<label class="control-label">登录日期</label>
					 	     <div class="pd-right">
								<input style="margin-left:-10px" style="width:160px" placeholder="开始日期" name="lastStart" class="form-control layer-date laydate-icon" id="start"
							 readonly="readonly">
								
							</div>
							<label style="margin-left:-10px" class="control-label">-</label>
							<div class="pd-right">
								<input style="margin-left:-20px" style="width:160px" placeholder="结束日期" name="lastEnd" class="form-control layer-date laydate-icon" id="end"
								 readonly="readonly">
								
							
							
							</div>
						     <div>
								 <a style="margin-left:-20px;" class="btn btn-primary btn-wid"  onclick=""><i class='fa fa-search fa-icon'></i>查询</a>
								 <a class="btn btn-primary btn-wid"  onclick="addUser()"><i class='fa fa-plus fa-icon'></i>新增</a>
								 </div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="ibox float-e-margins">
						<div class="ibox-title">
							<h5>用户设置</h5>
						</div>
						<div class="ibox-content clearfix">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>序号</th>
										<th>所属公司</th>
										<th>登录名</th>
										<th>用户名</th>
										<th>角色</th>
										<th>最近登录</th>
										<th>登陆IP</th>
										<th>操作</th>
									</tr>
								</thead>
								<!--<tbody>
									<c:choose>
										<c:when test="${not empty userList}">
											<c:forEach items="${userList}" var="user" varStatus="vs">
												<tr class="main_info">
													<td>${vs.index+1}</td>
													<td  title="${user.siteName}">${user.siteName}</td>
													<td>${user.loginname }</td>
													<td>${user.username }</td>
													<td>${user.role.roleName }</td>
													<td><fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
													<td>
														<a href="javascript:editUser(${user.userId });"><i
															class="fa fa-edit"></i>修改</a> |
														<c:if test="${user.role.roleId!=1}"><a href="javascript:delUser(${user.userId });"><i
															class="fa fa-close"></i>删除</a> |</c:if>
														<a href="javascript:editRights(${user.userId });"><i
															class="fa fa-cog"></i>权限</a>
													</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr class="main_info">
												<td colspan="8">
													没有相关数据
												</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>-->
							</table>
							<div class="page_and_btn">
							
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!--end-内容区-->
		<script src="<%=basePath%>js/jquery.min.js"></script>
		<script src="<%=basePath%>js/bootstrap.min.js"></script>
		<script src="<%=basePath%>js/plugins/layer/layer.min.js"></script>
		<script src="<%=basePath%>js/plugins/layer/laydate/laydate.js"></script>
		<script type="text/javascript">
			var start = {
				elem: '#start',
				format: 'YYYY-MM-DD hh:mm:ss',
				max: laydate.now(), //设定最小日期为当前日期
				//max: '2099-06-16 23:59:59', //最大日期
				istime: true,
				istoday: false,
				choose: function(datas) {
					end.min = datas; //开始日选好后，重置结束日的最小日期
					end.start = datas; //将结束日的初始值设定为开始日
				}
			};
			var end = {
				elem: '#end',
				format: 'YYYY-MM-DD hh:mm:ss',
				max: laydate.now(),
				//max: '2099-06-16 23:59:59',
				istime: true,
				istoday: false,
				choose: function(datas) {
					start.max = datas; //结束日选好后，重置开始日的最大日期
				}
			};
			laydate(start);
			laydate(end);
			
			function userSearch() {
				$("#userForm").submit();
			}
			
			function addUser() {
				layer.open({
					type : 2,
					title : '新增用户',
					skin: 'demo-class',
					area : [ '500px', '400px' ],
					content : 'user/addUser'
				});
			}
			
			function editUser(userId) {
				layer.open({
					type : 2,
					title : '修改用户',
					skin:'demo-class',
					area : [ '500px', '400px' ],
					content : 'user/edit.html?userId=' + userId
				});
			}
			
			function delUser(userId) {
				if (confirm("确定要删除该记录？")) {
					var url = "user/delete.html?userId=" + userId;
					$.get(url, function(data) {
						if (data == "success") {
						    parent.layer.msg("【用户删除成功！】");
							document.location.reload();
						}
					});
				}
			}
			
			function editRights(userId) {
				layer.open({
					type : 2,
					title : '用户授权',
					btn : [ '确定', '取消' ],
					skin: 'demo-class',
					area : [ '300px', '350px' ],
					content : 'user/auth.html?userId=' + userId,
					yes : function(index, layero) {
						var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：
						var zTree = iframeWin.zTree;
						var nodes = zTree.getCheckedNodes();
						var tmpNode;
						var ids = "";
						for ( var i = 0; i < nodes.length; i++) {
							tmpNode = nodes[i];
							if (i != nodes.length - 1) {
								ids += tmpNode.id + ",";
							} else {
								ids += tmpNode.id;
							}
						}
						var url = "user/auth/save.html";
						var postData = {"userId" : userId, "menuIds" : ids };
						if(ids==""){
						  parent.layer.msg("选择用户不能为空!");
						  return;
						}
						$.post(url, postData, function(data) {
							if (data && data == "success") {
								layer.close(index);
							}
						});
					}
				});
			}
		function success(info){
		     document.location.reload();
		     parent.layer.msg(info);
		}
		function failed(info){
		     parent.layer.msg(info);
		}	
			
		</script>
	</body>
</html>