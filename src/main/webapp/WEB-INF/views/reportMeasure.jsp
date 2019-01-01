
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
    <title>能源报表</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link href="<%=basePath%>css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>css/css.css" rel="stylesheet">
   <link href="<%=basePath%>css/iconfont.css" rel="stylesheet">
    <link href="<%=basePath%>css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/bootstrap-datetimepicker.min.css" >
    <!-- <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen"> -->
    <link rel="stylesheet/less" type="text/css" href="<%=basePath%>css/less.less">
</head>
<body>
<div class="page-content over">
    <div class="con_right">
        <div class="right_div">
            <div class="container-fluid con_table">
                <div class="row">
                    <div class="col-md-12">
                        <div class="title">
                            <div class="row">
                                <div class="col-md-2">
                                    <div class="bt bt_small"><img src="<%=basePath%>images/t_11.png" alt="">能源计量统计报表</div><!-- 标题结束 -->
                                </div>
                            </div>
                        </div>
                        <!-- 标题结束 -->
                        <div class="search">
                            <form class="form-inline topform" method="post" action="<%=basePath%>/AllForms/searchFrom">
                                <div class="form-group form-group2">
                                      <input id="areaName" name="areaName" type="hidden"/>
                                      <input id="mediumName" name="mediumName" type ="hidden"/>
                                      <input id="start" name="start" type="hidden"/>
                                     <input id="end" name="end" type ="hidden"/>

                                    <select id="mediumNames" class="form-control">

                                       <option hidden>介质</option>

                                    </select>


                                </div>

                                <div class="form-group form-group2">
                                    <select id="selectAreasName" class="form-control">

                                    <option hidden value="0">区域</option>

                                    </select>

                                </div>

                                <div class="form-group form-group3">
                                    <!--id="daterange-btn"-->
                                    <input id="startTime" type="text" class="form-control form-control1 form-date" class="btn btn-default"  placeholder="请选择开始日期">
                                    <font>-</font>
                                    <input id="endTime" type="text" class="form-control form-control2 form-date"  placeholder="请选择结束日期">
                                </div>
                                <div class="fl-r">
                                    <div class="form-group form-group2 form-group4">
                                        <button id="submit" type="submit" class="btn btn-default btn_bt search_but">搜索</button>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </form>
                        </div>
                        <!-- 搜索框结束-->
                        <div class="table-responsive">
                            <div class="table_div over">

                                <table id="dataTable1" class="table table-hover table-striped">
                                    <tr class="trth">
                                        <th>仪器编号</th>

                                        <th>仪器名称</th>
                                        <th>区域</th>
                                        <th>仪表类型</th>
                                        <th>上底数</th>
                                        <th>下底数</th>
                                        <th>使用量</th>
                                        <th>时间</th>
                                        <th>录入人</th>
                                    </tr>

                                   <!--这里放列表信息 -->
                                </table>

                            </div>
                            <div class="systbot_div over">
                                <div class="page_div fl-l">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination">
                                            <li>
                                                <a href="#" aria-label="Previous">
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li>
                                                <a href="#" aria-label="Next">
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="page_to fl-r">
                                    <div class="page_all fl-l">
                                        共
                                        <span>10</span>
                                        页
                                    </div>
                                    <div class="page_input fl-l">
                                        <select class="form-control">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                        <label for="exampleInputName2" class="leftlabel mart5">条/页</label>
                                    </div>
                                    <div class="page_break fl-l">
                                        <div>
                                            <label for="exampleInputEmail2" class="leftlabel mart5">去第</label>
                                            <input type="input" class="form-control" id="exampleInputName2" />
                                            <label for="exampleInputName2" class="leftlabel mart5">页</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 分页外面的大盒子 -->
                        </div>
                        <!-- table结束 -->
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
                <img src="<%=basePath%>images/retan.png" alt="">确定要删除吗?
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



    $(document).ready(function () {
        //var url="<%=basePath%>areas/listAreasName";
        //alert(url);
        $.ajax({
            type: "get",
            url: "<%=basePath%>areas/listAreasName",
            dataType: 'JSON',
            cache:true,
            async: true,
            success: function (areaList) {

                var area = document.getElementById("selectAreasName");
                if (areaList != null) {
                    for (var i = 0; i < areaList.length; i++) {


                        area.options.add(new Option(areaList[i].areaName));

                    }
                }

                $.ajax({
                    type: "get",
                    url: "<%=basePath%>medium/listMediumNames",
                    dataType: 'JSON',
                    cache:true,
                    async: true,
                    success:function(mediumList){

                        var medium = document.getElementById("mediumNames");
                        if(mediumList!=null) {
                            for (var i = 0; i < mediumList.length; i++) {

                                medium.options.add(new Option(mediumList[i].mediumName));
                                //alert(mediumList[i].mediumName);
                            }
                        }


                    },
                    error:function () {
                        alert('获取listMediumNames错误！');
                    }

                });

            },

            error: function () {
                alert('获取istAreasName错误');


            }

        })


        //获取列水表list
        //var url="<%=basePath%>waterForm/listWaterForm";
        //alert(url);
        $.ajax({
         type:'get',
            url: "<%=basePath%>waterForm/listWaterForm",
            dataType:'JSON',
            cache:true,
            async: true,
            success:function (waterFormList) {

                if(waterFormList!=null){



                    //alert("有数据！");

                    for ( var i=0;i<waterFormList.length;i++){
                        var tbBody = "";
                        //时间转换
                        var time= new Date(waterFormList[i].createDate);
                        var newData= time.getFullYear() + "/" + (time.getMonth() + 1) + "/" + time.getDate() + "/" +time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                           tbBody += "<tr id=\"template\">" +
                               "<td id=\"ids\">"+waterFormList[i].waterId+"</td>"
                           +"<td id=\"name\">"+waterFormList[i].waterName+"</td>"
                               + "<td id=\"areas\">"+waterFormList[i].areaName+ "</td>"
                             +"<td id=\"typeid\">"+waterFormList[i].typeName+"</td>"
                              +"<td id=\"up\">"+waterFormList[i].waterUpperLimit+"</td>"
                             +"<td id=\"low\">"+waterFormList[i].waterLowerLimit+"</td>"
                             +"<td id=\"amount\">"+waterFormList[i].useWaterAmount+"</td>"
                            +"<td id=\"datetime\">"+newData+"</td>"
                            +"<td id=\"creator\">"+waterFormList[i].creatorName+"</td>"





                            +"</tr>";
                        $("#dataTable1").append(tbBody);
                    }
                }

    //获取电表LIst
    $.ajax({
        type: 'get',
        url: "<%=basePath%>elecForm/listElecForms",
        dataType: 'JSON',
        async: true,
        cache: true,

        success: function (electricityFormList) {

            if (electricityFormList != null) {

                for (var i = 0; i < electricityFormList.length; i++) {


                    time = new Date(electricityFormList[i].createDate);

                    var newData = time.getFullYear() + "/" + (time.getMonth() + 1) + "/" + time.getDate() + "/" + time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds();
                    tbBody +=

                        "<td id=\"ids\">" + electricityFormList[i].electricityId + "</td>"
                        + "<td id=\"name\">" + electricityFormList[i].electricityName + "</td>"
                        + "<td id=\"areas\">" + electricityFormList[i].areaName+ "</td>"

                        + "<td id=\"typeid\">" + electricityFormList[i].typeName + "</td>"
                        + "<td id=\"up\">" + electricityFormList[i].elecUpperLimit + "</td>"
                        + "<td id=\"low\">" + electricityFormList[i].elecLowerLimit + "</td>"
                        + "<td id=\"amount\">" + electricityFormList[i].useElecAmount + "</td>"
                        + "<td id=\"datetime\">" + newData + "</td>"
                        + "<td id=\"creator\">" + electricityFormList[i].creatorName + "</td>"

                        + "</tr>";
                    $("#dataTable1").append(tbBody);
                }

            }


        },

        error: function () {

        }

    })



            } ,


            error:function () {
                alert('获取waterFormList错误');
            }

        })


    })


    //select选中选项事件
    $("#selectAreasName").change(function () {

        var areasName = $("#selectAreasName").val();
    //把值放入input
        document.getElementById('areaName').value=areasName;



       // alert(areasName);


    })

    $("#mediumNames").change(function () {
        var mediumName=$("#mediumNames").val();
        document.getElementById('mediumName').value=mediumName;
        // alert(mediumName);
    })

    //得到这两个参数传入controller层
    // 方法1 是通过把值传入页面上的新建的Hidden属性的input通过name属性传递过去





    $("#startTime").change(function(){

        var start =document.getElementById('startTime').value;

        document.getElementById("start").value=start;
       // alert(start);


    })

    $("#endTime").change(function(){


        var ends =document.getElementById('endTime').value;
        document.getElementById("end").value =ends;
        //alert(ends);
    })








</script>
</body>
</html>
