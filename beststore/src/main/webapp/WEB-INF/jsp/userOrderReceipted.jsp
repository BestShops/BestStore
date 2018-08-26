<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							<div class="item">
								<div class="tdf3">
									<a href="item_show.html"><div class="img"><img src="images/temp/M-003.jpg" alt="" class="cover"></div>
									<div class="ep2 c6">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div></a>
									<div class="attr ep">颜色分类：深棕色  尺码：均码</div>
								</div>
								<div class="tdf1">1</div>
								<div class="tdf1">¥22.0</div>
								<div class="tdf2">
									<div class="ep2">活动8折优惠<br>优惠：¥4.0</div>
								</div>
								<div class="tdf1">¥18.0</div>
								<div class="tdf1">
									<div class="ep2">快递<br>¥0.00</div>
								</div>
							</div>
							<div class="item">
								<div class="tdf3">
									<a href="item_show.html"><div class="img"><img src="images/temp/M-007.jpg" alt="" class="cover"></div>
									<div class="ep2 c6">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div></a>
									<div class="attr ep">颜色分类：深棕色  尺码：均码</div>
								</div>
								<div class="tdf1">2</div>
								<div class="tdf1">¥20.0</div>
								<div class="tdf2">
									<div class="ep2">会员等级优惠<br>优惠：¥2.0</div>
								</div>
								<div class="tdf1">¥38.0</div>
								<div class="tdf1">
									<div class="ep2">快递<br>¥0.00</div>
								</div>
							</div>
							<div class="item">
								<div class="tdf3">
									<a href="item_show.html"><div class="img"><img src="images/temp/M-005.jpg" alt="" class="cover"></div>
									<div class="ep2 c6">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div></a>
									<div class="attr ep">颜色分类：深棕色  尺码：均码</div>
								</div>
								<div class="tdf1">1</div>
								<div class="tdf1">¥20.0</div>
								<div class="tdf2">
									无
								</div>
								<div class="tdf1">¥20.0</div>
								<div class="tdf1">
									<div class="ep2">快递<br>¥0.00</div>
								</div>
							</div>
						</div>
						<div class="price-total">
							<div class="fz12 c9">使用优惠券【满￥20.0减￥2.0】优惠￥2.0元<br>快递运费 ￥0.0</div>
							<div class="fz18 c6">实付款：<b class="cr">¥76.0</b></div>
							<div class="fz12 c9">（本单可获 <span class="c6">380</span> 积分）</div>
						</div>
						<hr>
						<div class="order-info">
							订单编号：<span class="c6">121324165465465465</span><br>
							支付宝交易号：<span class="c6">165454564564165164654654</span><br>
							收货地址：<span class="c6">福建省 福州市 鼓楼区 温泉街道 温泉街道五四路159号世界金龙大厦20层B北 福州喵喵喵网络，林设计，187***8122</span><br>
							成交时间：<span class="c6">2017-09-07 16:03:07</span>
						</div>
						<div class="modify_div clearfix">
							<form action="" class="user-setting__form" role="form">
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
										<button type="submit" class="but">确认已收货</button>
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
</body>
</html>