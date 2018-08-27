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
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">订单中心-我的订单</div>
					<div class="order-list__box bgf">
						<div class="order-panel">
							<ul class="nav user-nav__title" role="tablist">
								<li role="presentation" class="nav-item active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">所有订单</a></li>
								<li role="presentation" class="nav-item "><a href="#pay" aria-controls="pay" role="tab" data-toggle="tab">待付款 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#emit" aria-controls="emit" role="tab" data-toggle="tab">待发货 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#take" aria-controls="take" role="tab" data-toggle="tab">待收货 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#eval" aria-controls="eval" role="tab" data-toggle="tab">待评价 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#haveEval" aria-controls="haveEval" role="tab" data-toggle="tab">已评价 <span class="cr">0</span></a></li>
							</ul>

							<div class="tab-content">
								
								<!-- 全部 -->
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
										
										<c:forEach items="${list}" var="file">
										
											<tr class="order-item">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											<c:if test="${status==1 }">
											<td class="state">
												<a class="but c6">等待付款</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="shopCartPayPage.do" class="but but-primary">立即付款</a>
												<!-- <a href="" class="but but-link">评价</a> -->
												<a href="" class="but c3">取消订单</a>
											</td>
											</c:if>
											
											<c:if test="${status==1 }">
											<td class="state">
												<a class="but c6">等待付款</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="shopCartPayPage.do" class="but but-primary">立即付款</a>
												<!-- <a href="" class="but but-link">评价</a> -->
												<a href="" class="but c3">取消订单</a>
											</td>
											</c:if>
											
											
											<c:if test="${status==1 }">
											<td class="state">
												<a class="but c6">等待付款</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="shopCartPayPage.do" class="but but-primary">立即付款</a>
												<!-- <a href="" class="but but-link">评价</a> -->
												<a href="" class="but c3">取消订单</a>
											</td>
											</c:if>
											
											
											
											
											<c:if test="${status==1 }">
											<td class="state">
												<a class="but c6">等待收货</a>
												<a href="udai_mail_query.html" class="but cr">查看物流</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="userOrderReceiptedPage.do" class="but but-primary">确认收货</a>
												<!-- <a href="" class="but but-link">评价</a> -->
												<a href="userOrderReturnPage.do" class="but c3">退款/退货</a>
											</td>
											</c:if>
											
											<c:if test="${status==1 }">
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="udai_mail_query.html" class="but cr">查看物流</a>
												<a href="udai_order_detail.html" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="userOrderEvaluatePage.do" class="but but-link">评价</a>
												<a href="" class="but c3">取消订单</a>
											</td>
											</c:if>
											
										</tr>
            						</c:forEach>
										
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a href="">2</a>
										<a href="">3</a>
										<a class="" href="">下一页</a>
									</div>
								</div>
								
								
								
								<!-- 未付款 -->
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
										
										<c:forEach items="${list}" var="list">
											<c:if test="${list != null }">
											<tr class="order-item">
											
											<!-- 根据状态来判断是否要遍历出该商品，因为传list的时候是将所有的智斗一并传进来的 -->
											<c:if test="${status==1 }">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											
											<td class="state">
												<a href="udai_mail_query.html" class="but cr">等待付款</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">立即付款</a>
												<a href="" class="but c3">删除订单</a>
											</td>
											</c:if>
											
											
										</tr>
            							</c:if>
										
										<c:if test="${list==null }">
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
										</td></tr>
										</c:if>
									</c:forEach>
										
									</table>
								</div>
								
								<!-- 待发货 -->
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
										
										<c:forEach items="${list}" var="list">
											<c:if test="${list!=null }">
											<tr class="order-item">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											<td class="state">
												<a class="but c6">等待发货</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
												<a href="udai_apply_return.html" class="but c3">退款/退货</a>
											</td>
										</tr>
            							</c:if>
										
										<c:if test="${list==null }">
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
										</td></tr>
										</c:if>
									</c:forEach>
									
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a class="disabled">下一页</a>
									</div>
								</div>
								
								
								
								
								<!-- 待收货 -->
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
										
										
										
										<c:forEach items="${list}" var="list">
											<c:if test="${list!=null }">
											<tr class="order-item">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											<td class="state">
												<a class="but c6">等待发货</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="udai_order_receipted.html" class="but but-primary">确认收货</a>
												<a href="udai_apply_return.html" class="but c3">退款/退货</a>
											</td>
										</tr>
            							</c:if>
										
										<c:if test="${list==null }">
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
										</td></tr>
										</c:if>
									</c:forEach>
									
									
									</table>
								</div>
								
								
								<!-- 待评价 -->
								<div role="tabpanel" class="tab-pane fade" id="eval">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										
										<c:forEach items="${list}" var="list">
											<c:if test="${list!=null }">
											<tr class="order-item">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="udai_mail_query.html" class="but cr">查看物流</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">评价</a>
												<a href="" class="but c3">删除订单</a>
											</td>
										</tr>
            							</c:if>
										
										<c:if test="${list==null }">
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
										</td></tr>
										</c:if>
									</c:forEach>
										


									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a class="disabled">下一页</a>
									</div>
								</div>
								
								
								<!-- 已评价 -->
								<div role="tabpanel" class="tab-pane fade" id="haveEval">
									<table class="table text-center">
										<tr>
											<th width="380">商品信息</th>
											<th width="85">单价</th>
											<th width="85">数量</th>
											<th width="120">实付款</th>
											<th width="120">交易状态</th>
											<th width="120">交易操作</th>
										</tr>
										
										<c:forEach items="${list}" var="list">
											<c:if test="${list!=null }">
											<tr class="order-item">
											<td>
												<label>
													<a href="udai_order_detail.html" class="num">
														2017-03-30 订单号: 2669901385864042
													</a>
													<div class="card">
														<div class="img"><img src="images/temp/item-img_1.jpg" alt="" class="cover"></div>
														<div class="name ep2">${file.name}</div>
														<div class="format">颜色分类：深棕色  尺码：均码</div>
														<div class="favour">使用优惠券：优惠¥2.00</div>
													</div>
												</label>
											</td>
											<td>￥100</td>
											<td>1</td>
											<td>￥1000<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
										
											<td class="state">
												<a class="but c6">交易成功</a>
												<a href="udai_mail_query.html" class="but cr">查看物流</a>
												<a href="userOrderDetailPage.do" class="but c9">订单详情</a>
											</td>
											<td class="order">
												<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></div>
												<a href="" class="but but-link">查看评价</a>
												<a href="" class="but c3">删除订单</a>
											</td>
											
										</tr>
            							</c:if>
										
										<c:if test="${list==null }">
										<tr class="order-empty"><td colspan='6'>
											<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="item_category.html">要不瞧瞧去？</a></div>
										</td></tr>
										</c:if>
									</c:forEach>

										
										
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<a class="disabled">上一页</a>
										<a class="select">1</a>
										<a class="disabled">下一页</a>
									</div>
								</div>
								
								
								
							</div>
						</div>
					</div>
				
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>