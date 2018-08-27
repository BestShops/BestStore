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
				<a href="">申请网店</a>
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
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="index"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
			<div class="search-box">
				<form class="input-group">
					<input placeholder="Ta们都在搜U袋网" type="text">
					<span class="input-group-btn">
						<button type="button">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</span>
				</form>
				<p class="help-block text-nowrap">
					<a href="">连衣裙</a>
					<a href="">裤</a>
					<a href="">衬衫</a>
					<a href="">T恤</a>
					<a href="">女包</a>
					<a href="">家居服</a>
					<a href="">2017新款</a>
				</p>
			</div>
			<div class="cart-box">
				<a href="shopCartPage.do" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车 0 件
				</a>
			</div>
		</div>
	</div>
	
	<!-- 首页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<div class="all-cat">
				<div class="title"><i class="iconfont icon-menu">全部分类</i> </div>
			</div>
			<ul class="nva-list">
				<a href="index"><li class="active">首页</li></a>
				<a href="goodsQueryPage.do"><li>商品筛选</li></a>
				<a href="matchPage.do"><li>智能匹配</li></a>
				<a href="classRoomPage.do"><li>U袋学堂</li></a>
				<a href="blogPage.do"><li>博客</li></a>
				<a href="openStorePage.do"><li>申请网店</li></a>
				<a href="userInfoPage.do"><li>个人中心</li></a>
				<!-- <a href="aboutUsPage.do"><li>了解我们</li></a> -->
			</ul>
		</div>
	</div>
</body>
</html>