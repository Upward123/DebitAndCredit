$(function () {
    var data = JSON.parse(sessionStorage.getItem("data"));
    console.log(data);

//  显示管理员的用户名
    $(".nav li:nth-child(3) a").html(data.username);

//    侧边栏 dt 的点击事件
    $(".slide-box .first-dt").click(function () {
        if($(".first-dd").css("display") == "none"){
            // $(".first-dd").css("display","block");

            //滑出方法---不写function 参数 也可以实现 display：block 的效果
            $(".first-dd").slideDown(200);

        }else{
            // $(".first-dd").css("display","none");

            //滑入方法
            $(".first-dd").slideUp(200,function () {
                $(this).css("display","none");
            });
        }
    })
    $(".slide-box .second-dt").click(function () {
        // if($(".second-dd").css("display") == "none"){
        //     $(".second-dd").css("display","block");
        // }else{
        //     $(".second-dd").css("display","none");
        // }

        //切换----相当于结合了slideUp 和 slideDown 两个方法
        $(".second-dd").slideToggle(200);
    })
    $(".slide-box .third-dt").click(function () {
        // if($(".third-dd").css("display") == "none"){
        //     $(".third-dd").css("display","block");
        // }else{
        //     $(".third-dd").css("display","none");
        // }
        $(".third-dd").slideToggle(200)
    })
    $(".slide-box .fourth-dt").click(function () {
        // if($(".third-dd").css("display") == "none"){
        //     $(".third-dd").css("display","block");
        // }else{
        //     $(".third-dd").css("display","none");
        // }
        $(".fourth-dd").slideToggle(200);
    })

//    侧边栏 dd 的点击事件
    $(".slide-box dd").click(function () {
        // $("#"+$(this).attr("id")).click(function () {
        //     switch ($(this).attr("id")) {
        //         case "slide-person-info":
        //             $("#person-info").css("display","block");
        //             $("#person-info").siblings().css("display","none");
        //             $("#page-title-person").addClass("page-title-selected").siblings().removeClass("page-title-selected");
        //             break;
        //         case "slide-person-msg":
        //             //因为 .item-content select 是选中了所有的select，
        //             // 一共有五个select，每个select下面都默认有一个 option，
        //             //所以默认的时候有五个 option节点
        //
        //             //个人资料页面 select 下拉框 option的加载
        //             //生成数据绑定函数
        //             //compile 是一个模板函数
        //             var compile = _.template($("#person-msg-template").html());
        //             // console.log(compile);
        //
        //             //获取 select 后台数据
        //             $.ajax({
        //                 // url:"https://easy-mock.com/mock/5d5ced8537bcc76f6b909825/p2p-data/",
        //                 url:"./personMsg.do",
        //                 type:"get",
        //                 dataType:"json",
        //                 async:true,
        //                 data:"",
        //                 success:function (data) {
        //                     console.log(data);
        //                     if(data.phonenumber!=null){
        //                         $("#person-msg-phonenum").attr("value",data.phonenumber);
        //                     }
        //                     for(var i = 0;i<data.result.length;i++){
        //                         switch (data.result[i].name) {
        //                             case "diplomas":
        //                                 if($("#person-msg-diplomas").children().length<2){
        //                                     _.each(data.result[i].value,function (dic) {
        //                                         //数据绑定，得到DOM字符串
        //                                         var tempOption = compile(dic);
        //                                         //添加DOM
        //                                         $("#person-msg-diplomas").append($(tempOption));
        //                                     });
        //                                 }
        //
        //                                 $(".item-content select").children("option[value='"+data.currentdiplomas+"']")
        //                                     .attr("selected","selected")
        //                                     .siblings().removeAttr("selected");
        //                                 break;
        //                             case "income":
        //                                 if($("#person-msg-income").children().length<2){
        //                                     _.each(data.result[i].value,function (dic) {
        //                                         var tempOption = compile(dic);
        //                                         $("#person-msg-income").append($(tempOption));
        //                                     });
        //                                 }
        //
        //                                 $(".item-content select").children("option[value='"+data.currentincome+"']")
        //                                     .attr("selected","selected")
        //                                     .siblings().removeAttr("selected");
        //                                 break;
        //                             case "marry":
        //                                 if($("#person-msg-marry").children().length<2){
        //                                     _.each(data.result[i].value,function (dic) {
        //                                         var tempOption = compile(dic);
        //                                         $("#person-msg-marry").append($(tempOption));
        //                                     });
        //                                 }
        //
        //                                 $(".item-content select").children("option[value='"+data.currentmarry+"']")
        //                                     .attr("selected","selected")
        //                                     .siblings().removeAttr("selected");
        //                                 break;
        //                             case "child":
        //                                 if($("#person-msg-child").children().length<2){
        //                                     _.each(data.result[i].value,function (dic) {
        //                                         var tempOption = compile(dic);
        //                                         $("#person-msg-child").append($(tempOption));
        //                                     });
        //                                 }
        //
        //                                 $(".item-content select").children("option[value='"+data.currentchild+"']")
        //                                     .attr("selected","selected")
        //                                     .siblings().removeAttr("selected");
        //                                 break;
        //                             case "house":
        //                                 if($("#person-msg-house").children().length<2){
        //                                     _.each(data.result[i].value,function (dic) {
        //                                         var tempOption = compile(dic);
        //                                         $("#person-msg-house").append($(tempOption));
        //                                     });
        //                                 }
        //
        //                                 $(".item-content select").children("option[value='"+data.currenthouse+"']")
        //                                     .attr("selected","selected")
        //                                     .siblings().removeAttr("selected");
        //
        //                                 console.log(data.currenthouse);
        //                                 break;
        //                         }
        //                     }
        //
        //                 }
        //             });
        //
        //
        //             $("#person-msg").css("display","block");
        //             $("#person-msg").siblings().css("display","none");
        //             $("#page-title-person").addClass("page-title-selected").siblings().removeClass("page-title-selected");
        //             break;
        //         case "slide-person-loginLog":
        //
        //             break;
        //
        //     }
        // });

        $(this).addClass("slide-selected").siblings().removeClass("slide-selected");
    })

//    用户信息查询部分开始

    //定义每一页显示的记录条数
    var  perNum = 5;

    //页数的点击事件----on 可以为目前还不存在的元素添加事件，click不可以
    $("#log-pages").on("click","span",function () {
        $(this).addClass("page-active").siblings()
            .removeClass("page-active");
    });

    //首页、上一页、下一页、最后一页的点击事件
    $("#start-page").click(function (){
        $("#log-pages span:eq(0)").addClass("page-active")
            .siblings().removeClass("page-active");
    });

    $("#last-page").click(function (){
        if($(".page-active").prev()){
            $(".page-active").prev().addClass("page-active")
                .siblings().removeClass("page-active");
        }
    });

    $("#next-page").click(function (){
        if($(".page-active").next()){
            $(".page-active").next().addClass("page-active")
                .siblings().removeClass("page-active");
        }
    });

    $("#end-page").click(function (){
        $("#log-pages span:last-child").addClass("page-active")
            .siblings().removeClass("page-active");
    });

    //登录成功进入这个页面时，就要请求一次数据
    $.ajax({
        url:"https://easy-mock.com/mock/5d5ced8537bcc76f6b909825/p2p-data/adminLog",
        data:"",
        dataType:"json",
        async:"true",
        type:"post",
        contentType:"application/json",
        success:function (data) {
            console.log(data);

            //动态加载 tbody
            var logCompile = _.template($("#login-log-template").html());
            _.each(data.loginLog.logs,function (dic) {
                var domLog = logCompile(dic);
                $("#show-logs").append($(domLog));
            })

            //    动态加载页数
            var num = data.loginLog.totalNum;
            var pageArr = [];

            //把得到的页数转成数组
            if(num%perNum == 0){
                for (var i=2;i<=num/perNum;i++){
                    var obj = {
                        "page":i
                    }
                    pageArr.push(obj);
                }

            }else{
                for (var i=2;i<=num/perNum+1;i++){
                    var obj = {
                        "page":i
                    }
                    pageArr.push(obj);
                }
            }

            // console.log(pageArr);

            var pageCompile = _.template($("#log-page-template").html());
            _.each(pageArr,function (dic) {
                var domPage = pageCompile(dic);
                $("#log-pages").append($(domPage));
            })

            //    页数的“流动”显示
            var pageLen = $("#log-pages").children().length;
            console.log(pageLen);
            if ($("#log-pages").children().length>5){
                $("#log-pages>span:eq(2)").text("...");
                $("#log-pages>span:eq(4)").nextAll().hide();
                $("#log-pages>span:eq(3)").text(pageLen-1);
                $("#log-pages>span:eq(4)").text(pageLen);
            }


            //首页、上一页、下一页、最后一页的点击事件
            if(pageLen>5){
                $("#start-page").click(function (){
                    $("#log-pages>span:eq(0)").text(1);
                    $("#log-pages>span:eq(1)").text(2);
                    $("#log-pages>span:eq(2)").text("...");
                    $("#log-pages span:eq(0)").addClass("page-active")
                        .siblings().removeClass("page-active");
                });

                $("#last-page").click(function (){
                    if($(".page-active").text()!=1){
                        if($(".page-active").prev().length!=0){
                            $(".page-active").prev().addClass("page-active")
                                .siblings().removeClass("page-active");
                        }else{
                            $("#log-pages>span:eq(1)").text(Number($(".page-active").text()));
                            $("#log-pages>span:eq(0)").text(Number($(".page-active").text())-1);
                            $("#log-pages>span:eq(2)").text("...");
                            $("#log-pages>span:eq(0)").addClass("page-active")
                                .siblings().removeClass("page-active");
                        }
                    }
                    if($(".page-active").text() == "..."){
                        $("#log-pages>span:eq(1)").text(Number($(".page-active").next().text()));
                        $("#log-pages>span:eq(0)").text(Number($(".page-active").next().text())-1);
                        $("#log-pages>span:eq(2)").text("...");
                        $("#log-pages>span:eq(0)").addClass("page-active")
                            .siblings().removeClass("page-active");
                    }
                });

                $("#next-page").click(function (){
                    // console.log(pageLen);
                    console.log($(".page-active").text());
                    if($(".page-active").text()!=pageLen){
                        $(".page-active").addClass("page-active").siblings().removeClass("page-active");
                    }
                    if($(".page-active").text() == "..."){
                        $("#log-pages>span:eq(0)").text(Number($("#log-pages>span:eq(0)").text())+1);
                        $("#log-pages>span:eq(1)").text(Number($("#log-pages>span:eq(0)").text())+1);
                        $("#log-pages>span:eq(2)").text("...");
                        $("#log-pages>span:eq(1)").addClass("page-active").siblings().removeClass("page-active");
                    }
                    if($(".page-active").text() == pageLen-3){
                        $("#log-pages>span:eq(1)").text(Number($("#log-pages>span:eq(0)").text())+1);
                        $("#log-pages>span:eq(2)").text(Number($("#log-pages>span:eq(1)").text())+1);
                        $("#log-pages>span:eq(0)").text("...");
                        $("#log-pages>span:eq(1)").addClass("page-active").siblings().removeClass("page-active");
                    }
                });

                $("#end-page").click(function (){
                    $("#log-pages span:eq(4)").addClass("page-active")
                        .siblings().removeClass("page-active");
                });
            }else{
                $("#start-page").click(function () {
                    $("#log-pages>span:first-child").addClass("page-active")
                        .siblings().removeClass("page-active");
                });
                $("#last-page").click(function () {
                    if($(".page-active").prev()){
                        $(".page-active").prev().addClass("page-active")
                            .siblings().removeClass("page-active");
                    }

                });
                $("#next-page").click(function () {
                    if($(".page-active").next()){
                        $(".page-active").next().addClass("page-active")
                            .siblings().removeClass("page-active");
                    }
                });
                $("#end-page").click(function () {
                    $("#log-pages>span:last-child").addClass("page-active")
                        .siblings().removeClass("page-active");
                });
            }

        }
    });

    // 侧边栏 dd 平台用户管理 的点击事件
    $("#slide-user-manage").click(function () {
        //发送请求，请求用户的登录等信息
        // $.ajax({
        //     url:"",
        //     data:"",
        //     dataType:"json",
        //     async:"true",
        //     type:"post",
        //     contentType:"application/json",
        //     success:function (data) {
        //         console.log(data);
        //
        //         // //动态加载 tbody
        //         // var logCompile = _.template($("#login-log-template").html());
        //         // _.each(arr,function (dic) {
        //         //     var domLog = logCompile(dic);
        //         //     $("#show-logs").append($(domLog));
        //         // })
        //         //
        //         // //    动态加载页数
        //         // var num = data.loginLog.totalNum;
        //         // var pageArr = [];
        //         //
        //         // //把得到的页数转成数组
        //         // if(num%perNum == 0){
        //         //     // if(num/perNum>5){
        //         //     //     pageArr.push({
        //         //     //         "page":2
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":"..."
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":num/perNum-1
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":num/perNum
        //         //     //     });
        //         //     //
        //         //     // }else{
        //         //     for (var i=2;i<=num/perNum;i++){
        //         //         var obj = {
        //         //             "page":i
        //         //         }
        //         //         pageArr.push(obj);
        //         //     }
        //         //     // }
        //         //
        //         // }else{
        //         //     // if(num/perNum>5){
        //         //     //     pageArr.push({
        //         //     //         "page":2
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":"..."
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":num/perNum
        //         //     //     });
        //         //     //     pageArr.push({
        //         //     //         "page":num/perNum+1
        //         //     //     });
        //         //     //
        //         //     // }else{
        //         //     for (var i=2;i<=num/perNum+1;i++){
        //         //         var obj = {
        //         //             "page":i
        //         //         }
        //         //         pageArr.push(obj);
        //         //     }
        //         //     // }
        //         // }
        //         // // console.log(pageArr);
        //         //
        //         // var pageCompile = _.template($("#log-page-template").html());
        //         // _.each(pageArr,function (dic) {
        //         //     var domPage = pageCompile(dic);
        //         //     $("#log-pages").append($(domPage));
        //         // })
        //
        //     }
        // });

        $("#user-manage").css("display","block");
        $("#user-manage").siblings().css("display","none");
    });

//    用户信息查询部分结束

})