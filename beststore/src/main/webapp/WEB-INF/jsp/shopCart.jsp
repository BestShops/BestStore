<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div class="content clearfix bgf5">
		<section class="user-center inner clearfix">
			<div class="user-content__box clearfix bgf">
				<div class="title">购物车</div>
				<form action="shopCartPayPage.do" class="shopcart-form__box">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="150">
									<label class="checked-label"><input type="checkbox" class="check-all"><i></i> 全选</label>
								</th>
								<th width="300">商品信息</th>
								<th width="150">单价</th>
								<th width="200">数量</th>
								<th width="200">现价</th>
								<th width="80">操作</th>
							</tr>
						</thead>
						<tbody>
						
						<c:forEach items="${listCart }" var="lc">
							<tr>
								<th scope="row">
									<label class="checked-label"><input type="checkbox"><i></i>
										<div class="img"><img src="upload/${lc.GPHOTOPIC }" alt="" class="cover"></div>
									</label>
								</th>
								<td>
									<div id="gname" class="name ep3"><a id="gid" >${lc.GID }</a>${lc.GNAME }</div>
									<div class="type c9">颜色分类：深棕色  尺码：均码</div>
								</td>
								<td>¥${lc.GNOWPRICE }</td>
								<td>
									<div class="cart-num__box">
										<input type="button" class="sub" value="-">
										<input type="text" id="val" class="val" value="${lc.CNUM }" maxlength="2">
										<input type="button" class="add" value="+">
									</div>
								</td>
								<td>¥${lc.GNOWPRICE * lc.CNUM }</td>
								<td><a type="button" id="delete">删除</a></td>
							</tr>
							<c:set var="money" value='${money + lc.GNOWPRICE * lc.CNUM}'></c:set>
						</c:forEach>
							
						</tbody>
					</table>
					<div class="user-form-group tags-box shopcart-submit pull-right">
						<button type="submit" class="btn">提交订单</button>
					</div>
					<div class="checkbox shopcart-total">
						<label><input type="checkbox" class="check-all"><i></i> 全选</label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a type="button" id="deleteAll">删除</a>
						<div class="pull-right">
							已选商品 <span>2</span> 件
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合计（不含运费）
							<b class="cr">¥<span class="fz24">${money }</span></b>
						</div>
					</div>
					<script>
					
						$(document).ready(function(){
							var $item_checkboxs = $('.shopcart-form__box tbody input[type="checkbox"]'),
								$check_all = $('.check-all');
							// 全选
							$check_all.on('change', function() {
								$check_all.prop('checked', $(this).prop('checked'));
								$item_checkboxs.prop('checked', $(this).prop('checked'));
							});
							// 点击选择
							$item_checkboxs.on('change', function() {
								var flag = true;
								$item_checkboxs.each(function() {
									if (!$(this).prop('checked')) { flag = false }
								});
								$check_all.prop('checked', flag);
							});
							// 个数限制输入数字
							$('input.val').onlyReg({reg: /[^0-9.]/g});
							// 加减个数
							$('.cart-num__box').on('click', '.sub,.add', function() {
								var value = Number($(this).siblings('.val').val());
								var gid =  document.getElementById('gid').innerText;
								if ($(this).hasClass('add')) {
									$(this).siblings('.val').val(Math.min((value += 1),99));
									
									// 加减购物车内商品数量
									$.post("changeCartNum.do",{
										cnum:value,
										gid:gid
									},function(data){
										if (data == "OK") {
											window.location.href = "shopCartPage.do";
										} else {
											alert(data);
										}
									});
								} else {
									$(this).siblings('.val').val(Math.max((value -= 1),1));
									
									// 加减购物车内商品数量
									$.post("changeCartNum.do",{
										cnum:value,
										gid:gid
									},function(data){
										if (data == "OK") {
											window.location.href = "shopCartPage.do";
										} else {
											alert(data);
										}
									});
								}
							});
							
							// 失焦改变数量
							$('.cart-num__box').on('blur', '.val', function() {
								var value = $("#val").val();
								var gid =  document.getElementById('gid').innerText;
								if( value == 0 || value == null ){
									alert("商品数量不能为0或者为空");
								} 
								// 改变购物车内商品数量
								$.post("changeCartNum.do",{
									cnum:value,
									gid:gid
								},function(data){
									if (data == "OK") {
										window.location.href = "shopCartPage.do";
									} else {
										alert(data);
									}
								});
							});
							
							// 删除购物车商品
							$('#delete').click(function() {
								var gid =  document.getElementById('gid').innerText;
								$.post("delete.do",{
									gid:gid
								},function(data){
									if (data == "OK") {
										alert("删除成功！");
										window.location.href = "shopCartPage.do";
									} else {
										alert(data);
									}
								});
							});
							
						});
					</script>
				</form>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>