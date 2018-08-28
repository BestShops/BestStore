<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-center__info bgf">
					<div class="pull-left clearfix">
						<div class="port b-r50 pull-left">
							<img src="images/icons/default_avt.png" alt="用户名" class="cover b-r50">
							<a href="userInfoPage.do" class="edit"><i class="iconfont icon-edit"></i></a>
						</div>
						<p class="name text-nowrap"></p>
						<c:if test="${sessionScope.loginHuman==null }">
							<p class="name text-nowrap"> <a href="userLoginPage.do">去登录</a></p>
						</c:if>
						<c:if test="${sessionScope.loginHuman!=null }">
							<p class="name text-nowrap">您好，${sessionScope.loginHuman.hname }！</p>
						</c:if>
						<c:if test="${status==0}">
							<p class="level text-nowrap">身份：普通用户 <a href="openStorePage.do">去开店</a></p>
						</c:if>
						<c:if test="${status==1}">
							<p class="level text-nowrap">身份：店主 <a href="storeManagePage.do">管理店铺</a></p>
						</c:if>
					</div>
					<div class="pull-right user-nav">
						<a href="userOrderPage.do" class="user-nav__but">
							<i class="iconfont icon-rmb fz40 cr"></i>
							<div class="c6">待支付 <span class="cr">1</span></div>
						</a>
						<a href="userOrderPage.do" class="user-nav__but">
							<i class="iconfont icon-eval fz40 cr"></i>
							<div class="c6">待评价 <span class="c3">0</span></div>
						</a>
						<a href="userCollectionPage.do" class="user-nav__but">
							<i class="iconfont icon-star fz40 cr"></i>
							<div class="c6">收藏 <span class="c3">0</span></div>
						</a>
						<a href="couponPage.do" class="user-nav__but">
							<i class="iconfont icon-quan fz40 cr"></i>
							<div class="c6">优惠券 <span class="cr">2</span></div>
						</a>
						<a href="udai_integral.html" class="user-nav__but">
							<i class="iconfont icon-jifen fz40 cr"></i>
							<div class="c6">积分 <span class="cr">200</span></div>
						</a>
						<a href="blogPage.do" class="user-nav__but">
							<i class="iconfont icon-xiaoxi fz40 cr"></i>
							<div class="c6">博客 <span class="cr">2</span></div>
						</a>
					</div>
				</div>
				<div class="order-list__div bgf">
					<div class="user-title">
						我的订单<span class="c6">（显示最新三条）</span>
						<a href="" class="pull-right">查看所有订单></a>
					</div>
					<div class="order-panel">
						<ul class="nav user-nav__title" role="tablist">
							<li role="presentation" class="nav-item active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">所有订单</a></li>
							<li role="presentation" class="nav-item "><a href="#pay" aria-controls="pay" role="tab" data-toggle="tab">待付款 <span class="cr">0</span></a></li>
							<li role="presentation" class="nav-item "><a href="#emit" aria-controls="emit" role="tab" data-toggle="tab">待发货 <span class="cr">0</span></a></li>
							<li role="presentation" class="nav-item "><a href="#take" aria-controls="take" role="tab" data-toggle="tab">待收货 <span class="cr">0</span></a></li>
							<li role="presentation" class="nav-item "><a href="#eval" aria-controls="eval" role="tab" data-toggle="tab">待评价 <span class="cr">0</span></a></li>
						</ul>

						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="all">
								<table class="table text-center">
									<tr>
										<th width="380">商品信息</th>
										<th width="85">单价</th>
										<th width="85">数量</th>
										<th width="120">实付款</th>
										<th width="120">交易状态</th>
										<th width="120">交易操作</th>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">等待付款</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="udai_shopcart_pay.html" class="but but-primary">立即付款</a>
											<!-- <a href="" class="but but-link">评价</a> -->
											<a href="" class="but c3">取消订单</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">等待收货</a>
											<a href="udai_mail_query.html" class="but cr">查看物流</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
											<!-- <a href="" class="but but-link">评价</a> -->
											<a href="udai_apply_return.html" class="but c3">退款/退货</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">交易成功</a>
											<a href="udai_mail_query.html" class="but cr">查看物流</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="" class="but but-link">评价</a>
											<a href="" class="but c3">取消订单</a>
										</td>
									</tr>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="pay">
								<table class="table text-center">
									<tr>
										<th width="380">商品信息</th>
										<th width="85">单价</th>
										<th width="85">数量</th>
										<th width="120">实付款</th>
										<th width="120">交易状态</th>
										<th width="120">交易操作</th>
									</tr>
									<tr class="order-empty"><td colspan='6'>
										<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
									</td></tr>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="emit">
								<table class="table text-center">
									<tr>
										<th width="380">商品信息</th>
										<th width="85">单价</th>
										<th width="85">数量</th>
										<th width="120">实付款</th>
										<th width="120">交易状态</th>
										<th width="120">交易操作</th>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">等待发货</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
											<a href="udai_apply_return.html" class="but c3">退款/退货</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">等待发货</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
											<a href="udai_apply_return.html" class="but c3">退款/退货</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">等待发货</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
											<a href="udai_apply_return.html" class="but c3">退款/退货</a>
										</td>
									</tr>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="take">
								<table class="table text-center">
									<tr>
										<th width="380">商品信息</th>
										<th width="85">单价</th>
										<th width="85">数量</th>
										<th width="120">实付款</th>
										<th width="120">交易状态</th>
										<th width="120">交易操作</th>
									</tr>
									<tr class="order-empty"><td colspan='6'>
										<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
									</td></tr>
								</table>
							</div>
							<div role="tabpanel" class="tab-pane fade" id="eval">
								<table class="table text-center">
									<tr>
										<th width="450">商品信息</th>
										<th width="85">单价</th>
										<th width="85">数量</th>
										<th width="120">实付款</th>
										<th width="120">交易状态</th>
										<th width="120">交易操作</th>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">交易成功</a>
											<a href="udai_mail_query.html" class="but cr">查看物流</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="" class="but but-link">评价</a>
											<a href="" class="but c3">取消订单</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">交易成功</a>
											<a href="udai_mail_query.html" class="but cr">查看物流</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="" class="but but-link">评价</a>
											<a href="" class="but c3">取消订单</a>
										</td>
									</tr>
									<tr class="order-item">
										<td>
											<label>
												<div class="num">
													<!-- <input type="checkbox"> -->
													2017-03-30 订单号: 2669901385864042
												</div>
												<div class="card">
													<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
													<div class="name ep2">纯色圆领短袖T恤活动衫弹力柔软纯色圆领短袖T恤</div>
													<div class="format">颜色分类：深棕色  尺码：均码</div>
													<div class="favour">使用优惠券：优惠¥2.00</div>
												</div>
											</label>
										</td>
										<td>$100</td>
										<td>1</td>
										<td>$1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										<td class="state">
											<a class="but c6">交易成功</a>
											<a href="udai_mail_query.html" class="but cr">查看物流</a>
											<a href="" class="but c9">订单详情</a>
										</td>
										<td class="order">
											<a href="" class="but but-link">评价</a>
											<a href="" class="but c3">取消订单</a>
										</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="recommends">
					<div class="lace-title type-2">
						<span class="cr">爆款推荐</span>
					</div>
					<div class="swiper-container recommends-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<a class="picked-item" href="">
									<img src="images/temp/S-001-1_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-2_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-3_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-4_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a class="picked-item" href="">
									<img src="images/temp/S-001-1_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-2_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-3_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-4_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a class="picked-item" href="">
									<img src="images/temp/S-001-1_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-2_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-3_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-4_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a class="picked-item" href="">
									<img src="images/temp/S-001-1_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-2_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-3_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-4_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a class="picked-item" href="">
									<img src="images/temp/S-001-3_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-4_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
								<a class="picked-item" href="">
									<img src="images/temp/S-001-5_s.jpg" alt="" class="cover">
									<div class="look_price">¥134.99</div>
								</a>
							</div>
						</div>
					</div>
					<script>
						$(document).ready(function(){
							var recommends = new Swiper('.recommends-swiper', {
								spaceBetween : 40,
								autoplay : 5000,
							});
						});
					</script>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>