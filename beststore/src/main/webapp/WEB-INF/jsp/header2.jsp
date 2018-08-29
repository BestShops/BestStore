<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="js/jquery.1.12.4.min.js" charset="UTF-8"></script>
<script src="js/bootstrap.min.js" charset="UTF-8"></script>
<script src="js/swiper.min.js" charset="UTF-8"></script>
<script src="js/global.js" charset="UTF-8"></script>
<script src="js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
<title>U袋网</title>
</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">U袋网</span></div>
				<a href="">网店代销</a>
				<a href="">帮助中心</a>
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
				<a href="userOrderPage.do">我的订单</a>
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
	<div class="content clearfix bgf5">
		<section class="user-center inner clearfix">
			<div class="pull-left bgf">
				<a href="aboutUsPage.do" class="title">U袋欢迎页</a>
				<dl class="user-center__nav">
					<dt>帐户信息</dt>
					<a class="myinfo1" href="userInfoPage.do"><dd class="active">个人资料</dd></a>
					<a href="addressPage.do"><dd>收货地址</dd></a>
					<a href="couponPage.do"><dd>我的优惠券</dd></a>
					<a href="userModifyPwdPage.do"><dd>修改登录密码</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>订单中心</dt>
					<a href="userOrderPage.do?pageNo=1&type=10"><dd>我的订单</dd></a>
					<a href="userCollectionPage.do"><dd>我的收藏</dd></a>
					<a href="userOrderRefundPage.do?pageNo=1"><dd>退款/退货</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>我的店铺</dt>
					<a href="openStorePage.do"><dd>开店流程</dd></a>
					<a href="storeManagePage.do"><dd>店铺管理</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>服务中心</dt>
					<a href=""><dd>在线客服</dd></a>
					<a href=""><dd>商品反馈</dd></a>
				</dl>
			</div>
</body>
</html>