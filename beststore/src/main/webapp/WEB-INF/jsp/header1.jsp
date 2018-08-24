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
				<a href="">申请网店</a>
				<a href="">帮助中心</a>
			</div>
			<div class="pull-right">
				<a href="userLogin.do"><span class="cr">登录</span></a>
				<a href="userLogin.do?p=register">注册</a>
				<a href="welcomePage.do">我的U袋</a>
				<a href="userOrderPage.do">我的订单</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="index.do"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
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
				<a href="shopcartPage.do" class="cart-but">
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
				<div class="cat-list__box">
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-skirt ce"></i> 女装
						</div>
						<ul class="cat-list clearfix">
							<li>下装</li>
							<li>上装</li>
							<li>裙装</li>
							<li>内衣</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">下装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">上装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">裙装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">内衣：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-fushi ce"></i> 男装
						</div>
						<ul class="cat-list clearfix">
							<li>下装</li>
							<li>上装</li>
							<li>套装</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">下装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">上装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">套装：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-bao ce"></i> 包包
						</div>
						<ul class="cat-list clearfix">
							<li>女士包包</li>
							<li>男士包包</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">女士包包：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男士包包：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-kid ce"></i> 童装
						</div>
						<ul class="cat-list clearfix">
							<li>女童</li>
							<li>男童</li>
							<li>男女童鞋</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">女童：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男童：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">男女童鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-shoes ce"></i> 鞋靴
						</div>
						<ul class="cat-list clearfix">
							<li>男鞋</li>
							<li>女鞋</li>
							<li>儿童鞋</li>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<div class="genre-box clearfix">
									<span class="title">男鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">女鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
								<div class="genre-box clearfix">
									<span class="title">儿童鞋：</span>
									<div class="genre-list">
										<a href="">牛仔裤</a>
										<a href="">短裤</a>
										<a href="">休闲裤</a>
										<a href="">打底裤</a>
										<a href="">丝袜</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<ul class="nva-list">
				<a href="index.do"><li class="active">首页</li></a>
				<a href="aboutUsPage.do"><li>企业简介</li></a>
				<a href="goodsQueryPage.do"><li>商品筛选</li></a>
				<a href=""><li>申请网店</li></a>
				<a href="classRoomPage.do"><li>U袋学堂</li></a>
				<a href="udai_contract.html"><li>诚信合约</li></a>
				<a href="item_remove.html"><li>博客</li></a>
			</ul>
			<div class="user-info__box">
				<div class="login-box">
					<div class="avt-port">
						<img src="images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
					</div>
					<!-- 已登录 -->
					<div class="name c6">Hi~ <span class="cr">18759808122</span></div>
					<div class="point c6">积分: 30</div>

					<!-- 未登录 -->
					<!-- <div class="name c6">Hi~ 你好</div>
					<div class="point c6"><a href="">点此登录</a>，发现更多精彩</div> -->
					<div class="report-box">
						<span class="badge">+30</span>
						<a class="btn btn-info btn-block disabled" href="#" role="button">已签到1天</a>
						<!-- <a class="btn btn-primary btn-block" href="#" role="button">签到领积分</a> -->
					</div>
				</div>
				<div class="agent-box">
					<a href="#" class="agent">
						<i class="iconfont icon-fushi"></i>
						<p>申请网店</p>
					</a>
					<a href="javascript:;" class="agent">
						<i class="iconfont icon-agent"></i>
						<p><span class="cr">9527</span>个网店</p>
					</a>
				</div>
				<div class="verify-qq">
					<div class="title">
						<i class="fake"></i>
						<span class="fz12">真假QQ客服验证-远离骗子</span>
					</div>
					<form class="input-group">
						<input class="form-control" placeholder="输入客服QQ号码" type="text">
						<span class="input-group-btn">
							<button class="btn btn-primary submit" id="verifyqq" type="button">验证</button>
						</span>
					</form>
					<script>
						$(function() {
							$('#verifyqq').click(function() {
								DJMask.open({
								　　width:"400px",
								　　height:"150px",
								　　title:"U袋网提示您：",
								　　content:"<b>该QQ不是客服-谨防受骗！</b>"
							　　});
							});
						});
					</script>
				</div>
				<div class="tags">
					<div class="tag"><i class="iconfont icon-real fz16"></i> 品牌正品</div>
					<div class="tag"><i class="iconfont icon-credit fz16"></i> 信誉认证</div>
					<div class="tag"><i class="iconfont icon-speed fz16"></i> 当天发货</div>
					<div class="tag"><i class="iconfont icon-tick fz16"></i> 人工质检</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>