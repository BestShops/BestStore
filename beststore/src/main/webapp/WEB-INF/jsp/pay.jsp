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
	<link href="css/base.css" rel="stylesheet" type="text/css" />
	<link href="css/user.css" rel="stylesheet" type="text/css" />
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
				<a href="">网店代销</a>
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
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<a class="logo" href="index"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
				<div class="title">购物车</div>
			</div>
		</div>
	</div>
	<!-- <div class="content clearfix bgf5"> -->
		<%-- <section class="user-center inner clearfix">
			<div class="user-content__box clearfix bgf">
				<div class="title">付款 </div>
				<form action="payDone.do" method="post" class="shopcart-form__box">
				订单号：<input name="oid" type="text" readonly="readonly" 
						style="width:40px; height:20px; border: 0px; 
						outline:none; cursor: pointer;" value="${orders.oid}"><br>
				订单时间：<a><fmt:formatDate value="${orders.otime}" type="both"/></a><br>
				付款金额：<a>${orders.onowprice}</a><br>
					<img alt="扫码付款" src="upload/${payPic}"><br><br>
					<a href="payDone.do?oid=${orders.oid}">扫码支付完成，若未进行跳转，请点击此处>>></a>
				</form>
			</div>
		</section> --%>
		<div class="payment-con">
   		 <form  target="_blank" action="#" id="pay-form" method="post">
        <div class="order-info">
            <div class="icon-box">
                <i class="iconfont"></i>
            </div>
            <div class="msg">
                <h3>您的订单已提交成功！付款咯～</h3>
                <p class="post-date">成功付款后，7天发货</p>
            </div>
            <form action="payDone.do" method="post" class="shopcart-form__box">
	            <div class="info">
	                <p>金额：<span class="pay-total">${orders.onowprice}元</span></p>
	                <p>订单号：<input name="oid" type="text" readonly="readonly" 
						style="width:40px; height:20px; border: 0px; 
						outline:none; cursor: pointer;" value="${orders.oid}"></p>
	                <p>
	                <p>订单时间：<fmt:formatDate value="${orders.otime}" type="both"/></p>
	                <p>付款时间：${orders.onowprice}</p>
		                    配送：庄明勇<span class="line">/</span>159****3461<span class="line">/</span>
		                    福建,厦门市,思明区 福建厦门思明区湖滨四里64号湖光大厦11楼A座<span class="line">/</span>
		                    不限送货时间<span class="line">/</span>个人电子发票</p>
		            </div>
            </form>
        </div>
		<div>
            <div class="box-ft">
            	<a href="userOrderPage.do?pageNo=1&type=10" class="next">查看订单</a>
                <a href="goodsQueryPage.todo" class="modify">返回购物</a>
			</div>
		</div>
	</form>  
	</div>
	<!-- 我家的 -->
	
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	<script type="text/javascript">
    p_nav_c.onmouseover = function(){
        index_product_class.style.display = 'block';
    }
    p_nav_c.onmouseout = function() {
        index_product_class.style.display = 'none';
    }
	</script>
</body>
</html>