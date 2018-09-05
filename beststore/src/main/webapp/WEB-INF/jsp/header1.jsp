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
				<div class="pull-left">
					嗨，欢迎来到<span class="cr">U袋网</span>
				</div>
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
					<a href="userLogout.do" style="color: blue">退出</a>
				</c:if>
				<a href="welcomePage.do?type=10">我的U袋</a> <a href="userOrderPage.do?pageNo=1&type=10">我的订单</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<a class="logo" href="index"><img src="images/icons/logo.jpg"
				alt="U袋网" class="cover"></a>
			<div class="search-box">
				<form action="goodsQueryPage.todo" class="input-group" method="post">
					<input placeholder="Ta们都在搜U袋网" type="text" name="gname"> <span
						class="input-group-btn">
						<button type="submit">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</span>
				</form>
				<p class="help-block text-nowrap">
					<a href="">连衣裙</a> <a href="">裤</a> <a href="">衬衫</a> <a href="">T恤</a>
					<a href="">女包</a> <a href="">家居服</a> <a href="">2017新款</a>
				</p>
			</div>
			<div class="cart-box">
				<a href="shopCartPage.do" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车
					<c:if test="${sessionScope.cartCount!=null}">
						 ${sessionScope.cartCount}件
					</c:if>
				</a>
			</div>
		</div>
	</div>

	<!-- 首页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<div class="all-cat">
				<div class="title">
					<i class="iconfont icon-menu">全部分类</i>
				</div>
				<div class="cat-list__box">
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-skirt ce"></i>
							${firstList.get(0).tpriname }
						</div>
						<ul class="cat-list clearfix">
							<c:forEach items="${secondType }" var="c">
								<li>${c.tname2 }</li>
							</c:forEach>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<c:forEach items="${secondType }" varStatus="abc" var="c">
									<div class="genre-box clearfix">
										<c:if test="${secondType.get(abc.index).tname2!=null }">
											<span class="title">${secondType.get(abc.index).tname2 }:</span>
										</c:if>
										<div class="genre-list">
											<c:forEach items="${thirdList }" var="vv">
												<c:if test="${(secondType.get(abc.index).tname2==vv.name2) && firstList.get(0).tpriname==vv.name1 }">
													<a href="">${vv.name3 }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-fushi ce"></i>
							${firstList.get(1).tpriname }
						</div>
						<ul class="cat-list clearfix">
							<c:forEach items="${secondType1 }" var="c">
								<li>${c.tname2 }</li>
							</c:forEach>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<c:forEach items="${secondType1 }" varStatus="abc" var="c">
									<div class="genre-box clearfix">
										<c:if test="${secondType1.get(abc.index).tname2!=null }">
											<span class="title">${secondType1.get(abc.index).tname2 }:</span>
										</c:if>
										<div class="genre-list">
											<c:forEach items="${thirdList }" var="vv">
												<c:if test="${(secondType1.get(abc.index).tname2==vv.name2) && firstList.get(1).tpriname==vv.name1 }">
													<a href="">${vv.name3 }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-bao ce"></i> ${firstList.get(2).tpriname }
						</div>
						<ul class="cat-list clearfix">
							<c:forEach items="${secondType2 }" var="c">
								<li>${c.tname2 }</li>
							</c:forEach>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<c:forEach items="${secondType2 }" varStatus="abc" var="c">
									<div class="genre-box clearfix">
										<c:if test="${secondType2.get(abc.index).tname2!=null }">
											<span class="title">${secondType2.get(abc.index).tname2 }:</span>
										</c:if>
										<div class="genre-list">
											<c:forEach items="${thirdList }" var="vv">
												<c:if test="${(secondType2.get(abc.index).tname2==vv.name2) && firstList.get(2).tpriname==vv.name1 }">
													<a href="">${vv.name3 }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-kid ce"></i> ${firstList.get(3).tpriname }
						</div>
						<ul class="cat-list clearfix">
							<c:forEach items="${secondType3 }" var="c">
								<li>${c.tname2 }</li>
							</c:forEach>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<c:forEach items="${secondType3 }" varStatus="abc" var="c">
									<div class="genre-box clearfix">
										<c:if test="${secondType3.get(abc.index).tname2!=null }">
											<span class="title">${secondType3.get(abc.index).tname2 }:</span>
										</c:if>
										<div class="genre-list">
											<c:forEach items="${thirdList }" var="vv">
												<c:if test="${(secondType3.get(abc.index).tname2==vv.name2) && firstList.get(3).tpriname==vv.name1 }">
													<a href="">${vv.name3 }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="cat-box">
						<div class="title">
							<i class="iconfont icon-shoes ce"></i>
							${firstList.get(4).tpriname }
						</div>
						<ul class="cat-list clearfix">
							<c:forEach items="${secondType4 }" var="c">
								<li>${c.tname2 }</li>
							</c:forEach>
						</ul>
						<div class="cat-list__deploy">
							<div class="deploy-box">
								<c:forEach items="${secondType4 }" varStatus="abc" var="c">
									<div class="genre-box clearfix">
										<c:if test="${secondType4.get(abc.index).tname2!=null }">
											<span class="title">${secondType4.get(abc.index).tname2 }:</span>
										</c:if>
										<div class="genre-list">
											<c:forEach items="${thirdList }" var="vv">
												<c:if test="${(secondType4.get(abc.index).tname2==vv.name2) && firstList.get(4).tpriname==vv.name1 }">
													<a href="">${vv.name3 }</a>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
			<ul class="nva-list">

				<a href="index"><li class="active">首页</li></a>
				<a href="goodsQueryPage.todo"><li>商品筛选</li></a>
				<a href="matchPage.do"><li>智能匹配</li></a>
				<a href="classRoomPage.do"><li>U袋学堂</li></a>
				<a href="blogPage.do"><li>博客</li></a>
				<a href="openStorePage.do"><li>申请网店</li></a>
				<a href="userInfoPage.do"><li>个人中心</li></a>
			</ul>
			<div class="user-info__box">
				<div class="login-box">
					<div class="avt-port">
						<c:if test="${sessionScope.loginHuman.hphoto!=null }">
							<img onclick="window.open('userInfoPage.do')" src="${basePath }/upload/${sessionScope.loginHuman.hphoto }"
								class="cover b-r50" />
						</c:if>
						<c:if test="${sessionScope.loginHuman.hphoto==null }">
							<img onclick="imgClick()" src="${basePath }/images/icons/default_avt.png"
								class="cover b-r50">
						</c:if>
					</div>
					<c:if test="${sessionScope.loginHuman!=null }">
						<div class="name c6">
							Hi~ <a href="userInfoPage.do"><span class="cr">${sessionScope.loginHuman.hname }</span></a>
						</div>
						<div class="point c6">积分: 30</div>
						<div class="report-box">
							<!-- <span class="badge">+30</span>  -->
								<a class="btn btn-info btn-block disabled" role="button"
									style="width: 140px;">距离生日还剩<span style="color:white;">${birthTime }</span>天</a>
						</div>
					</c:if>

					<c:if test="${sessionScope.loginHuman==null }">
						<div class="point c6">
							<a href="userLoginPage.do">点此登录</a>，发现更多精彩
						</div>
						<a class="btn btn-primary btn-block" href="userLoginPage.do"
							role="button" style="width: 140px; margin-left: 25px;">查看生日</a>
					</c:if>
				</div>
				<div class="agent-box">
					<a href="openStorePage.do" class="agent"> <i
						class="iconfont icon-fushi"></i>
						<p>申请网店</p>
					</a> <a href="javascript:;" class="agent"> <i
						class="iconfont icon-agent"></i>
						<p>
							<span class="cr">${storeCount }</span>个网店
						</p>
					</a>
				</div>
				<div class="verify-qq">
					<div class="title">
						<i class="fake"></i> <span class="fz12">真假QQ客服验证-远离骗子</span>
					</div>
					<form class="input-group">
						<input class="form-control" placeholder="输入客服QQ号码" type="text">
						<span class="input-group-btn">
							<button class="btn btn-primary submit" id="verifyqq"
								type="button">验证</button>
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
					<div class="tag">
						<i class="iconfont icon-real fz16"></i> 品牌正品
					</div>
					<div class="tag">
						<i class="iconfont icon-credit fz16"></i> 信誉认证
					</div>
					<div class="tag">
						<i class="iconfont icon-speed fz16"></i> 当天发货
					</div>
					<div class="tag">
						<i class="iconfont icon-tick fz16"></i> 人工质检
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function imgClick(){
		window.onload.href="userInfoPage.do";
	}
</script>
</html>