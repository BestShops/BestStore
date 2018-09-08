<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header1_similar.jsp"%>
	<div class="content inner">
		<section class="item-show__div item-show__head clearfix">
			<div class="pull-left">
				<ol class="breadcrumb">
					<li><a href="index.html">首页</a></li>
					<li><a href="item_sale_page.html">${list.get(0).TPRINAME }</a></li>
					<li class="active">${list.get(0).GNAME }</li>
				</ol>
				<form action="buyNow.do" method="post">
				<input type="hidden" value="${list.get(0).GID }">
				<div class="item-pic__box" id="magnifier">
					<div class="small-box">
						<img style="width: 360px;height:360px;" src="upload/${list.get(0).GPHOTOPIC }" alt="${list.get(0).GDESC }">
						<span class="hover"></span>
					</div>
	
					<div ><br><br>
						<a style="cursor: pointer;">商品来源：<strong>${list.get(0).sname }</strong></a>
						<c:if test="${collectionGoods.fstatus==1 }">
							<a onclick="removeCollectionGoods(${collectionGoods.fid})" style="float: right;color: #6c6c6c;cursor: pointer;">
								<img src="${basePath }/images/xing2.png" style="width: 15px;height: 15px;margin-right: 5px;margin-top: -5px">已收藏
							</a>
						</c:if>
						<c:if test="${collectionGoods.fstatus==0 || collectionGoods==null }">
							<a onclick="collectionGoods(${list.get(0).GID })" style="float: right;color: #6c6c6c;cursor: pointer;">
								<img src="${basePath }/images/xing1.png" style="width: 15px;height: 15px;margin-right: 5px;margin-top: -5px">收藏宝贝
							</a>
						</c:if>
					</div>
					
					<div class="big-box">
						<img src="upload/${list.get(0).GPHOTOPIC }" alt="${list.get(0).GDESC }">
					</div>
				</div>
				<script src="js/jquery.magnifier.js"></script>
				<script>
				$(function () {
					$('#magnifier').magnifier();
				});
			</script>
	
				<div class="item-info__box">
					<div class="item-title">
						<div class="name ep2"><input name="gid" value="${list.get(0).GID}" type="hidden" readonly="readonly" 
								style="width:40px; height:20px; border: 0px; outline:none; cursor: pointer;">
								${list.get(0).GNAME}</div>
					</div>
					<div class="item-price bgf5">
						<div class="price-box clearfix">
							<div class="price-panel pull-left">
								售价：<span class="price">￥<span style="width:80px; height:20px; border: 0px; outline:none;">${list.get(0).GNOWPRICE}</span>
								<input type="hidden" name="gprice" value="${list.get(0).GNOWPRICE}"/>
								<s class="fz16 c9">￥${list.get(0).GLASTPRICE}</s></span>
							</div>
							<script>
							// 会员价格折叠展开
							$(function () {
								$('.vip-price-panel').click(function() {
									if ($(this).hasClass('active')) {
										$('.all-price__box').stop().slideUp('normal',function() {
											$('.vip-price-panel').removeClass('active').find('.iconfont').removeClass('icon-up').addClass('icon-down');
										});
									} else {
										$(this).addClass('active').find('.iconfont').removeClass('icon-down').addClass('icon-up');
										$('.all-price__box').stop().slideDown('normal');
									}
								});
							});
						</script>
						</div>
					</div>
					<ul class="item-ind-panel clearfix">
						<li class="item-ind-item"><span class="ind-label c9">累计销量</span>
						<c:if test="${list.get(0).num!=null }">
							<span class="ind-count cr">${list.get(0).num }</span>
						</c:if>
						<c:if test="${list.get(0).num==null }">
							<span class="ind-count cr">0</span>
						</c:if>	
						</li>
						<li class="item-ind-item"><a href=""><span
								class="ind-label c9">累计评论</span>
								<c:if test="${list.get(0).count==null }">
								 	<span class="ind-count cr">0</span>
								</c:if> 
								<c:if test="${list.get(0).count!=null }">
								 	<span class="ind-count cr">${list.get(0).count }</span>
								</c:if> 
								 </a>
						</li>
						<li class="item-ind-item"><span
								class="ind-label c9">商品评分</span> <span class="ind-count cr">${list.get(0).GRADE }</span>
						</li>
					</ul>
					<div class="item-key">
						<div class="item-sku">
							<dl class="item-prop clearfix">
								<dt class="item-metatit">颜色：</dt>
								<dd>
									<ul data-property="颜色" class="clearfix">
										<li><c:if test="${color==1}">
											<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=1&size=${size}" role="button"
												data-value="白色" aria-disabled="true"> <span >白色</span></a>
										</c:if>
										<c:if test="${color!=1}">
											<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=1&size=${size}" role="button"
												data-value="白色" aria-disabled="true"> <span >白色</span></a>
										</c:if></li>
										<li>
											<c:if test="${color==2 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=2&size=${size}" role="button" data-value="黑色"
												aria-disabled="true"> <span>黑色</span></a>
											</c:if>
											<c:if test="${color!=2 }">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=2&size=${size}" role="button" data-value="黑色"
												aria-disabled="true"> <span>黑色</span></a>
											</c:if>
										</li>
										<li>
											<c:if test="${color==3 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=3&size=${size}" role="button"
													data-value="粉红色" aria-disabled="true"> <span>粉红色</span>
												</a>
											</c:if>
											<c:if test="${color!=3 }">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=3&size=${size}" role="button"
													data-value="粉红色" aria-disabled="true"> <span>粉红色</span>
												</a>
											</c:if>
										</li>
										<li>
											<c:if test="${color==4 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=4&size=${size}" role="button" data-value="黄色"
												aria-disabled="true"> <span>黄色</span>
												</a>
											</c:if>
											<c:if test="${color!=4 }">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=4&size=${size}" role="button" data-value="黄色"
												aria-disabled="true"> <span>黄色</span>
												</a>
											</c:if>
										</li>
									</ul>
								</dd>
							</dl>
							<dl class="item-prop clearfix">
								<dt class="item-metatit">尺码：</dt>
								<dd>
									<ul data-property="尺码" class="clearfix">
										<li>
											<c:if test="${size==1}">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=1" role="button"
												> <span>S</span>
												</a>
											</c:if>
											<c:if test="${size!=1}">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=1" role="button" data-value="S"
												aria-disabled="true"> <span>S</span>
												</a>
											</c:if>
										</li>
										<li>
											<c:if test="${size==2 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=2" role="button" data-value="M"
												aria-disabled="true"> <span>M</span>
												</a>	
											</c:if>
											<c:if test="${size!=2 }">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=2" role="button" data-value="M"
												aria-disabled="true"> <span>M</span>
												</a>	
											</c:if>
										</li>
										<li>
											<c:if test="${size==3 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=3" role="button" data-value="L"
												aria-disabled="true"> <span>L</span>
												</a>
											</c:if>
											<c:if test="${size!=3 }">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=3" role="button" data-value="L"
												aria-disabled="true"> <span>L</span>
												</a>
											</c:if>
										</li>
										<li>
											<c:if test="${size==4 }">
												<a class="on" href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=4" role="button" data-value="XL"
												aria-disabled="true"> <span>XL</span>
												</a>
											</c:if>
											<c:if test="${size!=4}">
												<a href="goodsShowPage.todo?gid=${list.get(0).GID }&color=${color}&size=4" role="button" data-value="XL"
												aria-disabled="true"> <span>XL</span>
												</a>
											</c:if>
										</li>
									</ul>
								</dd>
							</dl>
						</div>
						<div class="item-amount clearfix bgf5">
							<div class="item-metatit">数量：</div>
							<div class="amount-box">
								<div class="amount-widget">
									<input class="amount-input" id="buy_goodsNum" name="num" min="1" max="${list.get(0).GNUMBER }" value="1" type="number">
									<div class="amount-btn">
										<a class="amount-but add"></a> <a class="amount-but sub"></a>
									</div>
								</div>
								<div class="item-stock">
									<span style="margin-left: 10px;">库存 <b id="Stock">${list.get(0).GNUMBER }</b>
										件
									</span>
								</div>
								<script>
								 $(function () {
									$('.amount-input').onlyReg({reg: /[^0-9]/g});
									var stock = parseInt($('#Stock').html());
									$('.amount-widget').on('click','.amount-but',function() {
										var num = parseInt($('.amount-input').val());
										if (!num) num = 0;
										if ($(this).hasClass('add')) {
											if (num > stock - 1){
												return DJMask.open({
												　　width:"300px",
												　　height:"100px",
												　　content:"您输入的数量超过库存上限"
											　　});
											}
											$('.amount-input').val(num + 1);
										} else if ($(this).hasClass('sub')) {
											if (num == 1){
												return DJMask.open({
												　　width:"300px",
												　　height:"100px",
												　　content:"您输入的数量有误"
											　　});
											}
											$('.amount-input').val(num - 1);
										}
									});
								}); 
							</script>
							</div>
						</div>
						<div class="item-action clearfix bgf5">
							<input type="submit" value="立即购买" rel="nofollow" data-addfastbuy="true" title="点击此按钮，到下一步确认购买信息。" role="button" class="item-action__buy">
							<a id="addCart" rel="nofollow" data-addfastbuy="true" role="button" class="item-action__basket"> 
							<i class="iconfont icon-shopcart"></i> 加入购物车
							</a>
						</div>
					</div>
				</div>
				</form>
	</div>
	<script>
		// 添加购物车按钮
		$('#addCart').click(function() {
			var loginHuman='${sessionScope.loginHuman}';
			if(loginHuman==null || loginHuman==""){
				window.location.href = "userLoginPage.do";
			}else{
				var buynum = $("#buy_goodsNum").val();
				var gid = ${list.get(0).GID };
				var maxnum = ${list.get(0).GNUMBER };
				if (buynum > maxnum ) {
					alert("超过商品库存!!!");
					return;
				}
				$.post("addCart.do",{
					cnum:buynum,
					gid:gid
				},function(data){
					var d = eval("(" + data + ")");
					alert(d.info);
					var count = d.count;
					$("#count").text(count);
				});
			}
		});
	</script>


	<div class="pull-right picked-div">
		<div class="lace-title">
			<span class="c6">相关推荐</span>
		</div>
		<div class="swiper-container picked-swiper">
			<div class="swiper-wrapper">
			
			<c:forEach items="${linkList}" var="ll">
				<div class="swiper-slide">
					<a class="picked-item" href=""> 
						<img src="upload/${ll.GPHOTOPIC }" alt="" class="cover">
						<div class="look_price">¥${ll.GNOWPRICE }</div>
					</a> 
				</div>
			</c:forEach>	
				
			</div>
		</div>
		<div class="picked-button-prev"></div>
		<div class="picked-button-next"></div>
		<script>
			$(document).ready(function(){ 
				// 顶部banner轮播
				var picked_swiper = new Swiper('.picked-swiper', {
					loop : true,
					direction: 'vertical',
					prevButton:'.picked-button-prev',
					nextButton:'.picked-button-next',
				});
			});
		</script>
	</div>
	</section>
	<section class="item-show__div item-show__body posr clearfix">
		<div class="item-nav-tabs">
			<ul class="nav-tabs nav-pills clearfix" role="tablist" id="item-tabs">
				<li role="presentation" class="active"><a href="#detail"
					role="tab" data-toggle="tab" aria-controls="detail"
					aria-expanded="true">商品详情</a></li>
				<li role="presentation"><a href="#evaluate" role="tab"
					data-toggle="tab" aria-controls="evaluate">累计评价 <span
						class="badge">1314</span></a></li>
				<li role="presentation"><a href="#service" role="tab"
					data-toggle="tab" aria-controls="service">售后服务</a></li>
			</ul>
		</div>
		<div class="pull-left">
			<div class="tab-content">
			
			
				<div role="tabpanel" class="tab-pane fade in active" id="detail"
					aria-labelledby="detail-tab">
					<div class="item-detail__info clearfix">
						<div class="record">商品编号：${list.get(0).GID }</div>
						<div class="record">商品名称：${list.get(0).GNAME }</div>
						<div class="record">上架时间：${list.get(0).GPUBLISH }</div>
						<div class="record">商品库存：${list.get(0).GNUMBER }</div>
					</div>
					<div class="rich-text">
						<p style="text-align: center;">
							<i id="desc-module-1" style="font-size: 0"></i> 
							<img src="upload/${list.get(0).GPHOTOPIC }" alt=""><br><br>
							<i id="desc-module-2" style="font-size: 0"></i>
							<a>${list.get(0).GDESC }</a><br><br>
							<i id="desc-module-3" style="font-size: 0"></i>
							<img src="upload/${list.get(0).GPHOTOPIC }" alt=""><br><br>
							<i id="desc-module-4" style="font-size: 0"></i>
							<a>${list.get(0).GDESC }</a><br><br>
							<i id="desc-module-5" style="font-size: 0"></i>
							<img src="upload/${list.get(0).GPHOTOPIC }" alt=""><br><br>
						</p>
					</div>
				</div>
				
				
				
				<div role="tabpanel" class="tab-pane fade" id="evaluate"
					aria-labelledby="evaluate-tab">
					
					
					<div class="evaluate-tabs bgf5">
						<ul class="nav-tabs nav-pills clearfix" role="tablist">
							<li role="presentation" class="active">
							<a href="#all" role="tab" data-toggle="tab" aria-controls="all" aria-expanded="true">全部评价 <span class="badge">1314</span></a></li>
							<li role="presentation"><a href="#good" role="tab" data-toggle="tab" aria-controls="good">好评 <span class="badge">1000</span></a></li>
							<li role="presentation"><a href="#normal" role="tab" data-toggle="tab" aria-controls="normal">中评 <span class="badge">314</span></a></li>
							<li role="presentation"><a href="#bad" role="tab" data-toggle="tab" aria-controls="bad">差评 <span class="badge">0</span></a></li>
						</ul>
					</div>
					
					
					<!-- 全部评价 -->
					<div class="evaluate-content">
						<div class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active" id="all"
								aria-labelledby="all-tab">

								<c:forEach items="${discussList}" var="dl">
								<div class="eval-box">
									<div class="eval-author">
										<div class="port">
											<img src="images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
										</div>
										<!-- 如果状态是1，则显示名字，如果为0，则显示匿名 -->
										<c:if test="${dl.DSTATUS == 1}">
											<div class="name">${dl.HNAME}</div>
										</c:if>
										<c:if test="${dl.DSTATUS == 0}">
											<div class="name">匿名</div>
										</c:if>
									</div>
									<div class="eval-content">
										<!-- 评价描述 -->
										<div class="eval-text">${dl.DEPICT }</div>
										<div class="eval-imgs">
											<div class="img-temp">
												<img src="images/temp/S-001-1_s.jpg"
													data-src="images/temp/S-001-1_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-2_s.jpg"
													data-src="images/temp/S-001-2_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-3_s.jpg"
													data-src="images/temp/S-001-3_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-4_s.jpg"
													data-src="images/temp/S-001-4_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-5_s.jpg"
													data-src="images/temp/S-001-5_b.jpg" data-action="zoom"
													class="cover">
											</div>
										</div>
										<div class="eval-time">${dl.DTIME }
										</div>
									</div>
								</div>
								</c:forEach>


								<!-- 分页 -->
								<div class="page text-center clearfix">
									<a class="disabled">上一页</a> <a class="select">1</a> <a href="">2</a>
									<a href="">3</a> <a href="">4</a> <a href="">5</a> <a href="">6</a>
									<a href="">7</a> <a href="">8</a> <a class="" href="">下一页</a> <a
										class="disabled">1/60页</a>
								</div>
							</div>
							
							<!-- 好评 -->
							<div role="tabpanel" class="tab-pane fade" id="good"
								aria-labelledby="good-tab">
								
								<c:forEach items="${discussList}" var="dl">
								<!-- 判断好评 -->
								<c:if test="${dl.DRANK == 0}">
								<div class="eval-box">
									<div class="eval-author">
										<div class="port">
											<img src="images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
										</div>
										<!-- 如果状态是1，则显示名字，如果为0，则显示匿名 -->
										<c:if test="${dl.DSTATUS == 1}">
											<div class="name">${dl.HNAME}</div>
										</c:if>
										<c:if test="${dl.DSTATUS == 0}">
											<div class="name">匿名</div>
										</c:if>
									</div>
									<div class="eval-content">
										<!-- 评价描述 -->
										<div class="eval-text">${dl.DEPICT }</div>
										<div class="eval-imgs">
											<div class="img-temp">
												<img src="images/temp/S-001-1_s.jpg"
													data-src="images/temp/S-001-1_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-2_s.jpg"
													data-src="images/temp/S-001-2_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-3_s.jpg"
													data-src="images/temp/S-001-3_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-4_s.jpg"
													data-src="images/temp/S-001-4_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-5_s.jpg"
													data-src="images/temp/S-001-5_b.jpg" data-action="zoom"
													class="cover">
											</div>
										</div>
										<div class="eval-time">${dl.DTIME }
										</div>
									</div>
								</div>
								</c:if>
								</c:forEach>

								<!-- 分页 -->
								<div class="page text-center clearfix">
									<a class="disabled">上一页</a> <a class="select">1</a> <a href="">2</a>
									<a href="">3</a> <a href="">4</a> <a href="">5</a> <a href="">6</a>
									<a href="">7</a> <a href="">8</a> <a class="" href="">下一页</a> <a
										class="disabled">1/20页</a>
								</div>
							</div>
							
							
							<!-- 中评 -->
							<div role="tabpanel" class="tab-pane fade" id="normal"
								aria-labelledby="normal-tab">
								
								<c:forEach items="${discussList}" var="dl">
								<!-- 判断中评 -->
								<c:if test="${dl.DRANK == 1}">
								<div class="eval-box">
									<div class="eval-author">
										<div class="port">
											<img src="images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
										</div>
										<!-- 如果状态是1，则显示名字，如果为0，则显示匿名 -->
										<c:if test="${dl.DSTATUS == 1}">
											<div class="name">${dl.HNAME}</div>
										</c:if>
										<c:if test="${dl.DSTATUS == 0}">
											<div class="name">匿名</div>
										</c:if>
									</div>
									<div class="eval-content">
										<!-- 评价描述 -->
										<div class="eval-text">${dl.DEPICT }</div>
										<div class="eval-imgs">
											<div class="img-temp">
												<img src="images/temp/S-001-1_s.jpg"
													data-src="images/temp/S-001-1_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-2_s.jpg"
													data-src="images/temp/S-001-2_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-3_s.jpg"
													data-src="images/temp/S-001-3_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-4_s.jpg"
													data-src="images/temp/S-001-4_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-5_s.jpg"
													data-src="images/temp/S-001-5_b.jpg" data-action="zoom"
													class="cover">
											</div>
										</div>
										<div class="eval-time">${dl.DTIME }
										</div>
									</div>
								</div>
								</c:if>
								</c:forEach>

								<!-- 分页 -->
								<div class="page text-center clearfix">
									<a class="disabled">上一页</a> <a class="select">1</a> <a href="">2</a>
									<a href="">3</a> <a href="">4</a> <a href="">5</a> <a class=""
										href="">下一页</a> <a class="disabled">1/5页</a>
								</div>
							</div>
							
							
							<!-- 差评  -->
							<div role="tabpanel" class="tab-pane fade" id="bad"
								aria-labelledby="bad-tab">

								<c:forEach items="${discussList}" var="dl">
								<!-- 判断差评 -->
								<c:if test="${dl.DRANK == 2}">
								<div class="eval-box">
									<div class="eval-author">
										<div class="port">
											<img src="images/icons/default_avt.png" alt="欢迎来到U袋网" class="cover b-r50">
										</div>
										<!-- 如果状态是1，则显示名字，如果为0，则显示匿名 -->
										<c:if test="${dl.DSTATUS == 1}">
											<div class="name">${dl.HNAME}</div>
										</c:if>
										<c:if test="${dl.DSTATUS == 0}">
											<div class="name">匿名</div>
										</c:if>
									</div>
									<div class="eval-content">
										<!-- 评价描述 -->
										<div class="eval-text">${dl.DEPICT }</div>
										<div class="eval-imgs">
											<div class="img-temp">
												<img src="images/temp/S-001-1_s.jpg"
													data-src="images/temp/S-001-1_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-2_s.jpg"
													data-src="images/temp/S-001-2_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-3_s.jpg"
													data-src="images/temp/S-001-3_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-4_s.jpg"
													data-src="images/temp/S-001-4_b.jpg" data-action="zoom"
													class="cover">
											</div>
											<div class="img-temp">
												<img src="images/temp/S-001-5_s.jpg"
													data-src="images/temp/S-001-5_b.jpg" data-action="zoom"
													class="cover">
											</div>
										</div>
										<div class="eval-time">${dl.DTIME }
										</div>
									</div>
								</div>
								</c:if>
								</c:forEach>

								<!-- 分页 -->
								<!-- 分页 -->
								<div class="page text-center clearfix">
									<a class="disabled">上一页</a> <a class="select">1</a> <a href="">2</a>
									<a href="">3</a> <a href="">4</a> <a href="">5</a> <a href="">6</a>
									<a href="">7</a> <a href="">8</a> <a class="" href="">下一页</a> <a
										class="disabled">1/60页</a>
								</div>
								
							</div>
						</div>
						<script src="js/jquery.zoom.js"></script>
					</div>
				</div>
				
				
				<!-- 售后服务 -->
				<div role="tabpanel" class="tab-pane fade" id="service"
					aria-labelledby="service-tab">
					<!-- 富文本 -->
					<div class="service-content rich-text">
						<img title="" alt=""
							src="http://img.aocmonitor.com.cn/image/2014-06/86575417.gif"
							width="240" height="160" border="0" align="left">
						<p>承蒙惠购 AOC
							产品，谨致谢意！为了让您更好地使用本产品，武汉艾德蒙科技股份有限公司通过该产品随机附带的保修证向您做出下述维修服务承诺，并按照该服务的承诺向您提供维修服务。</p>
						<p>这些服务承诺仅适用于2016年6月1日（含）之后销售的AOC品牌显示器标准品。</p>
						<p>如果您选择购买了 AOC 显示器扩展功能模块或其它厂家电脑主机，其保修承诺请参见相应产品的保修卡。</p>
						<p>所有承诺内容以产品附件的保修卡为准。</p>
						<p>
							<br>
						</p>
						<h3>一、全国联保</h3>
						<p style="text-indent: 2em">AOC 显示器实施全国范围联保，国家标准三包服务。无论您是在中国大陆
							( 不含香港、澳门、台湾地区) 何处购买并在大陆地区使用的显示器，出现三包范围内的故障时，可凭显示器的保修证正本和购机发票到
							AOC
							显示器维修网点或授权网点进行维修同时，也欢迎您关注官方微信服务号“AOC用户俱乐部”(微信号：aocdisplay)进行查询。</p>
						<div style="text-align: center">
							<img
								src="http://img.aocmonitor.com.cn/image/2017-05/89154415.jpg"
								alt="">
						</div>
						<p>
							<br>
						</p>
						<p>三包服务如下：</p>
						<ol>
							<li>商品自售出之日起 7 日内，出现《微型计算机商品性能故障表》中所列故障时，消费者可选择退货、换货或修理。</li>
							<li>商品自售出之日起 15 日内，出现《微型计算机商品性能故障表》中所列故障时，消费者可选择换货或修理。</li>
							<li>商品自售出之日起 1 年内，出现《微型计算机商品性能故障表》中所列故障时，消费者可选择修理。</li>
						</ol>
						<p>以下情况不在三包范围内：</p>
						<ol>
							<li>超过三包有效期。</li>
							<li>无有效的三包凭证及发票。</li>
							<li>发票上内容与商品实物标识不符或者涂改的。</li>
							<li>未按产品使用说明书要求使用、维护、保养而造成损坏的（人为损坏）。</li>
							<li>非 AOC 授权的修理者拆动造成损坏的（私自拆修）。</li>
							<li>非 AOC 在中国大陆（不含香港、澳门、台湾地区）销售的商品。</li>
						</ol>
						<h3>二、显示器专享服务</h3>
						<p>
							<strong>1、LUVIA视界头等舱，VIP专享服务</strong>
						</p>
						<p style="text-indent: 2em">AOC针对各省市地区采取指定商品销售，消费者购买指定销往该区域的LUVIA卢瓦尔显示器标准品，从发票开具之日起1年内，注册成为官方微信服务号“AOC用户俱乐部”(微信号：aocdisplay)产品会员，即可在当地享“LUVIA视界头等舱，VIP专享服务”。</p>
						<div style="text-align: center">
							<img
								src="http://img.aocmonitor.com.cn/image/2017-05/25352146.jpg"
								alt="">
						</div>
						<p>
							<br>
						</p>
						<p style="text-indent: 2em">*
							如客户未在发票开具之日起1年内注册AOC微信会员，则只享受国家三包服务。</p>
						<p style="text-indent: 2em">注册会员方式：1、关注“AOC用户俱乐部”微信公众号。2、点击“会员”→“注册会员”。3、填写个人真实信息并注册产品信息，即可成为AOC产品会员。</p>
						<p style="text-indent: 2em">
							<strong>3年免费上门更换</strong>：从发票开具之日起3年内，产品若发生《微型计算机商品性能故障表》所列性能故障，可免费更换不低于同型号同规格产品。（服务网点无法覆盖区域，全国区域免费邮寄，双向运费由AOC负担）
						</p>
						<p style="text-indent: 2em">
							<strong>一键快捷掌上服务：</strong>从注册成为“AOC用户俱乐部”会员之日起，可享在线贴身技术顾问有问必答、售后服务在线预约、服务网点在线查询等一键快捷掌上服务。（人工客服咨询在线时间：8:00-22:00）
						</p>
						<p style="text-indent: 2em">
							<strong>增值豪礼尊享服务：</strong>可参加“AOC用户俱乐部”有奖互动赢取豪礼。
						</p>
						<p>
							注：<br>(1)如不能及时提供购机发票或发票记载不清、涂改、商品实物标示和发票内容不符，将以您上传“AOC用户俱乐部”的发票信息为准计算保修时间；如果发票信息并未上传，将以该显示器制造日期(制造日期见显示器后壳条形码标签)加一个月为准计算保修时间。<br>(2)非“AOC用户俱乐部”产品会员，不享受“LUVIA视界头等舱，VIP专享服务”。
						</p>
					</div>
				</div>
			</div>
			<div class="recommends">
				<div class="lace-title type-2">
					<span class="cr">爆款推荐</span>
				</div>
				<div class="swiper-container recommends-swiper">
					<div class="swiper-wrapper">
						<!-- 按打开的商品类别 -->
						<c:forEach items="${linkList}" var="ll">
							<div class="swiper-slide">
								<a class="picked-item" href=""> 
									<img src="upload/${ll.GPHOTOPIC }" alt="" class="cover">
									<div class="look_price">¥${ll.GNOWPRICE }</div>
								</a> 
							</div>
						</c:forEach>
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
		<div class="pull-right">
			<div class="tab-content" id="descCate">
				<div role="tabpanel" class="tab-pane fade in active" id="detail-tab"
					aria-labelledby="detail-tab">
					<div class="descCate-content bgf5">
						<dd class="dc-idsItem selected">
							<a href="#desc-module-1"><i class="iconfont icon-dot"></i>
								产品图</a>
						</dd>
						<dd class="dc-idsItem">
							<a href="#desc-module-2"><i class="iconfont icon-selected"></i>
								细节图</a>
						</dd>
						<dd class="dc-idsItem">
							<a href="#desc-module-3"><i class="iconfont"></i> 尺寸及试穿</a>
						</dd>
						<dd class="dc-idsItem">
							<a href="#desc-module-4"><i class="iconfont"></i> 模特效果图</a>
						</dd>
						<dd class="dc-idsItem">
							<a href="#desc-module-5"><i class="iconfont"></i> 常见问题</a>
						</dd>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="evaluate-tab"
					aria-labelledby="evaluate-tab">
					<div class="descCate-content posr bgf5">
						<div class="lace-title">
							<span class="c6">相关推荐</span>
						</div>
						<div class="picked-box">
						
						
						<!-- 按打开的商品类别 -->
						<c:forEach items="${linkList}" var="ll">
							<div class="swiper-slide">
								<a class="picked-item" href=""> 
									<img src="upload/${ll.GPHOTOPIC }" alt="" class="cover">
									<div class="look_price">¥${ll.GNOWPRICE }</div>
								</a> 
							</div>
						</c:forEach>
							
			
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="service-tab"
					aria-labelledby="service-tab">
					<div class="descCate-content posr bgf5">
						<div class="lace-title">
							<span class="c6">最近浏览</span>
						</div>
						<div class="picked-box">
						
						
						<!-- 按下单时间遍历出最近购买过的商品 -->
						<c:forEach items="${linkList}" var="ll">
							<div class="swiper-slide">
								<a class="picked-item" href=""> 
									<img src="upload/${ll.GPHOTOPIC }" alt="" class="cover">
									<div class="look_price">¥${ll.GNOWPRICE }</div>
								</a> 
							</div>
						</c:forEach>	
							
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
				$(document).ready(function(){
					$('#descCate').smartFloat(0);
					$('.dc-idsItem').click(function() {
						$(this).addClass('selected').siblings().removeClass('selected');
					});
					$('#item-tabs a[data-toggle="tab"]').on('show.bs.tab', function (e) {
						$('#descCate #' + $(e.target).attr('aria-controls') + '-tab')
						.addClass('in').addClass('active').siblings()
						.removeClass('in').removeClass('active');
					});
				});
				
				function collectionGoods(gid){
					var loginHuman='${sessionScope.loginHuman}';
					if(loginHuman==null || loginHuman==""){
						window.location.href = "userLoginPage.do";
					}else{
						flag=confirm("确定收藏宝贝吗?");
						if(flag){
							$.post("addFavorite.do",{gid:gid},function(data){
								if(data=="OK"){
									alert("收藏成功");
									document.location.reload();//当前页面 
								}else{
									alert(data);
								}
							})
						}
					}
				}
				
				function removeCollectionGoods(fid){
					flag=confirm("确定移除收藏的宝贝吗?");
					if(flag){
						$.post("removeFavorite.do",{fid:fid},function(data){
							if(data=="OK"){
								alert("已取消收藏");
								document.location.reload();//当前页面 
							}else{
								alert(data);
							}
						})
					}
				}
			</script>
	</section>
	</div>
	<%@ include file="rightMenu.jsp"%>
	<%@ include file="bottom.jsp"%>
</body>
</html>