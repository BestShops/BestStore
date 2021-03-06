<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="right-nav">
	<ul class="r-with-gotop">
		<li class="r-toolbar-item"><a href="userInfoPage.do"
			class="r-item-hd"> <i class="iconfont icon-user"></i>
				<div class="r-tip__box">
					<span class="r-tip-text">用户中心</span>
				</div>
		</a></li>
		<li class="r-toolbar-item"><a href="shopCartPage.do"
			class="r-item-hd"> <i class="iconfont icon-cart" data-badge="${sessionScope.cartCount }"></i>
				<div class="r-tip__box">
					<span class="r-tip-text">购物车</span>
				</div>
		</a></li>
		<li class="r-toolbar-item"><a href="userCollectionPage.do"
			class="r-item-hd"> <i class="iconfont icon-aixin"></i>
				<div class="r-tip__box">
					<span class="r-tip-text">我的收藏</span>
				</div>
		</a></li>
		<li class="r-toolbar-item"><a href="" class="r-item-hd"> <i
				class="iconfont icon-liaotian"></i>
				<div class="r-tip__box">
					<span class="r-tip-text">联系客服</span>
				</div>
		</a></li>
		<li class="r-toolbar-item"><a href=""
			class="r-item-hd"> <i class="iconfont icon-liuyan"></i>
				<div class="r-tip__box">
					<span class="r-tip-text">商品反馈</span>
				</div>
		</a></li>
		<li class="r-toolbar-item to-top"><i class="iconfont icon-top"></i>
			<div class="r-tip__box">
				<span class="r-tip-text">返回顶部</span>
			</div></li>
	</ul>
	<script>
			$(document).ready(function(){ $('.to-top').toTop({position:false}) });
	</script>
</div>
