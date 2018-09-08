<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
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
					<a href="userLogout.do" style="color:blue">退出</a>
				</c:if>
				<a href="welcomePage.do">我的U袋</a>
				<a href="userOrderPage.do?pageNo=1&type=10">我的订单</a>
			</div>
		</div>
	</div>
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<a class="logo" href="index"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
				<div class="title">购物车</div>
			</div>
		</div>
	</div>
	<div class="content clearfix bgf5">
		<section class="user-center inner clearfix">
			<div class="user-content__box clearfix bgf">
				<div class="title">购物车-确认支付 </div>
				<div class="shop-title">收货地址</div>
				<form action="pay.do" method="POST" class="shopcart-form__box" onsubmit="return checkAid()">
					<div class="addr-radio">
					<c:forEach items="${addresslist}" var="al">
					<c:if test="${al.astatus == 1 }">
						<div class="radio-line radio-box active">
							<label class="radio-label ep" title="${al.acity } ${al.alocation } （${al.aconsignee } 收） ${al.aphone }">
								<input class="aidText" name="aid" checked="" value="${al.aid}" autocomplete="off" type="radio"><i class="iconfont icon-radio"></i>
								${al.acity } ${al.alocation }
								（${al.aconsignee } 收） ${al.aphone }
							</label>
							<a class="default">默认地址</a>
							<a href="addressPage.do" class="edit">修改</a>
						</div>
					</c:if>
					<c:if test="${al.astatus == 0 }">	
						<div class="radio-line radio-box">
							<label class="radio-label ep" title="${al.acity } ${al.alocation } （${al.aconsignee } 收） ${al.aphone }">
								<input class="aidText" name="aid" value="${al.aid}" autocomplete="off" type="radio"><i class="iconfont icon-radio"></i>
								${al.acity } ${al.alocation }
								（${al.aconsignee } 收） ${al.aphone }
							</label>
							<a onclick="addressDefault(${al.aid})" class="default">设为默认地址</a>
							<a href="addressPage.do" class="edit">修改</a>
						</div>
					</c:if>
					
					</c:forEach>	
					<script type="text/javascript">
					// $("input[name='addr']:checked").val()
						// 设为默认
						function addressDefault(aid) {
							if (confirm("您确定要将该地址设置为默认吗？")) {
								$.post("addressDefault.do",{
									aid:aid
								},function(data){
									if ("OK" == data) {
										window.location.href="shopCartPayPage.do";
									}
								});
							}
						}
					</script>
					
					</div>
					<div class="add_addr"><a href="addressPage.do">添加新地址</a></div>
					<div class="shop-title">订单详情</div>
					<div class="shop-order__detail">
						<table class="table">
							<thead>
								<tr>
									<th width="120"></th>
									<th width="300">商品信息</th>
									<th width="150">单价</th>
									<th width="200">数量</th>
									<th width="200">运费</th>
									<th width="80">总价</th>
								</tr>
							</thead>
							<tbody>
							
							<c:forEach items="${listCart }" var="lc">
								<tr>
									<th scope="row"><a><div class="img"><img src="upload/${lc.GPHOTOPIC}" class="cover"></div></a></th>
									<td>
										<div class="name ep3">${lc.GNAME }</div>
										<!--  <div class="type c9">颜色分类：深棕色  尺码：均码</div>  -->
									</td>
									<td>${lc.GNOWPRICE}</td>
									<td>${lc.CNUM}</td>
									<td>¥0.0</td>
									<td>${lc.GNOWPRICE*lc.CNUM}</td>
								</tr>
								<c:set var="lastmoney" value='${lastmoney + lc.GLASTPRICE * lc.CNUM}'></c:set>
								<c:set var="money" value='${money + lc.GNOWPRICE * lc.CNUM}'></c:set>
							</c:forEach>	
							
							</tbody>
						</table>
					</div>
					<div class="shop-cart__info clearfix">
						<div class="pull-left text-left">
							<div class="info-line text-nowrap">购买时间：<input class="c6" name="ordertime" type="text" readonly="readonly" style="border: 0px;outline:none;cursor: pointer;" value="<fmt:formatDate value="${order.otime}" type="both"/>"></div>
							<div class="info-line text-nowrap">交易类型：<span class="c6">担保交易</span></div>
							<div class="info-line text-nowrap">交易号：<input class="c6" name="oid" type="text" readonly="readonly" style="width:60px; height:20px; border: 0px;outline:none;cursor: pointer;" value="${order.oid}"></div>
						</div>
						<div class="pull-right text-right">
							<div class="form-group">
								<label for="coupon" class="control-label"></label>
							</div>
							<div class="info-line">原价：<input class="fz16 cr" name="olastprice" type="text" readonly="readonly" style="width:90px; height:20px; border: 0px;outline:none;" value="${lastmoney}"></div>
							<div class="info-line"><span class="favour-value">已优惠 ¥${lastmoney-money}</span>合计：<input class="fz16 cr" name="onowprice" type="text" readonly="readonly" style="width:90px; height:20px; border: 0px;outline:none;" value="${money}"></div>
						</div>
					</div>
					<div class="shop-title">支付方式</div>
					<div class="pay-mode__box">
						<div class="radio-line radio-box active">
							<label class="radio-label ep">
								<input name="paymode" value="1" autocomplete="off" type="radio" checked="checked"><i class="iconfont icon-radio"></i>
								<img src="images/icons/alipay.png" alt="支付宝支付">
							</label>
							<div class="pay-value">支付<b class="fz16 cr">${money}</b>元</div>
						</div>
						<div class="radio-line radio-box">
							<label class="radio-label ep">
								<input name="paymode" value="2" autocomplete="off" type="radio"><i class="iconfont icon-radio"></i>
								<img src="images/icons/paywechat.png" alt="微信支付">
							</label>
							<div class="pay-value">支付<b class="fz16 cr">${money}</b>元</div>
						</div>
					</div>
					<div class="user-form-group shopcart-submit">
						<button type="submit" class="btn">继续支付</button> 
					</div>
					<script>
						$(document).ready(function(){
							$(this).on('change','input',function() {
								$(this).parents('.radio-box').addClass('active').siblings().removeClass('active');
							})
						});
					</script>
				</form>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	<script type="text/javascript">
		function checkAid(){
			if($(".aidText").val()=="" || $(".aidText").val()==null){
				alert("请填写收货地址!");
				return false;
			}else{
				return true;
			}
			
		}
	</script>
</body>
</html>