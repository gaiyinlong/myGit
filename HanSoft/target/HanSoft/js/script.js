$(function(){
    var Height=$(window).height()-50;
    // $(".content").css("height",Height+"px");
    $(".content .con_left").css("height",Height+"px");
    console.log($(".content").height());
    // 固定高度

    $("i.icon-arrow_down").hide();
    $(".sidebar-menu .treeview").mouseover(function(){
        $(this).find("i.icon-arrow_right").hide();
        $(this).find("i.icon-arrow_down").show();
    }).mouseout(function(){
        $(this).find("i.icon-arrow_right").show();
        $(this).find("i.icon-arrow_down").hide();
    })

    // $(".con_left .left_topimg").click(function(){
    //     var id= $(this).attr('data');
    //     if(id==1){
    //         $(this).attr("data","2");
    //         $(".sidebar-menu span").hide(); 
    //         $(".sidebar-menu i.fa").hide();
    //         $(".sidebar-menu i.icon-arrow_right").hide();
    //         $(".sidebar-menu .treeview").mouseover(function(){
    //             $(".sidebar-menu i.icon-arrow_right").hide();
    //             $(".sidebar-menu i.icon-arrow_down").hide();
    //             return false;
    //         })
    //     }
    //     else{
    //         $(this).attr("data","1");
    //         $(".sidebar-menu span").show(); 
    //         $(".sidebar-menu i.fa").show();
    //         $(".sidebar-menu i.icon-arrow_right").show();
    //     }
    // })
    //左侧导航 



    // tab切换
    $(".tab li:gt(0)").css("border-left","none");
    $(".tab_div>div:gt(0)").hide();
    $(".tab li").click(function(){
        var $index=$(this).index();
        $(this).addClass("current").siblings("li").removeClass("current");
        $(".tab_div>div").eq($index).show().siblings(".label_input").hide();
    })
    
    $(".big>div:gt(0)").hide();
    $(".type_tab li").click(function(){
        var $index=$(this).index();
        $(this).addClass("current").siblings("li").removeClass("current");
        $(".big>div").eq($index).show().siblings("div").hide();
    })

    // 能耗对比+取消对比
    $(".but2").hide();
    $(".but_sub").click(function(){
        var li = $(this).attr('data-type');
        var length = $('input[type=checkbox]:checked').length;
        if (length == 0 || length == 1) {
            alert('请选择两条数据');
            return false;
        }else if (length == 2){
            if (li == 1) {
                $(".pic2").show();
                $(".pic1").hide();
                $(this).attr('data-type','2');
                $(".but2").show();
                $(".but1").hide();
                return false;
            }else{
                $('input[type=checkbox').attr('checked',false);
                $(".pic2").hide();
                $(".pic1").show();
                $(".but1").show();
                $(".but2").hide();
            }
        }else{
            alert('仅限两条数据对比');
            return false;
        }
    })

    // 单机能耗分析  三条线
    $(".three_img>img:gt(0)").hide();
    // $(".selector1").change(function(){
    //     var imgs=$(this).val();
    //     alert(imgs);
    //     $('.three_img img').hide();
    //     $("."+imgs).show();
    // })

    // 单机能耗分析  三条线
    var arr = [];//定义一个数组用来接收多选框的值  
    //初始化让下拉列表不显示  
    $(function () {  
        $('#selectBox').hide();  
    })  
    //单击下拉列表时显示/隐藏下拉列表  
    $('#box').click(function () {  
        $('#selectBox').toggle();  
    })  
    //监听checkbox的value值 改变则执行下列操作  
    $("input").change(function () {  
        if ($(this).prop("checked")) {  
            arr.push($(this).val());//将选中的选项添加到数组中  
        } else {  
            var index = getIndex(arr, $(this).val())//找到没有选中的选项在数组中的索引  
            arr.splice(index, 1);//在数组中删除该选项  
        }  
    })  
    //这个函数用于获取指定值在数组中的索引  
    function getIndex(arr, value) {  
        for (var i = 0; i < arr.length; i++) {  
            if (arr[i] == value) {  
                return i  
            }  
        }  
    }  
    //点击按钮是弹出数组  
    $('.butt').click(function () {  
        var aleng=arr.length;
        console.log(aleng);
        if(aleng==1){
            $(".three_img .oneimg").show().siblings("img").hide();
        }else if(aleng==2){
            $(".three_img .twoimg").show().siblings("img").hide();
        }else if(aleng==3){
            $(".three_img .threeimg").show().siblings("img").hide();
        }else{
            $(".three_img .oneimg").show().siblings("img").hide();
        }
        $("#selectBox").hide();
        return false;
    })  


    // 年月周报
    $(".bigone_img img:gt(0)").hide();
    $(".search_but").click(function(){
        var sel1=$(".sel1").val(),
            sel2=$(".sel2").val();
        console.log(sel1,sel2);
        if(sel1!='' && sel2==''){
            $(".img11").show().siblings("img").hide();
        }else if(sel1!='' && sel2!=''){
            $(".img22").show().siblings("img").hide();
        }else{
            $(".img11").show().siblings("img").hide();
        }
    })

})