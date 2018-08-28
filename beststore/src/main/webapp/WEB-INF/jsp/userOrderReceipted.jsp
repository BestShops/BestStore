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
					<div class="title">订单中心-确认收货</div>
					<div class="order-info__box">
						<div class="step-flow-box" style="width: 800px;margin: 0 auto 24px">
							<div class="step-flow__bd">
								<div class="step-flow__li step-flow__li_done">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">拍下商品</p>
								</div>
								<div class="step-flow__line step-flow__li_done">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li step-flow__li_done">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">付款</p>
								</div>
								<div class="step-flow__line step-flow__li_done">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li step-flow__li_done">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">卖家发货</p>
								</div>
								<div class="step-flow__line step-flow__line_ing">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">买家确认收货</p>
								</div>
							</div>
						</div>
						<p class="fz18 cr">我已收到货，同意付款。</p>
						<div class="table-thead">
							<div class="tdf3">商品</div>
							<div class="tdf1">数量</div>
							<div class="tdf1">单价</div>
							<div class="tdf2">优惠</div>
							<div class="tdf1">总价</div>
							<div class="tdf1">运费</div>
						</div>
						<div class="order-item__list">
							<c:forEach items="${odlist}" var="od">
							<div class="item">
								<div class="tdf3">
									<a href="item_show.html"><div class="img"><img src="upload/${od.gphotopic}" alt="" class="cover"></div>
									<div class="ep2 c6">${od.sname} ${od.gname}</div></a>
									<div class="attr ep">颜色分类：深棕色  尺码：均码</div>
								</div>
								<div class="tdf3">${od.gdesc}</div>
								<div class="tdf1">${od.num}</div>
								<div class="tdf1">¥${od.gnowprice}</div>
								<div class="tdf1">¥${od.num*od.gnowprice}</div>
								<div class="tdf1">
									<div class="ep2">快递<br>¥0.00</div>
								</div>
							</div>
							</c:forEach>
						</div>
						<div class="price-total">
							<div class="fz12 c9">优惠¥${info.OLASTPRICE-info.ONOWPRICE}元<br>快递运费 ￥0.0</div>
							<div class="fz18 c6">实付款：<b class="cr">¥${info.ONOWPRICE}</b></div><br>
						</div>
						<hr>
						<div class="order-info">
							订单编号：<span class="c6">${info.OID}</span><br>
							支付宝交易号：<span class="c6">165454564564165164654654</span><br>
							收货地址：<span class="c6">${info.ACONSIGNEE}，${info.ACITY}${info.ALOCATION}，${fn:substring(info.APHONE,0,3)}****${fn:substring(info.APHONE,7,11)}</span><br>
							成交时间：<span class="c6">${requestScope.time}</span>
						</div>
						<div class="modify_div clearfix">
							<form action="" class="user-setting__form" role="form" onsubmit="return false;">
								<ul class="fz12 text-nowrap">
									<li class="cr">◆ 请收到货后，再确认收货！否则我们可能无法为您保障权益！</li>
								</ul>
								<!-- <div class="form-group">
									<label form="pay-pwd" class="iptut-box-nick posr">
										<span class="cr">支付密码：</span>
										<input type="password" id="pay-pwd" maxlength="6">
										<div class="iptut-fake-box"></div>
										<p style="font-weight: normal">请输入6位数字支付密码 <a href="udai_paypwd_modify.html">忘记支付密码？</a></p>
									</label>
								</div> -->
								<div class="form-group" style="line-height: 1em">
									<div class="col-sm-offset-2 col-sm-10">
										<button type="submit" class="but" id="submit">确认已收货</button>
									</div>
								</div>
								<script>
									$(document).ready(function(){
										var teml = '<div class="pwd-digit"></div>',
											$fake_box = $('.iptut-fake-box');
										$fake_box.empty().html(teml + teml + teml + teml + teml + teml)
										$fake_box.html()
										$('#pay-pwd').bind('input propertychange focus',function() {
											$fake_box.empty();
											for (var i = 0; i < 6; i++) {
												var $temp = $(teml);
												if ($(this).val().length > i) {
													$temp.addClass('active')
												};
												if ($(this).val().length == i) {
													$temp.addClass('current')
												};
												$fake_box.append($temp);
											}
										});
										$('#pay-pwd').bind('blur',function() {
											$fake_box.find('.pwd-digit').removeClass('current');
										});
									});
								</script>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	<script type="text/javascript">
		$("#submit").click(function(){
			if (confirm("确认收货后将不能退货，请确认是否确认收货")) {
				var oid = '${info.OID}';
				$.post("confirm.do",{
					oid:oid
				},function(data){
					alert(data);
				});
			}
		});
	</script>
</body>
</html>