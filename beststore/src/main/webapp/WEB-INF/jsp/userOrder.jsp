<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css"> -->
</head>
<body>
	<%@ include file="header2.jsp" %>
	<div class="pull-right">
		<div class="user-content__box clearfix bgf">
			<div class="title">订单中心-我的订单</div>
			<div class="order-list__box bgf">
				<div class="order-panel">
					<ul class="nav user-nav__title" role="tablist">
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=10">所有订单</a></li>
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=0">待付款 <span class="cr">${counts[0]}</span></a></li>
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=1">待发货 <span class="cr">${counts[1]}</span></a></li>
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=2">待收货 <span class="cr">${counts[2]}</span></a></li>
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=3" >待评价 <span class="cr">${counts[3]}</span></a></li>
						<li role="presentation" class="nav-item "><a href="userOrderPage.do?pageNo=1&type=4">已评价 <span class="cr">${counts[4]}</span></a></li>
					</ul>
					<script type="text/javascript">
						// 判断当前是选中的那一类选项
						$(document).ready(function(){
							if ('${type}'==10) {
								$("li.nav-item").eq(0).addClass("active");
							} else {
								var index = '${type+1}';
								$("li.nav-item").eq(index).addClass("active");
							}
						});
					</script>
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
								<c:if test="${requestScope.orderlist==null || requestScope.orderlist.size() == 0}">
								<tr class="order-empty"><td colspan='6'>
									<div class="empty-msg">最近没有任何订单，家里好像缺了点什么！<br><a href="goodsQueryPage.todo">要不瞧瞧去？</a></div>
								</td></tr>
								</table>
								</c:if>
								<c:if test="${requestScope.orderlist!=null && requestScope.orderlist.size() != 0}">
								<c:forEach items="${requestScope.orderlist}" var="o">
									<tr class="order-item">
									<td>
										<label>
											<a href="userOrderDetailPage.do?oid=${o.OID}" class="num">
												${o.OTIME} 订单号: ${o.OID}
											</a>
											<div class="card">
												<div class="img"><img src="upload/${o.gphotopic}" alt="" class="cover"></div>
												<div class="name ep2">${o.gname}</div>
												<div class="favour">使用优惠券：优惠¥${o.OLASTPRICE-o.ONOWPRICE}</div>
											</div>
										</label>
									</td>
									<td>￥${o.gnowprice}</td>
									<td>${o.num}</td>
									<td>￥${o.ONOWPRICE}<br><span class="fz12 c6 text-nowrap">(含运费: ¥0.00)</span></td>
								
									<c:if test="${o.OSTATUS==0 }">
									<td class="state">
										<a class="but c6">等待付款</a>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but c9">订单详情</a>
									</td>
									<td class="order">
										<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true" onclick="del(${o.OID},${o.OSTATUS})"></span></div>
										<a href="pay.do?oid=${o.OID}" class="but but-primary">立即付款</a>
										<a href="" onclick="del(${o.OID},${o.OSTATUS})" class="but c3">取消订单</a>
									</td>
									</c:if>
									
									<c:if test="${o.OSTATUS==1 || o.OSTATUS==2}">
									<td class="state">
										<a class="but c6">等待收货</a>
										<a href="udai_mail_query.html" class="but cr">查看物流</a>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but c9">订单详情</a>
									</td>
									<td class="order">
										<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true" onclick="del(${o.OID},${o.OSTATUS})"></span></div>
										<c:if test="${o.OSTATUS==1}"><a style="cursor: pointer;" class="but but-primary" onclick="$.message({message:'您的订单还未发货，不能确认收货',type:'warning'});">确认收货</a></c:if>
										<c:if test="${o.OSTATUS==2}"><a href="receiptedOrder.do?oid=${o.OID}" class="but but-primary">确认收货</a></c:if>
										<a href="userOrderReturn.do?oid=${o.OID}" class="but c3">退款/退货</a>
									</td>
									</c:if>
									<c:if test="${o.OSTATUS==3}">
									<td class="state">
										<a class="but c6">交易成功</a>
										<a href="udai_mail_query.html" class="but cr">查看物流</a>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but c9">订单详情</a>
									</td>
									<td class="order">
										<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true" onclick="del(${o.OID},${o.OSTATUS})"></span></div>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but but-link">评价</a>
										<a href="" class="but c3" onclick="del(${o.OID},${o.OSTATUS})">删除订单</a>
									</td>
									</c:if>
									<c:if test="${o.OSTATUS==4}">
									<td class="state">
										<a class="but c6">交易成功</a>
										<a href="udai_mail_query.html" class="but cr">查看物流</a>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but c9">订单详情</a>
									</td>
									<td class="order">
										<div class="del"><span class="glyphicon glyphicon-trash" aria-hidden="true" onclick="del(${o.OID},${o.OSTATUS})"></span></div>
										<a href="userOrderDetailPage.do?oid=${o.OID}" class="but but-link">查看评价</a>
										<a href="" class="but c3" onclick="del(${o.OID},${o.OSTATUS})">删除订单</a>
									</td>
									</c:if>
								</tr>
          						</c:forEach>
							</table>
							<div class="page text-right clearfix" style="margin-top: 40px">
							<!-- 分页 -->
							<c:if test="${requestScope.count!=0}">
							<c:if test="${requestScope.pageNo==1}">
								<a>上一页</a>
							</c:if>
							<c:if test="${requestScope.pageNo!=1}">
								<a href="userOrderPage.do?pageNo=${requestScope.pageNo-1}&type=${requestScope.type}">上一页</a>
							</c:if>
							</c:if>
							<c:forEach var="i" begin="1" end="${requestScope.count}">
								<c:if test="${i == requestScope.pageNo}">
									<a class="select">${i}</a>
								</c:if>
								<c:if test="${requestScope.pageNo!=i}">
									<a class="" href="userOrderPage.do?pageNo=${i}&type=${requestScope.type}">${i}</a>
								</c:if>
							</c:forEach>
							<c:if test="${requestScope.count!=0}">
							<c:if test="${requestScope.pageNo==requestScope.count}">
								<a>下一页</a>
							</c:if>
							<c:if test="${requestScope.pageNo!=requestScope.count}">
								<a href="userOrderPage.do?pageNo=${requestScope.pageNo+1}&type=${requestScope.type}">下一页</a>
							</c:if>
							</c:if>
							</div>
							</c:if>
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
	<script type="text/javascript">
		function del(oid, ostatus) {
			var index = 0;// 标志符，1为删除
			if (ostatus==0) {
				if(confirm("该订单还未支付，如果删除的话订单就会取消，您确定删除吗？")){
					index = 1;
				}
			} else if (ostatus==1 || ostatus==2) {
				$.message({
                    message:"该订单未完成，不能删除",
                    type:'error'
                });
			} else if (ostatus==3 || ostatus==4) {
				if(confirm("该订单删除后，将不能再查看到该订单的具体信息，您确定删除吗？")){
					index = 1;
				}
			}
			if (index==1) {
				// 执行删除操作
				$.post("delOrder.do",{
					oid:oid
				},function(data){
					$.message({
                        message:data,
                        type:'info'
                    });
					var i = '${requestScope.pageNo}';
					var type = '${requestScope.type}';
					window.location.href="userOrderPage.do?pageNo=" + i + "&type=" + type;
				});
			}
		}
	</script>
</body>
</html>