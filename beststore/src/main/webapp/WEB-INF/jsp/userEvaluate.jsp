<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="mt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/iconfont.css">
<link rel="stylesheet" href="css/global.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/swiper.min.css">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/message.css">
<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/comment.css">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
<script src="js/jquery.1.12.4.min.js" charset="UTF-8"></script>
<script src="js/bootstrap.min.js" charset="UTF-8"></script>
<script src="js/swiper.min.js" charset="UTF-8"></script>
<script src="js/global.js" charset="UTF-8"></script>
<script src="js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>
	<script src="js/jquery-1.10.2.js"></script>
	<script src="js/comment.js"></script>
<title>U袋网</title>
</head>
<script type="text/javascript">
		$(function () {
			var obj = new commentMove('.tm-m-photos', '.tm-m-photo-viewer');
	        obj.init()
	    });
	</script>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="openStorePage.do">申请网店</a>
				<a href="superLoginPage.todo" target="_blank">网站维护</a>
			</div>
			<div class="pull-right">
				<c:if test="${sessionScope.loginHuman==null }">
					<a href="userLoginPage.do"><span class="cr">登录</span></a>
					<a href="userRegisterPage.do">注册</a>
				</c:if>
				<c:if test="${sessionScope.loginHuman!=null }">
					<a>您好,<span class="cr">${sessionScope.loginHuman.hname }</span></a>
					<a href="userLogout.do" style="color:blue">退出</a>
				</c:if>
				<a href="welcomePage.do">我的U袋</a>
				<a href="userOrderPage.do?pageNo=1&type=10">我的订单</a>
			</div>
		</div>
	</div>
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<a class="logo" href="index"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
				<div class="title">个人中心</div>
			</div>
		</div>
	</div>
	<div class="content clearfix bgf5" style="float: none">
		<section class="user-center inner clearfix">
			<div class="pull-left bgf">
				<a href="aboutUsPage.do" class="title">U袋欢迎页</a>
				<dl class="user-center__nav">
					<dt>帐户信息</dt>
					<a class="myinfo1" href="userInfoPage.do"><dd class="active">个人资料</dd></a>
					<a href="addressPage.do"><dd>收货地址</dd></a>
					<!-- <a href="couponPage.do"><dd>我的优惠券</dd></a> -->
					<a href="userModifyPwdPage.do"><dd>修改登录密码</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>订单中心</dt>
					<a href="userOrderPage.do?pageNo=1&type=10"><dd>我的订单</dd></a>
					<a href="userCollectionPage.do"><dd>我的收藏</dd></a>
					<a href="userOrderRefundPage.do?pageNo=1&type=2"><dd>退款/退货</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>我的店铺</dt>
					<a href="openStorePage.do"><dd>开店流程</dd></a>
					<c:if test="${sessionScope.loginHuman.hlimit==1}">
						<a href="storeManagePage.do"><dd>店铺管理</dd></a>
					</c:if>
				</dl>
				<!-- <dl class="user-center__nav">
					<dt>服务中心</dt>
					<a href=""><dd>在线客服</dd></a>
					<a href=""><dd>商品反馈</dd></a>
				</dl> -->
			</div>
</body>
</html>	
<!--
    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
-->
<div class="commentAll">
    <!--评论展示区域 begin-->
    <div class="comment-show">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="upload/${info.hphoto}" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                	<c:if test="${info.DSTATUS==1}">
                		<a href="#" class="comment-size-name">${info.hname}: </a>
                	</c:if>
                   	<c:if test="${info.DSTATUS==2}">
                		<a href="#" class="comment-size-name">${fn:substring(info.hname,0,1)}**: </a>
                	</c:if>
                    <span class="my-pl-con">&nbsp;${info.DEPICT}</span>
                </div>
				<div class="tm-m-photos">
					<c:if test="${info.DPHOTO!=null && info.DPHOTO!=''}">
					<ul class="tm-m-photos-thumb">
					<c:forEach items="${fn:split(info.DPHOTO,',')}" var="photo">
						<li data-src="upload/${photo}"> <img src="upload/${photo}"> <b class="tm-photos-arrow"></b> </li>
					</c:forEach>
					</ul>
					<div class="tm-m-photo-viewer transition1"> 
						<img src="upload/${fn:split(info.DPHOTO,',')[0]}"  style="width:400px;height:250px"> 
							<a class="tm-m-photo-viewer-navleft" style="cursor: default;"> <i class="tm-m-photo-viewer-navicon arrow-right">&lt;</i> </a> 
							<a class="tm-m-photo-viewer-navright" data-spm-anchor-id="a220o.1000855.0.0" style="cursor: pointer;"> <i class="tm-m-photo-viewer-navicon arrow-right">&gt;</i> </a> 
					</div>
					</c:if>
				</div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time">${info.DTIME}</span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num">666</i>)</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
        </div>
    </div>
    <!--评论展示区域 end-->
</div>

<%@ include file="rightMenu.jsp" %>
<%@ include file="bottom.jsp" %>

<script type="text/javascript" src="js/jquery.1.12.4.min.js"></script>
<script type="text/javascript" src="js/jquery.flexText.js"></script>

<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>

<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>

<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>
</html>