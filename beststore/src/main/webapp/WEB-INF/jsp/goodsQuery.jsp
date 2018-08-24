<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header1_similar.jsp" %>
	<div class="content inner">
		<section class="filter-section clearfix">
			<ol class="breadcrumb">
				<li><a href="index.html">首页</a></li>
				<li class="active">商品筛选</li>
			</ol>
			<div class="filter-box">
				<div class="all-filter">
					<div class="filter-value">
						<div class="filter-title">选择商品分类 <i class="iconfont icon-down"></i></div>
						<!-- 全部大分类 -->
						<ul class="catelist-card">
							<a href=""><li class="active">全部分类</li></a>
							<a href=""><li>女装</li></a>
							<a href=""><li>男装</li></a>
							<a href=""><li>包包</li></a>
							<a href=""><li>童装</li></a>
							<a href=""><li>鞋靴</li></a>
						</ul>
						<!-- 已选选项 -->
						<div class="ul_filter">
							<span class="pull-left">
								颜色：红色 <a href="javascript:;" class="close">&times;</a>
							</span>
							<span class="pull-left">
								尺寸：XXL <a href="javascript:;" class="close">&times;</a>
							</span>
						</div>
						<a class="reset pull-right" href="item_category.html">重置</a>
					</div>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">分类：</span>
					<ul class="clearfix">
						<a href=""><li class="active">全部</li></a>
						<a href=""><li>上装</li></a>
						<a href=""><li>下装</li></a>
						<a href=""><li>裙装</li></a>
						<a href=""><li>内衣</li></a>
					</ul>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">颜色：</span>
					<ul class="clearfix">
						<a href=""><li class="active">全部</li></a>
						<a href=""><li>红色</li></a>
						<a href=""><li>粉红</li></a>
						<a href=""><li>蓝色</li></a>
						<a href=""><li>白色</li></a>
					</ul>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">尺寸：</span>
					<ul class="clearfix">
						<a href=""><li class="active">全部</li></a>
						<a href=""><li>L</li></a>
						<a href=""><li>M</li></a>
						<a href=""><li>S</li></a>
						<a href=""><li>X</li></a>
						<a href=""><li>XL</li></a>
						<a href=""><li>XXL</li></a>
						<a href=""><li>XXXL</li></a>
					</ul>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">价格：</span>
					<ul class="clearfix">
						<a href=""><li class="active">全部</li></a>
						<a href=""><li>0-20</li></a>
						<a href=""><li>20-40</li></a>
						<a href=""><li>40-80</li></a>
						<a href=""><li>80-100</li></a>
						<a href=""><li>100-150</li></a>
						<a href=""><li>150以上</li></a>
						<form class="price-order">
							<input type="text">
							<span class="cc">-</span>
							<input type="text">
							<input type="button" value="确定">
						</form>
					</ul>
				</div>
			</div>
			<div class="sort-box bgf5">
				<div class="sort-text">排序：</div>
				<a href=""><div class="sort-text">销量 <i class="iconfont icon-sortDown"></i></div></a>
				<a href=""><div class="sort-text">评价 <i class="iconfont icon-sortUp"></i></div></a>
				<a href=""><div class="sort-text">价格 <i class="iconfont"></i></div></a>
				<div class="sort-total pull-right">共1688个商品</div>
			</div>
		</section>
		<section class="item-show__div clearfix">
			<div class="pull-left">
				<div class="item-list__area clearfix">
					<div class="item-card">
						<a href="goodsShowPage.do" class="photo">
							<img src="images/temp/M-001.jpg" alt="锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款" class="cover">
							<div class="name">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-002.jpg" alt="霜天月明 原创日常汉服男云纹绣花单大氅传统礼服外套" class="cover">
							<div class="name">霜天月明 原创日常汉服男云纹绣花单大氅传统礼服外套</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-003.jpg" alt="陇上乐原创传统日常汉服男绣花交领cp情侣非古装春秋" class="cover">
							<div class="name">陇上乐原创传统日常汉服男绣花交领cp情侣非古装春秋</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-004.jpg" alt="霜天月明 原创传统日常汉服男绣花交领衣裳cp春装单品" class="cover">
							<div class="name">霜天月明 原创传统日常汉服男绣花交领衣裳cp春装单品</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-005.jpg" alt="琅轩日常汉服男龙纹绣花短褙子气质传统外套春秋非古装" class="cover">
							<div class="name">琅轩日常汉服男龙纹绣花短褙子气质传统外套春秋非古装</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-006.jpg" alt="峥嵘 原创设计传统日常汉服男绣花唐制圆领袍春秋非古装" class="cover">
							<div class="name">峥嵘 原创设计传统日常汉服男绣花唐制圆领袍春秋非古装</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-007.jpg" alt="陇上乐原创传统日常汉服男绣花单大氅大袖衫cp情侣春秋" class="cover">
							<div class="name">陇上乐原创传统日常汉服男绣花单大氅大袖衫cp情侣春秋</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-008.jpg" alt="擎苍原创传统绣花交领衣裳春装单品日常汉服男非 古装" class="cover">
							<div class="name">擎苍原创传统绣花交领衣裳春装单品日常汉服男非 古装</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-009.jpg" alt="英华原创品牌日常汉服弓道服绣花情侣cp装男款交领衣裳" class="cover">
							<div class="name">英华原创品牌日常汉服弓道服绣花情侣cp装男款交领衣裳</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-010.jpg" alt="怀楚原创品牌汉服男绣花日常长中长半臂短打裋褐上衣春夏" class="cover">
							<div class="name">怀楚原创品牌汉服男绣花日常长中长半臂短打裋褐上衣春夏</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-011.jpg" alt="舍竹改良汉服日常汉元素中国民族风男款绣花交领上衣春秋" class="cover">
							<div class="name">舍竹改良汉服日常汉元素中国民族风男款绣花交领上衣春秋</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-012.jpg" alt="乌鹭原创设计日常汉服情侣cp装男款绣花半臂交领春秋" class="cover">
							<div class="name">乌鹭原创设计日常汉服情侣cp装男款绣花半臂交领春秋</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-013.jpg" alt="锦瑟 原创日常汉服男装传统cp情侣装绣花对襟半臂夏款" class="cover">
							<div class="name">锦瑟 原创日常汉服男装传统cp情侣装绣花对襟半臂夏款</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-014.jpg" alt="霜天月明新款传统日常汉服男绣花半臂单上衣cp情侣夏装" class="cover">
							<div class="name">霜天月明新款传统日常汉服男绣花半臂单上衣cp情侣夏装</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-015.jpg" alt="琅轩 原创品牌日常汉服男棉麻纯色交领上衣春夏装单品" class="cover">
							<div class="name">琅轩 原创品牌日常汉服男棉麻纯色交领上衣春夏装单品</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-016.jpg" alt="青鸾原创传统日常汉服男装绣花上衣下裳大氅单品非" class="cover">
							<div class="name">青鸾原创传统日常汉服男装绣花上衣下裳大氅单品非</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-017.jpg" alt="墨染 原创设计改良汉服男竹节棉日常松紧抽绳单裤子百搭" class="cover">
							<div class="name">墨染 原创设计改良汉服男竹节棉日常松紧抽绳单裤子百搭</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-018.jpg" alt="飞廉原创品牌传统日常绣花汉服情侣cp装男款交领衣裳" class="cover">
							<div class="name">飞廉原创品牌传统日常绣花汉服情侣cp装男款交领衣裳</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-019.jpg" alt="和如原创设计汉服男女cp情侣装绣花交领襦裙披风大氅" class="cover">
							<div class="name">和如原创设计汉服男女cp情侣装绣花交领襦裙披风大氅</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
					<div class="item-card">
						<a href="item_show.html" class="photo">
							<img src="images/temp/M-020.jpg" alt="白鹭行原创传统日常汉服男装绣花短褙子百搭外套单品春夏" class="cover">
							<div class="name">白鹭行原创传统日常汉服男装绣花短褙子百搭外套单品春夏</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>18.0</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>销量 <b>666</b></div>
							<div>人气 <b>888</b></div>
							<div>评论 <b>1688</b></div>
						</div>
					</div>
				</div>
				<!-- 分页 -->
				<div class="page text-right clearfix">
					<a class="disabled">上一页</a>
					<a class="select">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>
					<a class="" href="">下一页</a>
					<a class="disabled">1/5页</a>
					<form action="" class="page-order">
						到第
						<input type="text" name="page">
						页
						<input class="sub" type="submit" value="确定">
					</form>
				</div>
			</div>
			<div class="pull-right">
				
				<div class="desc-segments__content">
					<div class="lace-title">
						<span class="c6">爆款推荐</span>
					</div>
					<div class="picked-box">
						<a href="" class="picked-item"><img src="images/temp/S-001.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-002.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-003.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-004.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-005.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-006.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-007.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-008.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-009.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
						<a href="" class="picked-item"><img src="images/temp/S-010.jpg" alt="" class="cover"><span class="look_price">¥134.99</span></a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>