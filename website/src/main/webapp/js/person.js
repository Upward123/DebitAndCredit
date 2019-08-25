$(function () {
    var data = JSON.parse(sessionStorage.getItem("data"));
    console.log(data);

//  个人信息页面开始
    $(".nav li:nth-child(4) a").html(data.username).css({"color":"blue","fontWeight":"700"});
    $(".body-box .userinfo .username").html(data.username);
    $(".body-box .userinfo .logintime").html(data.currentDate);

    //第一种在 jQuery 中自自定义函数 的方法
    //字符串分割的方法
    $.fn.strSub = function(str,flag){
        var s = [];
        if(flag == 0){
            for(var i = str.length;i>0;i-=3){
                var a = str.substring(i-3,i);
                s.push(a);
            }
        }else{
            for(var i = 0;i<str.length;i+=3){
                var a = str.substring(i,i+3);
                s.push(a);
            }
        }
        return s;
    };

    //字符串反序的方法
    $.fn.toReverse = function(str){
        var s = '';
        for(var i = str.length-1; i>=0;i--) {
            s += str[i];
        }
        return s;
    };

    // console.log($(this).strSub("1123456",0));
    // // arr.reverse() ----- 数组反序
    // console.log($(this).strSub("1123456",0).reverse().join(","));

    //第二种在 jQuery 中自自定义函数 的方法
    $.fn.extend({
        //连接字符串的方法
        "joinStr":function (sum) {
            if(sum.indexOf(".")==-1){
                var sum = $(this).strSub(sum,0).reverse().join(",");
                // console.log(sum);
            }else{
                var sum1 = $(this).strSub(sum.split(".")[0],0).reverse().join(",");
                var sum2 = $(this).strSub(sum.split(".")[1],1).join(",");
                sum = sum1+"."+sum2;
                // console.log(sum);
            }
            return sum;
        },

        //处理后台传过来的数据
        "processData":function (data) {
            var dataObj = {
                sum:0,
                usableamount:0,
                freezedamount:0,
                unreceiveinterest:0,
                unreceiveprincipal:0,
                unreturnamount:0
            };
            dataObj.sum = data.sum;
            dataObj.usableamount = data.account.usableamount;
            dataObj.freezedamount = data.account.freezedamount;
            dataObj.unreceiveinterest = data.account.unreceiveinterest;
            dataObj.unreceiveprincipal = data.account.unreceiveprincipal;
            dataObj.unreturnamount = data.account.unreturnamount;

            var sum = dataObj.sum.toString();
            // var sum = "123456";
            sum = $(this).joinStr(sum);
            dataObj.sum = sum;

            var usableamount = dataObj.usableamount.toString();
            usableamount = $(this).joinStr(usableamount);
            dataObj.usableamount = usableamount;

            var freezedamount = dataObj.freezedamount.toString();
            freezedamount = $(this).joinStr(freezedamount);
            dataObj.freezedamount = freezedamount;

            var unreceiveinterest = dataObj.unreceiveinterest.toString();
            unreceiveinterest = $(this).joinStr(unreceiveinterest);
            dataObj.unreceiveinterest = unreceiveinterest;

            var unreceiveprincipal = dataObj.unreceiveprincipal.toString();
            unreceiveprincipal = $(this).joinStr(unreceiveprincipal);
            dataObj.unreceiveprincipal = unreceiveprincipal;

            var unreturnamount = dataObj.unreturnamount.toString();
            unreturnamount = $(this).joinStr(unreturnamount);
            dataObj.unreturnamount = unreturnamount;

            return dataObj;
        }
    });

    // console.log($(this).processData(data));


    $("#sum").html($(this).processData(data).sum+"元");
    $("#usableamount").html($(this).processData(data).usableamount+"元");
    $("#freezedamount").html($(this).processData(data).freezedamount+"元");
    $("#unreceiveinterest").html($(this).processData(data).unreceiveinterest+"元");
    $("#unreceiveprincipal").html($(this).processData(data).unreceiveprincipal+"元");
    $("#unreturnamount").html($(this).processData(data).unreturnamount+"元");

//    次级导航栏的点击事件
    $(".page-title li").click(function () {
        $("#"+$(this).attr("id")).click(function () {
            switch ($(this).attr("id")) {
                case "page-title-index":
                    $(location).attr("href","../website_war_exploded/login.html");
                    break;
                case "page-title-invest":
                    break;
                case "page-title-borrow":

                    break;
                case "page-title-person":
                    $(".slide-box dd").css("display","block");

                    $("#person-info").css("display","block");
                    $("#person-info").siblings().css("display","none");
                    $("#slide-person-info").addClass("slide-selected").siblings().removeClass("slide-selected");

                    break;
                case "page-title-rookie":
                    break;
                case "page-title-aboutMe":
                    break;
            }
        });

        $(this).addClass("page-title-selected").siblings().removeClass("page-title-selected");

    })

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


//    侧边栏的 dd 个人信息 个人资料 点击事件
    $("#slide-person-info").click(function () {
        $("#person-info").css("display","block");
        $("#person-info").siblings().css("display","none");
        $("#page-title-person").addClass("page-title-selected").siblings().removeClass("page-title-selected");
    })

    $("#slide-person-msg").click(function () {
        //因为 .item-content select 是选中了所有的select，
        // 一共有五个select，每个select下面都默认有一个 option，
        //所以默认的时候有五个 option节点

        //个人资料页面 select 下拉框 option的加载
        //生成数据绑定函数
        //compile 是一个模板函数
        var compile = _.template($("#person-msg-template").html());
        // console.log(compile);

        //获取 select 后台数据
        $.ajax({
            // url:"https://easy-mock.com/mock/5d5ced8537bcc76f6b909825/p2p-data/",
            url:"./personMsg.do",
            type:"get",
            dataType:"json",
            async:true,
            data:"",
            success:function (data) {
                console.log(data);
                if(data.phonenumber!=null){
                    $("#person-msg-phonenum").attr("value",data.phonenumber);
                }
                for(var i = 0;i<data.result.length;i++){
                    switch (data.result[i].name) {
                        case "diplomas":
                            if($("#person-msg-diplomas").children().length<2){
                                _.each(data.result[i].value,function (dic) {
                                    //数据绑定，得到DOM字符串
                                    var tempOption = compile(dic);
                                    //添加DOM
                                    $("#person-msg-diplomas").append($(tempOption));
                                });
                            }

                            $(".item-content select").children("option[value='"+data.currentdiplomas+"']")
                                .attr("selected","selected")
                                .siblings().removeAttr("selected");
                            break;
                        case "income":
                            if($("#person-msg-income").children().length<2){
                                _.each(data.result[i].value,function (dic) {
                                    var tempOption = compile(dic);
                                    $("#person-msg-income").append($(tempOption));
                                });
                            }

                            $(".item-content select").children("option[value='"+data.currentincome+"']")
                                .attr("selected","selected")
                                .siblings().removeAttr("selected");
                            break;
                        case "marry":
                            if($("#person-msg-marry").children().length<2){
                                _.each(data.result[i].value,function (dic) {
                                    var tempOption = compile(dic);
                                    $("#person-msg-marry").append($(tempOption));
                                });
                            }

                            $(".item-content select").children("option[value='"+data.currentmarry+"']")
                                .attr("selected","selected")
                                .siblings().removeAttr("selected");
                            break;
                        case "child":
                            if($("#person-msg-child").children().length<2){
                                _.each(data.result[i].value,function (dic) {
                                    var tempOption = compile(dic);
                                    $("#person-msg-child").append($(tempOption));
                                });
                            }

                            $(".item-content select").children("option[value='"+data.currentchild+"']")
                                .attr("selected","selected")
                                .siblings().removeAttr("selected");
                            break;
                        case "house":
                            if($("#person-msg-house").children().length<2){
                                _.each(data.result[i].value,function (dic) {
                                    var tempOption = compile(dic);
                                    $("#person-msg-house").append($(tempOption));
                                });
                            }

                            $(".item-content select").children("option[value='"+data.currenthouse+"']")
                                .attr("selected","selected")
                                .siblings().removeAttr("selected");

                                console.log(data.currenthouse);
                            break;
                    }
                }

            }
        });

        
        $("#person-msg").css("display","block");
        $("#person-msg").siblings().css("display","none");
        $("#page-title-person").addClass("page-title-selected").siblings().removeClass("page-title-selected");
    })

//    个人信息页面结束

//    个人资料页面 开始
//    动态显示用户名
    $("#person-msg-username").html(data.username);

//    select 下拉框的方法---改变option选中项的selected属性
    $(".item-content select").change(function () {
        var value = $(this).val();
        $(this).children("option[value='"+value+"']")
            .attr("selected","selected")
            .siblings().removeAttr("selected");
        // console.log(value);
    });

//    保存用户的 个人中心页面 的 个人资料 的数据
    $("#person-msg-save").click(function () {

        // //保存成功之后弹出 toast
        // $("#save-success-kuang").fadeIn(500).fadeOut(1500);

        // //保存失败之后弹出 toast
        // $("#save-fail-kuang").fadeIn(500).fadeOut(1500);

        var phonenumber = $("#person-msg-phonenum").val();
        var currentdiplomas = Number($("#person-msg-diplomas").val());
        var currentincome = Number($("#person-msg-income").val());
        var currentmarry = Number($("#person-msg-marry").val());
        var currentchild = Number($("#person-msg-child").val());
        var currenthouse = Number($("#person-msg-house").val());

        console.log(currentdiplomas,currentincome,currentmarry,currentchild,currenthouse);
        
        $.ajax({
            url:"./personMsgSave.do",
            data:JSON.stringify({
                "phonenumber":phonenumber,
                "currentdiplomas":currentdiplomas,
                "currentincome":currentincome,
                "currentmarry":currentmarry,
                "currentchild":currentchild,
                "currenthouse":currenthouse
            }),
            dataType:"json",
            async:true,
            type:"post",
            contentType:"application/json;charset=utf-8",
            success:function (data) {
                if(data==1){
                    //保存成功之后弹出 toast
                    $("#save-success-kuang").fadeIn(500).fadeOut(1500);
                }else{
                    //保存失败之后弹出 toast
                    $("#save-fail-kuang").fadeIn(500).fadeOut(1500);
                }
            }
        });
    });
    
//    个人资料页面结束

})