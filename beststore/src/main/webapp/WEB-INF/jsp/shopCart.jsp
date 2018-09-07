<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<script type="text/javascript">
var is;
$(function() {
	$("#selectAllBox").change(function() {
		var flag = $(this).is(":checked");
		if (flag) {
			// 修改金额和数量
			var num = 0;
			var sum = 0;
			var sum1 = 0;
			$(".val").each(function(){
				num = parseInt(num) + parseInt($(this).val());
			});
			$(".money").each(function(){
				sum = (parseFloat(sum) + parseFloat($(this).text().split(" ")[1])).toFixed(2);
			});
			$(".money1").each(function(){
				sum1 = (parseFloat(sum1) + parseFloat($(this).text().split(" ")[1])).toFixed(2);
			});
			$("#goodsNum").attr("value",num);
			$("#sumprice").val(sum);			
			$("#sumlastprice").val(sum1);
			// 修改复选框
			var idStr = [];
			$(".selectBox").each(function() {
				$(this).prop("checked", true);
				idStr.push($(this).val() + ",");
			});
		} else {
			// 修改金额和数量
			$("#goodsNum").attr("value",0);
			$("#sumprice").val(0);
			$("#sumlastprice").val(0);
			// 修改复选框
			$(".selectBox").each(function() {
				$(this).removeAttr("checked", false);
			});
		}
		is = idStr;
		$("#gidsInput").attr("value",is);
	});

	$(".selectBox").change(function() {
		var parent = $(this).parent().parent().parent().parent();
		var money = parent.children("td.money").text().split(" ")[1];
		var money1 = parent.children("td.money1").text().split(" ")[1];
		if ($(this).is(":checked") == true) {
			var sumprice = (parseFloat($("#sumprice").val()) + parseFloat(money)).toFixed(2);
			$("#sumprice").val(sumprice);
			var sumlastprice = (parseFloat($("#sumlastprice").val()) + parseFloat(money1)).toFixed(2);
			$("#sumlastprice").val(sumlastprice);
		} else {
			var sumprice = (parseFloat($("#sumprice").val()) - parseFloat(money)).toFixed(2);
			$("#sumprice").val(sumprice);
			var sumlastprice = (parseFloat($("#sumlastprice").val()) - parseFloat(money1)).toFixed(2);
			$("#sumlastprice").val(sumlastprice);
		}
		var idStr = [];
		$(".selectBox").each(function() {
			if ($(this).is(":checked")) {
				idStr.push($(this).val() + ",");
			} else {
				$("#selectAllBox").removeAttr("checked", false);
			}
		});
		var lengthSelected = $(".selectBox:checked").length;
		var length = $(".selectBox").length;
		if (lengthSelected == length) {
			$("#selectAllBox").prop("checked", true);
		}
		is = idStr;
		$("#gidsInput").attr("value",is);
	});
	
});

function makeOrder(){
	if (is == null || is.length <= 0 || is == "") {
		$.message({
            message:"至少选择一件商品哦!",
            type:'warning'
        });
		return false;
	} else {
		return true;
	}
}

</script>
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
				<div class="title">
					购物车
					<a onclick="removeAll()" style="float: right;color: #fff;text-align: center;line-height: 24px;margin-top: 4px;height: 24px;width: 90px;background-color: #b31e22;text-decoration: none;cursor: pointer;">清空购物车</a>
				</div>
				<form action="shopCartPayPage.do" onsubmit="return makeOrder()" method="post" enctype="multipart/form-data" class="shopcart-form__box">
					<input id="gidsInput" name="cids" type="hidden">
					<c:if test="${cartCount >= 1 }">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="100">
									<label class="checked-label">
										<input id="selectAllBox" type="checkbox"><i></i> 全选
									</label>
								</th>
								<th width="100">图片</th>
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
									<label class="checked-label">
										<div class="img"><input type="checkbox" class="selectBox" value="${lc.GID }"></div>
									</label>
								</th>
								<th scope="row">
									<label class="checked-label"><!-- <input type="checkbox"><i></i> -->
										<div class="img"><img src="upload/${lc.GPHOTOPIC }" class="cover"></div>
									</label>
								</th>
								<td>
									<div id="gname" class="name ep3">${lc.GNAME }</div>
									<!-- <div class="type c9">颜色分类：深棕色  尺码：均码</div> -->
								</td>
								<td>¥${lc.GNOWPRICE } <br><s style="color:gray;font-size: 14px">¥${lc.GLASTPRICE }</s></td>
								<td class="num">
									<div class="cart-num__box">
										<input type="button" class="sub" value="-">
										<input type="number" class="val" max="${lc.GNUMBER }" value="${lc.CNUM }">
										<input type="button" class="add" value="+">
									</div>
								</td>
								<td class="money">¥ <fmt:formatNumber type="number" value="${lc.GNOWPRICE * lc.CNUM}" pattern="0.00" maxFractionDigits="2"/></td>
								<td hidden="yes" class="money1">¥ <fmt:formatNumber type="number" value="${lc.GLASTPRICE * lc.CNUM}" pattern="0.00" maxFractionDigits="2"/></td>
								<td><a onclick="deletegood(${lc.GID})" name="${lc.GID}" style="cursor: pointer;">删除</a></td>
							</tr>
							<c:set var="money" value='${money + lc.GNOWPRICE * lc.CNUM}'></c:set>
						</c:forEach>
						</tbody>
					</table>
					<div class="user-form-group tags-box shopcart-submit pull-right">
						<button type="submit" class="btn">生成订单</button>
					</div>
					<div class="checkbox shopcart-total">
						<!-- <label><input type="checkbox" class="check-all"><i></i> 全选</label> -->
						<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a type="button" id="deleteAll">清空购物车</a>  -->
						<div class="pull-right">
							已选商品 <span><input style="width:20px; height:20px; border: 0px;outline:none;" class="fz16 cr" id="goodsNum" type="text" readonly="readonly" style="width:30px; height:20px;" value="0"/></span> 件
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合计（不含运费）
							<b class="cr">¥<input class="fz24" pattern="0.00" id="sumprice" name="onowprice" type="text" readonly="readonly" style="width:88px; height:25px;border: 0px;outline:none;cursor: pointer;" value="0" /></b>
							<input class="fz24" pattern="0.00" id="sumlastprice" name="olastprice" type="hidden" readonly="readonly" style="width:88px; height:25px;border: 0px;outline:none;cursor: pointer;" value="0" />
						</div>
					</div>
					</c:if>
					
					<c:if test="${cartCount < 1 }">
					<table class="table table-bordered">
						<tr class="order-empty">
							<td colspan='6'>
								<div class="empty-msg">购物车里还没有东西，赶快去购物吧！<br><a href="index">点击这里，跳转购物>>></a></div>
							</td>
						</tr>
					</table>
					</c:if>
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
								var num = 0;
								$item_checkboxs.each(function() {
									if (!$(this).prop('checked')) { 
										flag = false;
										num -- ;
									} else {
										var val = $(this).parent().parent().parent().parent().children("td.num").children().children("input.val").val();
										num = parseInt(num) + parseInt(val);
										num -- ;
									}
									num ++;
									$("#goodsNum").attr("value",num);
								});
								$check_all.prop('checked', flag);
							});
							// 个数限制输入数字
							$('input.val').onlyReg({reg: /[^0-9.]/g});
							// 加减个数
							$('.cart-num__box').on('click', '.sub,.add', function() {
								var value = Number($(this).siblings('.val').val());
								console.log(value);
								var gid =  $(this).parent().parent().parent().children().children().children().children().val();
								console.log(gid);
								if ($(this).hasClass('add')) {
									$(this).siblings('.val').val(Math.min((value += 1),99));
									// 加购物车内商品数量
									$.post("changeCartNum.do",{
										cnum:value,
										gid:gid
									},function(data){
										if (data == "OK") {
											window.location.href = "shopCartPage.do";
										} else {
											location.reload();
											$.message({
						                        message:data,
						                        type:'error'
						                    });
										}
									});
								} else {
									$(this).siblings('.val').val(Math.max((value -= 1),1));
									// 减购物车内商品数量
									$.post("changeCartNum.do",{
										cnum:value,
										gid:gid
									},function(data){
										if (data == "OK") {
											window.location.href = "shopCartPage.do";
										} else {
											location.reload();
											$.message({
						                        message:data,
						                        type:'error'
						                    });
										}
									});
								}
							});
							
							// onchange事件，改变数量
							$('.cart-num__box').on('change', '.val', function() {
								var value = $(this).parent().children('input').eq(1).val();
								console.log(value);
								var gid =  $(this).parent().parent().parent().children().children().children().children().val();
								console.log(gid);
								if( value == 0 || value == null ){
									$.message({
				                        message:"商品数量不能为0或者为空",
				                        type:'warning'
				                    });
								} 
								// 改变购物车内商品数量
								$.post("changeCartNum.do",{
									cnum:value,
									gid:gid
								},function(data){
									if (data == "OK") {
										window.location.href = "shopCartPage.do";
									} else {
										location.reload();
										$.message({
					                        message:data,
					                        type:'warning'
					                    });
									}
								});
							});
						});
						
						// 删除购物车商品
						function deletegood(gid){
							$.post("delete.do",{
								gid:gid
							},function(data){
								if (data == "OK") {
									$.message("删除成功！");
									window.location.href = "shopCartPage.do";
								} else {
									$.message({
				                        message:data,
				                        type:'error'
				                    });
								}
							});
						}
						
						// 删除购物车商品
						function removeAll(){
							$.post("removeAll.do",
									function(data){
								if (data == "OK") {
									alert("清空购物车成功！");
									window.location.href = "shopCartPage.do";
								} else {
									alert(data);
								}
							});
						}
					</script>
				</form>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>