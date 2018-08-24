<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="favicon.ico">
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
				<a href="userInfoPage.do"><span class="cr">${loginHuman.hname}</span></a>
				<a href="welcomePage.do">我的U袋</a>
				<a href="userOrderPage.do">我的订单</a>
			</div>
		</div>
	</div>
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<a class="logo" href="index.do"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
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
					<a href="userOrderPage.do"><dd>我的订单</dd></a>
					<a href="userCollectionPage.do"><dd>我的收藏</dd></a>
					<a href="udai_refund.html"><dd>退款/退货</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>我的店铺</dt>
					<a href="openStorePage.do"><dd>开店流程</dd></a>
					<a href="temp_article/udai_article6.html"><dd>代销商上架教程</dd></a>
					<a href="temp_article/udai_article7.html"><dd>分销商常见问题</dd></a>
					<a href="temp_article/udai_article8.html"><dd>付款账户</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>服务中心</dt>
					<a href="temp_article/udai_article1.html"><dd>售后服务</dd></a>
					<a href="temp_article/udai_article2.html"><dd>配送服务</dd></a>
					<a href="temp_article/udai_article3.html"><dd>用户协议</dd></a>
					<a href="temp_article/udai_article4.html"><dd>常见问题</dd></a>
				</dl>
				<dl class="user-center__nav">
					<dt>U袋网</dt>
					<a href="temp_article/udai_article10.html"><dd>企业简介</dd></a>
					<a href="temp_article/udai_article11.html"><dd>加入U袋</dd></a>
					<a href="temp_article/udai_article12.html"><dd>隐私说明</dd></a>
				</dl>
			</div>
</body>
</html>