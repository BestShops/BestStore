<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp" %>
	<div class="pull-right">
		<div class="user-content__box clearfix bgf">
			<div class="title">订单中心-订单${info.OID}</div>
			<div class="order-info__box">
				<div class="order-addr">收货地址：<span class="c6">${info.ACONSIGNEE}，${info.APHONE}，${info.ACITY}${info.ALOCATION}</span></div>
				<div class="order-info">
					订单信息
					<table>
						<tr>
							<td>订单编号：${info.OID}</td>
							<c:if test="${info.OSTATUS==0}"><td>未支付</td></c:if>
							<c:if test="${info.OSTATUS!=0}"><td><td>支付宝交易号：20175215464616164616</td></td></c:if>
							<td>创建时间：${info.OTIME}</td>
						</tr>
						<tr>
							<td>付款时间：<c:if test="${info.OSTATUS>0}">${info.OPEYTIME}</c:if></td>
							<td>成交时间：<c:if test="${info.OSTATUS==2}">${info.OPEYTIME}</c:if></td>
							<td></td>
						</tr>
					</table>
				</div>
				<div class="table-thead">
					<div class="tdf3">商品</div>
					<div class="tdf3">描述</div>
					<div class="tdf1">数量</div>
					<div class="tdf1">单价</div>
					<div class="tdf1">总价</div>
					<div class="tdf1">运费</div>
				</div>
				<div class="order-item__list">
					<c:forEach items="odlist" var="od">
					<div class="item">
						<div class="tdf3">
							<a href="item_show.html"><div class="img"><img src="upload/${od.gphotopic}" alt="" class="cover"></div>
							<div class="ep2 c6">${od.sname} ${od.gname}</div></a>
							<div class="attr ep">颜色分类：深棕色  尺码：均码</div>
						</div>
						<div class="tdf3">
							<div class="ep2">${od.gdesc}</div>
						</div>
						<div class="tdf1">${od.num}</div>
						<div class="tdf1">${od.gnowprice}</div>
						<div class="tdf1">¥18.0</div>
						<div class="tdf1">
							<div class="ep2">快递<br>¥0.00</div>
						</div>
					</div>
					</c:forEach>
				</div>
				<div class="price-total">
					<div class="fz12 c6">优惠￥${info.OLASTPRICE-info.ONOWPRICE}元<br>快递运费 ￥0.0</div>
					<div class="fz18 c6">实付款：<b class="cr">¥${info.ONOWPRICE}</b></div>
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