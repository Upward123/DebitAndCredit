$(function(){
    // alert("hhh");
    // var obj = $(".input-box input");
    // console.log(obj);
    $("#username").blur(function () {
        // alert("hhh");
        var $this = $(this);
        var username = $(this).val();
        if(username) {
            if(username.length>3&&username.length<17){
                $.ajax({
                    url: "./LR/checkUsername.do",
                    dataType: "json",
                    async: "true",
                    type: "post",
                    data: {"username": username},
                    success: function (data) {
                        if (data) {
                            $this.removeClass("err-input-style").siblings().removeClass("err-style");
                            $this.next().css("display", "none");
                            $this.css({
                                "borderColor": "#9ecaed",
                                "box-shadow": "0 0 10px #9ecaed"
                            }).focus(function () {
                                $(this).css({
                                    "borderColor": "#9ecaed",
                                    "box-shadow": "0 0 10px #9ecaed"
                                })
                            })
                        } else {
                            $this.addClass("err-input-style").siblings().addClass("err-style");
                            $this.next().css("display", "inline-block");
                            $this.focus(function () {
                                $(this).css({
                                    "borderColor": "#f00",
                                    "box-shadow": "0 0 10px #f00"
                                })
                            })
                        }
                    }
                })
            }else{
                $this.addClass("err-input-style").siblings().addClass("err-style");
                $this.next().html("请正确填写用户名").css("display", "inline-block");
                $this.focus(function () {
                    $(this).css({
                        "borderColor": "#f00",
                        "box-shadow": "0 0 10px #f00"
                    })
                })
            }
        }else{
            $this.addClass("err-input-style").siblings().addClass("err-style");
            $this.next().html("用户名不能为空").css("display", "inline-block");
            $this.focus(function () {
                $(this).css({
                    "borderColor": "#f00",
                    "box-shadow": "0 0 10px #f00"
                })
            })
        }
    });
    $("#pwd input").blur(function () {
        if($(this).val().length>3&&$(this).val().length<17){
            $(this).removeClass("err-input-style").siblings().removeClass("err-style");
            $(this).next().css("display","none");
            $(this).css({"borderColor":"#9ecaed",
                "box-shadow":"0 0 10px #9ecaed"}).focus(function () {
                $(this).css({"borderColor":"#9ecaed",
                    "box-shadow":"0 0 10px #9ecaed"})
            })
        }else{
            $(this).addClass("err-input-style").siblings().addClass("err-style");
            $(this).next().css("display","inline-block");
            $(this).focus(function () {
                $(this).css({"borderColor":"#f00",
                    "box-shadow":"0 0 10px #f00"})
            })
        }
    });
    $("#subpwd input").blur(function () {
        if($(this).val()==$("#pwd input").val()){
            $(this).removeClass("err-input-style").siblings().removeClass("err-style");
            $(this).next().css("display","none");
            $(this).css({"borderColor":"#9ecaed",
                "box-shadow":"0 0 10px #9ecaed"}).focus(function () {
                $(this).css({"borderColor":"#9ecaed",
                    "box-shadow":"0 0 10px #9ecaed"})
            })
        }else{
            $(this).addClass("err-input-style").siblings().addClass("err-style");
            $(this).next().css("display","inline-block");
            $(this).focus(function () {
                $(this).css({"borderColor":"#f00",
                    "box-shadow":"0 0 10px #f00"})
            })
        }
    });

    $("#reg").click(function(){
        var username = $("#username").val();
        var password = $("#password").val();
        console.log("注册");
        $.ajax({
            url:"./LR/register.do",
            dataType:"json",
            data:{"username":username,"password":password},
            async:true,
            type:"post",
            success:function (data) {
                console.log(data);
                alert("注册成功");
                window.location.href="../website_war_exploded/login.html";
            },
            error:function (data) {
                alert("注册失败");
            }
        })
    });
})