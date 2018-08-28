$(function () {
    $(".content .con_right .left").click(function (e) {
        $(this).css({ "color": "#333333", "border-bottom": "2px solid #2e558e" });
        $(".content .con_right .right").css({ "color": "#999999", "border-bottom": "2px solid #dedede" });
        $(".content .con_right ul .con_r_left").css("display", "block");
        $(".content .con_right ul .con_r_right").css("display", "none");
        if (fluCodeInterval == null || fluCheckCodeInterval == null) {
            show();
            flushQRCode();
            checkQRCodeStatus();
        }
    });
    $(".content .con_right .right").click(function (e) {
        $(this).css({ "color": "#333333", "border-bottom": "2px solid #2e558e" });
        $(".content .con_right .left").css({ "color": "#999999", "border-bottom": "2px solid #dedede" });
        $(".content .con_right ul .con_r_right").css("display", "block");
        $(".content .con_right ul .con_r_left").css("display", "none");
    });


    $('#btn_Login').click(function() {
    	var uname=$.trim($("#back_hname").val());
    	var upwd=$.trim($("#back_pwd").val());
    	var code=$("#back_code").val();
        if ( uname==null || uname=="") {
        	$("#errorMessage").html("请输入您的用户名");
            return false;
        } else if (upwd ==null || upwd=="") {
            $("#errorMessage").html("请输入密码");
            return false;
        } else {
        	$.post("storeLogin.todo",{
    			hname:uname,
    			hpwd:upwd,
    			code:code
    		},function(data){
    			if (data=="OK") {
    				window.location.href="backStoreManagePage.todo";
    			} else {
    				 $("#errorMessage").html(data);
    			}
    		});
        };
    });
    $("#flushLoginValiCode1,#flushLoginValiCode2").click(function () {
        $("#loginImgCode").attr("src", "/handler/GetLoginCode.ashx?" + Math.random());
    });
})