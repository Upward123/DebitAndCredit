$(function () {
    $("#username").blur(function () {
        var $this = $(this);
        var username = $(this).val();
        $.ajax({
            url: "./LR/checkUsername.do",
            dataType: "json",
            async: "true",
            type: "post",
            data: {"username": username},
            success: function (data) {
                console.log(data);
                if (data) {
                    $this.css("box-shadow","0 0 10px #f00").siblings().addClass("err-style");
                    $this.next().css("display", "inline-block");
                    $this.blur(function () {
                        $(this).css({
                            "borderColor": "",
                            "box-shadow": "#f00 0 0 10px"
                        })
                    }).focus(function () {
                        $(this).css({
                            "borderColor": "#f00",
                            "box-shadow": "0 0 10px #f00"
                        })
                    })
                } else {
                    $this.css("box-shadow","none").siblings().removeClass("err-style");
                    $this.next().css("display", "none");
                    $this.css({
                        "borderColor": ""
                    }).focus(function () {
                        $(this).css({
                            "borderColor": "#9ecaed",
                            "box-shadow": "0 0 10px #9ecaed"
                        })
                    }).blur(function () {
                        $(this).css({
                            "borderColor": "",
                            "box-shadow": "none"
                        })
                    })
                }
            }
        })
    });

    $("#log").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        console.log("登录");
        $.ajax({
            url:"./LR/login.do",
            dataType:"json",
            data:{"username":username,"password":password},
            async:true,
            type:"post",
            success:function (data) {
                if(data.username!=null){
                    console.log(data);
                    var con = confirm("登录成功,是否跳转到个人中心？");
                    if(con){
                        sessionStorage.setItem("data",JSON.stringify(data));
                        window.location.href = "../website_war_exploded/person.html";
                    }
                    $("#password").removeClass("err-input-style").siblings().removeClass("err-style");
                    $("#password").next().css("display", "none");
                    $("#password").css({
                        "borderColor": "#9ecaed",
                        "box-shadow": "0 0 10px #9ecaed"
                    }).focus(function () {
                        $(this).css({
                            "borderColor": "#9ecaed",
                            "box-shadow": "0 0 10px #9ecaed"
                        })
                    })
                }else{
                    console.log(data);
                    alert("登录失败");
                    $("#password").addClass("err-input-style").siblings().addClass("err-style");
                    $("#password").next().css("display", "inline-block");
                    $("#password").focus(function () {
                        $(this).css({
                            "borderColor": "#f00",
                            "box-shadow": "0 0 10px #f00"
                        })
                    })
                }
            },
            error:function (data) {
                alert("服务器错误，请求失败");
            }
        })
    });
})