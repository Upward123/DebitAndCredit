$(function(){

    //向后台请求数据
    $.fn.requestData = function(currentPage){
        //发送请求，请求用户的登录等信息
        $.ajax({
            url:"./iplog.do",
            data:JSON.stringify({
                // "currentPage":($(".page-active").text()=="")?1:$(".page-active").text(),
                "currentPage":currentPage,
                "pageSize":perNum,
                "beginDate":$("#login-log-beginDate").val(),
                "endDate":$("#login-log-endDate").val(),
                "state":$("#login-state").val()
            }),
            dataType:"json",
            async:"true",
            type:"post",
            contentType:"application/json;charset=UTF-8",
            success:function (data) {
                console.log("后台数据",data);

                var processedData = $this.processLogsData(data.pageResultSet);

                console.log("处理后的数据",processedData);

                //动态加载 tbody
                var logCompile = _.template($("#login-log-template").html());
                _.each(processedData.logsArr,function (dic) {
                    var domLog = logCompile(dic);
                    $("#show-logs").append($(domLog));
                })

                //动态显示页数
                var pageCompile = _.template($("#log-page-template").html());
                _.each(processedData.pagesArr,function (dic) {
                    var domPage = pageCompile(dic);
                    $("#log-pages").append($(domPage));
                });

                //让当前页码处于选中状态
                $("#log-pages>span[value='"+processedData.currentPage+"']").addClass("page-active")
                    .siblings().removeClass("page-active");

                // 总页数大于5时，只显示前两页和后两页，中间用“...”表示
                var pageLen = $("#log-pages").children().length;
                if ($("#log-pages").children().length>5){
                    for(var i=0;i<$("#log-pages").children().length;i++){
                        // console.log("第"+(i+1)+"个span",$("#log-pages>span:eq("+i+")").text());
                        if($("#log-pages>span:eq("+i+")").text()>3&&$("#log-pages>span:eq("+i+")").text()<pageLen-1){
                            $("#log-pages>span:eq("+i+")").css("display","none");
                        }
                    }
                    if(processedData.currentPage<pageLen-3){
                        if(processedData.currentPage==pageLen-4){
                            $("#log-pages>span:eq("+(processedData.currentPage+1)+")").text("...");
                            for(var i=0;i<pageLen-5;i++){
                                $("#log-pages>span:eq("+i+")").css("display","none");
                            }
                            for(var i=pageLen-5;i<pageLen;i++){
                                $("#log-pages>span:eq("+i+")").css("display","inline-block");
                            }
                        }
                        else{
                            $("#log-pages>span:eq("+(processedData.currentPage+1)+")").text("...");
                            for(var i=0;i<(processedData.currentPage-1);i++){
                                $("#log-pages>span:eq("+i+")").css("display","none");
                            }
                            for(var i=(processedData.currentPage-1);i<(processedData.currentPage+2);i++){
                                $("#log-pages>span:eq("+i+")").css("display","inline-block");
                            }
                            for(var i=(processedData.currentPage+2);i<pageLen-2;i++){
                                $("#log-pages>span:eq("+i+")").css("display","none");
                            }
                            for(var i=pageLen-2;i<pageLen;i++){
                                $("#log-pages>span:eq("+i+")").css("display","inline-block");
                            }
                        }

                    }
                    else{
                        $("#log-pages>span:eq("+(pageLen-5)+")").text("...");
                        for(var i=0;i<pageLen-5;i++){
                            $("#log-pages>span:eq("+i+")").css("display","none");
                        }
                        for(var i=pageLen-5;i<pageLen;i++){
                            $("#log-pages>span:eq("+i+")").css("display","inline-block");
                        }
                    }

                }

            }
        });
    };

    //处理后台传过来的数据
    $.fn.processLogsData = function(data){
        var obj = {};

        var logsArr = data.listData;
        for (var i=0;i<logsArr.length;i++){
            logsArr[i].logintime = $.myTime.UnixToDate(logsArr[i].logintime,true);
            if(logsArr[i].state == 1){
                logsArr[i].state = "登录成功";
            }
            if(logsArr[i].state == 0){
                logsArr[i].state = "登录失败";
            }
        }

        var pagesArr = [];
        for (var i = 1;i<=data.totalPage;i++){
            pagesArr.push({
                "page":i
            });
        }

        obj.logsArr = logsArr;
        obj.pagesArr = pagesArr;
        obj.currentPage = data.currentPage;
        obj.totalCount = data.totalCount;

        return obj;
    };

    //定义每一页显示的记录条数
    var  perNum = 5;

    // 重构时间对象
    Date.prototype.Format = function (fmt) {
        var o = {
            "M+": this.getMonth() + 1, //月份   
            "d+": this.getDate(), //日   
            "H+": this.getHours(), //小时   
            "m+": this.getMinutes(), //分   
            "s+": this.getSeconds(), //秒   
            "q+": Math.floor((this.getMonth() + 3) / 3), //季度   
            "S": this.getMilliseconds() //毫秒   
        };
        if (/(y+)/.test(fmt)) {
            fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        for (var k in o){
            if (new RegExp("(" + k + ")").test(fmt)) {
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
            }
        }
        return fmt;
    }

    //处理时间的几个方法
    $.extend({
        myTime: {
            /**
             * 当前时间戳
             * @return <int>        unix时间戳(秒)
             */
            CurTime: function(){
                return Date.parse(new Date())/1000;
            },
            /**
             * 日期 转换为 Unix时间戳
             * @param <string> 2014-01-01 20:20:20  日期格式
             * @return <int>        unix时间戳(秒)
             */
            DateToUnix: function(string) {
                var f = string.split(' ', 2);
                var d = (f[0] ? f[0] : '').split('-', 3);
                var t = (f[1] ? f[1] : '').split(':', 3);
                return (new Date(
                    parseInt(d[0], 10) || null,
                    (parseInt(d[1], 10) || 1) - 1,
                    parseInt(d[2], 10) || null,
                    parseInt(t[0], 10) || null,
                    parseInt(t[1], 10) || null,
                    parseInt(t[2], 10) || null
                )).getTime() / 1000;
            },
            /**
             * 时间戳转换日期
             * @param <int> unixTime    待时间戳(秒)
             * @param <bool> isFull    返回完整时间(Y-m-d 或者 Y-m-d H:i:s)
             * @param <int>  timeZone   时区
             */
            UnixToDate: function(unixTime, isFull, timeZone) {
                if (typeof (timeZone) == 'number')
                {
                    unixTime = parseInt(unixTime) + parseInt(timeZone) * 60 * 60;
                }
                var time = new Date(unixTime);
                var ymdhis = "";
                ymdhis += time.getUTCFullYear() + "-";
                ymdhis += (time.getUTCMonth()+1) + "-";
                ymdhis += time.getUTCDate();
                if (isFull === true)
                {
                    ymdhis += " " + time.getUTCHours() + ":";
                    ymdhis += time.getUTCMinutes() + ":";
                    ymdhis += time.getUTCSeconds();
                }
                return ymdhis;
            }
        }
    });


    // 设置 input text 框的聚焦时变成 date 框;失焦时变成 text 框
    $("#login-log-beginDate,#login-log-endDate").focus(function () {
        $(this).attr("type","date");
    }).blur(function () {
        $(this).attr("type","text");
    });

    // 设置 input date 框的默认value值为空
    $("#login-log-beginDate,#login-log-endDate").val("");

    //设置 时间选框 和 状态选框聚焦时的样式
    $("#login-log-beginDate,#login-log-endDate,#login-state").focus(function () {
        $(this).css("border","2px solid #9ecaed");
    }).blur(function () {
        $(this).css("border","1px solid #DFDFDF");
    });


    // 侧边栏 dd 登录记录的点击事件
    $("#slide-person-loginLog").click(function () {
        $this = $(this);
        //发送请求，请求用户的登录等信息
        $.ajax({
            url:"./iplog.do",
            data:JSON.stringify({
                "currentPage":1,
                "pageSize":perNum,
                "beginDate":"",
                "endDate":"",
                "state":-1,
            }),
            dataType:"json",
            async:"true",
            type:"post",
            contentType:"application/json;charset=UTF-8",
            success:function (data) {
                console.log("后台数据",data);

                var processedData = $this.processLogsData(data.pageResultSet);

                console.log("处理后的数据",processedData);

                //动态加载 tbody
                var logCompile = _.template($("#login-log-template").html());
                _.each(processedData.logsArr,function (dic) {
                    var domLog = logCompile(dic);
                    $("#show-logs").append($(domLog));
                })

                //动态显示页数
                var pageCompile = _.template($("#log-page-template").html());
                _.each(processedData.pagesArr,function (dic) {
                    var domPage = pageCompile(dic);
                    $("#log-pages").append($(domPage));
                });

                //让当前页码处于选中状态
                $("#log-pages>span[value='"+processedData.currentPage+"']").addClass("page-active")
                    .siblings().removeClass("page-active");

                // 总页数大于5时，只显示前两页和后两页，中间用“...”表示
                var pageLen = $("#log-pages").children().length;
                if ($("#log-pages").children().length>5){
                    for(var i=0;i<$("#log-pages").children().length;i++){
                        // console.log("第"+(i+1)+"个span",$("#log-pages>span:eq("+i+")").text());
                        if($("#log-pages>span:eq("+i+")").text()>3&&$("#log-pages>span:eq("+i+")").text()<pageLen-1){
                            $("#log-pages>span:eq("+i+")").css("display","none");
                        }
                    }
                    $("#log-pages>span:eq("+(processedData.currentPage+1)+")").text("...");
                }

                //当总页数在5页以内的时候，显示所有页码，此时的页码栏点击事件
                //首页、尾页、上一页、下一页
                if($("#log-pages").children().length<6){
                    //首页、上一页、下一页、最后一页的点击事件
                    $("#start-page").click(function () {
                        $("#show-logs").html("");
                        $("#log-pages").html("");
                        $(this).requestData(1);

                    });
                    $("#last-page").click(function () {
                        if($(".page-active").prev().length!=0){
                            var currentPage = $(".page-active").prev().text();
                            $("#show-logs").html("");
                            $("#log-pages").html("");
                            $(this).requestData(currentPage);
                        }

                    });
                    $("#next-page").click(function () {
                        if($(".page-active").next().length!=0){
                            var currentPage = $(".page-active").next().text();
                            $("#show-logs").html("");
                            $("#log-pages").html("");
                            $(this).requestData(currentPage);
                        }

                    });
                    $("#end-page").click(function () {
                        $("#show-logs").html("");
                        $("#log-pages").html("");
                        $(this).requestData(processedData.pagesArr.length);
                    });
                }
                //当总页数超过5页时，中间显示省略号，此时的页码栏点击事件
                //首页、尾页、上一页、下一页
                else{
                    //首页、上一页、下一页、最后一页的点击事件
                    $("#start-page").click(function () {
                        $("#show-logs").html("");
                        $("#log-pages").html("");
                        $(this).requestData(1);

                    });
                    $("#last-page").click(function () {
                        if($(".page-active").prev().length!=0){
                            var currentPage = $(".page-active").prev().attr("value");
                            $("#show-logs").html("");
                            $("#log-pages").html("");
                            $(this).requestData(currentPage);
                        }

                    });
                    $("#next-page").click(function () {
                        if($(".page-active").next().length!=0){
                            var currentPage = $(".page-active").next().attr("value");
                            $("#show-logs").html("");
                            $("#log-pages").html("");
                            $(this).requestData(currentPage);
                        }

                    });
                    $("#end-page").click(function () {
                        $("#show-logs").html("");
                        $("#log-pages").html("");
                        console.log(processedData.pagesArr.length);
                        $(this).requestData(processedData.pagesArr.length);
                    });
                }

                //页数的点击事件----on 可以为目前还不存在的元素添加事件，click不可以
                $("#log-pages").on("click","span",function () {

                    //点击“...”时，把其中的页码展开
                    if($(this).text() == "..."){
                        if($(this).prev().attr("style") != "display: none;"){
                            var prevPage = Number($(this).prev().attr("value"));

                            var $this = $(this);
                            do{
                                $this=$this.next();
                                // console.log($this.attr("style")== "display: none;");
                            }while($this.attr("style") == "display: none;");

                            var nextPage = Number($this.attr("value"));
                            for(var i=prevPage+1;i<(nextPage-1);i++){
                                $(this).text(prevPage+1);
                                $("#log-pages>span:eq("+i+")").css("display","inline-block");
                            }
                        }
                        else if($(this).prev().attr("style") == "display: none;"){
                            var prevPage = 0;

                            var $this = $(this);
                            do{
                                $this=$this.next();
                                // console.log($this.attr("style")== "display: none;");
                            }while($this.attr("style") == "display: none;");

                            var nextPage = Number($this.attr("value"));
                            for(var i=prevPage;i<(nextPage-1);i++){
                                $(this).text(nextPage-1);
                                $("#log-pages>span:eq("+i+")").css("display","inline-block");
                            }
                        }
                    }
                    else {
                        var currentPage = $(this).attr("value");
                        $("#show-logs").html("");
                        $("#log-pages").html("");
                        $(this).requestData(currentPage);
                    }


                });

            }
        });

        $("#person-login-log").css("display","block");
        $("#person-login-log").siblings().css("display","none");
        $("#page-title-person").addClass("page-title-selected").siblings().removeClass("page-title-selected");
    });

//    点击查询按钮
    $("#submit-query").click(function () {
        var beginDate = $("#login-log-beginDate").val();
        var endDate = $("#login-log-endDate").val();
        var loginState = $("#login-state").val();
        console.log(beginDate,endDate,loginState);

        $("#show-logs").html("");
        $("#log-pages").html("");
        $(this).requestData(1);
    });

})