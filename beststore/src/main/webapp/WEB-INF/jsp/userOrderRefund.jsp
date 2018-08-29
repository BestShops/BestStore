<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<style>
	table{
		 text-align:center;
	}
</style>
</head>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">订单中心-退款/退货</div>
					<div class="order-list__box bgf">
						<div class="order-panel">
							<ul class="nav user-nav__title" role="tablist">
								<li role="presentation" class="nav-item active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">所有订单</a></li>
								<li role="presentation" class="nav-item "><a href="#money" aria-controls="money" role="tab" data-toggle="tab">退款 <span class="cr">0</span></a></li>
								<li role="presentation" class="nav-item "><a href="#item" aria-controls="item" role="tab" data-toggle="tab">退货 <span class="cr">0</span></a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="all">
									<table class="table table-hover table-striped text-center">
										<tr>
											<th width="170">申请单号</th>
											<th width="170">原订单号</th>
											<th width="170">商品名称</th>
											<th width="105">申请时间</th>
											<th width="105">应退金额</th>
											<th width="90">订单状态</th>
											<th width="90">操作</th>
										</tr>
										<c:forEach items="${orderlist}" var="ol">
											<tr>
												<td>${ol.orid}</td>
												<td>${ol.oid}</td>
												<td class="text-left">
													<div class="name ep" style="width: 180px">${ol.gname}</div>
												</td>
												<td>${ol.odealtime}</td>
												<td>¥${ol.onowprice}</td>
												<td class="refund-state">${ol.ortype}<br><a href="">联系客服</a></td>
												<td class="refund-state"><a href="">取消退款</a></td>
											</tr>
										</c:forEach>
									</table>
									<div class="page text-right clearfix" style="margin-top: 40px">
										<c:if test="${requestScope.pageNo==1}">
											<a>上一页</a>
										</c:if>
										<c:if test="${requestScope.pageNo!=1}">
											<a href="userOrderPage.do?pageNo=${requestScope.pageNo-1}&type=${requestScope.type}">上一页</a>
										</c:if>
											<c:forEach var="i" begin="1" end="${requestScope.count}">
												<c:if test="${i == requestScope.pageNo}">
													<a class="select">${i}</a>
												</c:if>
												<c:if test="${requestScope.pageNo!=i}">
													<a class="" href="userOrderPage.do?pageNo=${i}&type=${requestScope.type}">${i}</a>
												</c:if>
											</c:forEach>
										<c:if test="${requestScope.pageNo==requestScope.count}">
											<a>下一页</a>
										</c:if>
										<c:if test="${requestScope.pageNo!=requestScope.count}">
											<a href="userOrderPage.do?pageNo=${requestScope.pageNo+1}&type=${requestScope.type}">下一页</a>
										</c:if>
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="money">
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
											<div class="empty-msg">最近没有退款订单！</div>
										</td></tr>
									</table>
								</div>
								<div role="tabpanel" class="tab-pane fade" id="item">
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
											<div class="empty-msg">最近没有退货订单！</div>
										</td></tr>
									</table>
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