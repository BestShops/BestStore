<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
</head>
<body>
	<%@ include file="header1.jsp"%>
	<!-- 顶部轮播 -->
	<div class="swiper-container banner-box">
		<div class="swiper-wrapper">
			<c:forEach items="${newGoods }" var="c">
				<div class="swiper-slide">
					<a href="goodsShowPage.todo?gid=${c.GID }"><img
						src="${basePath }/upload/${c.GPHOTOPIC}" class="cover"></a>
				</div>
			</c:forEach>
		</div>
		<div class="swiper-pagination"></div>
	</div>
	<!-- 首页楼层导航 -->
	<nav class="floor-nav visible-lg-block">
		<span class="scroll-nav active">爆款推荐</span>
		<c:forEach items="${firstList }" var="c">
			<span class="scroll-nav">${c.tpriname }</span>
		</c:forEach>
	</nav>
	<!-- 楼层内容 -->
	<div class="content inner" style="margin-bottom: 40px;">
		<section class="scroll-floor floor-1 clearfix">
			<div class="pull-left">
				<div class="floor-title">
					<i class="iconfont icon-tuijian fz16"></i> 爆款推荐 <a href=""
						class="more"><i class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<a class="left-img hot-img" href="goodsQueryPage.todo"> <img
						src="images/floor_1.jpg" alt="" class="cover">
					</a>
					<div class="right-box hot-box">
						<c:forEach items="${hotGoods }" var="c">
							<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
								<div class="item-img hot-img">
									<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
								</div>
								<div class="price clearfix">
									<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
										style="margin-right: 9px; font-size: 16px; float: right;"
										class="fz16 c9">${c.GLASTPRICE }</s>
								</div>
								<div class="name ep">${c.GNAME }</div>
							</a>
						</c:forEach>
						<c:forEach items="${reduceGoods }" var="c">
							<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
								<div class="item-img hot-img">
									<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
								</div>
								<div class="price clearfix">
									<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
										style="margin-right: 9px; font-size: 16px; float: right;"
										class="fz16 c9">${c.GLASTPRICE }</s>
								</div>
								<div class="name ep">${c.GNAME }</div>
							</a>
						</c:forEach>

					</div>
				</div>
			</div>
			<div class="pull-right">
				<div class="floor-title">
					<i class="iconfont icon-horn fz16"></i> 平台公告 <a
						href="udai_notice.html" class="more"><i
						class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<div class="notice-box bgf5">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<a class="swiper-slide ep" href="udai_notice.html">【公告】U袋网平台已上线，您还在等什么呢？是吧~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【资讯】P站服务器爆炸啦。国内86%地区IP被限制~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【公告】六趣公司9月底将彻底关闭66RPG论坛~</a>
								<a class="swiper-slide ep" href="udai_notice.html">【资讯】Project1站将接盘66RPG，新域名rpg.blue</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】央行决定对普惠金融实施定向降准政策
									最高下调1.5个百分点</a> <a class="swiper-slide ep" href="udai_notice.html">【新闻】那些年看的剧里十大虐心情节，谁戳中了你的泪点？</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】惨遭魔改？派拉蒙将拍真人版《你的名字。》</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】外媒称中国限制日本跟团游?旅行社:仍正常发团</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】广电总局：电台电视台应在重要法定节日播放国歌</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】高校性教育课成"爆款"
									老师都讲哪些"大尺度"内容?</a> <a class="swiper-slide ep"
									href="udai_notice.html">【新闻】vivo X20全面屏手机首销火爆 陈赫欧豪现身助力</a> <a
									class="swiper-slide ep" href="udai_notice.html">【新闻】“拒绝妻子手术”现场医生：病人丈夫被冤枉了</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】游客们注意了！国庆你要避开十大坑</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】他卖了1.5万双假货，现在面临10年牢狱！</a>
								<a class="swiper-slide ep" href="udai_notice.html">【新闻】10月1日起国家再次提高部分优抚对象抚恤补助标准
									烈属抚恤每年23130元</a>
							</div>
						</div>
					</div>
					<div class="buts-box bgf5">
						<div class="but-div">
							<a href="userOrderPage.do"> <i class="but-icon"></i>
								<p>订单查看</p>
							</a>
						</div>
						<div class="but-div">
							<a href="goodsQueryPage.todo"> <i class="but-icon"></i>
								<p>热卖专区</p>
							</a>
						</div>
						<div class="but-div">
							<a href="matchPage.do"> <i class="but-icon"></i>
								<p>智能匹配</p>
							</a>
						</div>
						<div class="but-div">
							<a href="goodsQueryPage.todo"> <i class="but-icon"></i>
								<p>折扣专区</p>
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-2">
			<div class="floor-title">
				<i class="iconfont icon-skirt fz16"></i> ${firstList.get(0).tpriname }
				<div class="case-list fz0 pull-right">
					<c:forEach items="${secondType }" varStatus="abc" var="c">
						<c:forEach items="${thirdList }" var="vv">
							<c:if test="${(secondType.get(abc.index).tname2==vv.name2) && firstList.get(0).tpriname==vv.name1 }">
								<a href="">${vv.name3 }</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="goodsQueryPage.todo?tid=${firstList.get(0).tid }"> <img
					src="images/floor_2.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<c:forEach items="${goodsIndex }" var="c">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
							<div class="item-img hot-img">
								<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
									style="margin-right: 9px; font-size: 16px; float: right;"
									class="fz16 c9">${c.GLASTPRICE }</s>
							</div>
							<div class="name ep">${c.GNAME }</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-3">
			<div class="floor-title">
				<i class="iconfont icon-fushi fz16"></i> ${firstList.get(1).tpriname }
				<div class="case-list fz0 pull-right">
					<c:forEach items="${secondType1 }" varStatus="abc" var="c">
						<c:forEach items="${thirdList }" var="vv">
							<c:if test="${(secondType1.get(abc.index).tname2==vv.name2) && firstList.get(1).tpriname==vv.name1 }">
								<a href="">${vv.name3 }</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="goodsQueryPage.todo?tid=${firstList.get(1).tid }"> <img
					src="images/floor_3.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<c:forEach items="${goodsIndex1 }" var="c">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
							<div class="item-img hot-img">
								<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
									style="margin-right: 9px; font-size: 16px; float: right;"
									class="fz16 c9">${c.GLASTPRICE }</s>
							</div>
							<div class="name ep">${c.GNAME }</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-5">
			<div class="floor-title">
				<i class="iconfont icon-bao fz16"></i> ${firstList.get(2).tpriname }
				<div class="case-list fz0 pull-right">
					<c:forEach items="${secondType2 }" varStatus="abc" var="c">
						<c:forEach items="${thirdList }" var="vv">
							<c:if test="${(secondType2.get(abc.index).tname2==vv.name2) && firstList.get(2).tpriname==vv.name1 }">
								<a href="">${vv.name3 }</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="goodsQueryPage.todo?tid=${firstList.get(2).tid }"> <img
					src="images/floor_5.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<c:forEach items="${goodsIndex2 }" var="c">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
							<div class="item-img hot-img">
								<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
									style="margin-right: 9px; font-size: 16px; float: right;"
									class="fz16 c9">${c.GLASTPRICE }</s>
							</div>
							<div class="name ep">${c.GNAME }</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-4">
			<div class="floor-title">
				<i class="iconfont icon-kid fz16"></i> ${firstList.get(3).tpriname }
				<div class="case-list fz0 pull-right">
					<c:forEach items="${secondType3 }" varStatus="abc" var="c">
						<c:forEach items="${thirdList }" var="vv">
							<c:if test="${(secondType3.get(abc.index).tname2==vv.name2) && firstList.get(3).tpriname==vv.name1 }">
								<a href="">${vv.name3 }</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="goodsQueryPage.todo?tid=${firstList.get(3).tid }"> <img
					src="images/floor_4.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<c:forEach items="${goodsIndex3 }" var="c">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
							<div class="item-img hot-img">
								<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
									style="margin-right: 9px; font-size: 16px; float: right;"
									class="fz16 c9">${c.GLASTPRICE }</s>
							</div>
							<div class="name ep">${c.GNAME }</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-6">
			<div class="floor-title">
				<i class="iconfont icon-shoes fz16"></i>${firstList.get(4).tpriname }
				<div class="case-list fz0 pull-right">
					<c:forEach items="${secondType4 }" varStatus="abc" var="c">
						<c:forEach items="${thirdList }" var="vv">
							<c:if test="${(secondType4.get(abc.index).tname2==vv.name2) && firstList.get(4).tpriname==vv.name1 }">
								<a href="">${vv.name3 }</a>
							</c:if>
						</c:forEach>
					</c:forEach>
				</div>
			</div>
			<div class="con-box">
				<a class="left-img hot-img" href="goodsQueryPage.todo?tid=${firstList.get(4).tid }"> <img
					src="images/floor_6.jpg" alt="" class="cover">
				</a>
				<div class="right-box">
					<c:forEach items="${goodsIndex4 }" var="c">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="floor-item">
							<div class="item-img hot-img">
								<img src="${basePath }/upload/${c.GPHOTOPIC}" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥${c.GNOWPRICE }</span> <s
									style="margin-right: 9px; font-size: 16px; float: right;"
									class="fz16 c9">${c.GLASTPRICE }</s>
							</div>
							<div class="name ep">${c.GNAME }</div>
						</a>
					</c:forEach>
				</div>
			</div>
		</section>
	</div>
	<script>
		$(document).ready(function() {
			// 顶部banner轮播
			var banner_swiper = new Swiper('.banner-box', {
				autoplayDisableOnInteraction : false,
				pagination : '.banner-box .swiper-pagination',
				paginationClickable : true,
				autoplay : 5000,
			});
			// 新闻列表滚动
			var notice_swiper = new Swiper('.notice-box .swiper-container', {
				paginationClickable : true,
				mousewheelControl : true,
				direction : 'vertical',
				slidesPerView : 10,
				autoplay : 2e3,
			});
			// 楼层导航自动 active
			$.scrollFloor();
			// 页面下拉固定楼层导航
			$('.floor-nav').smartFloat();
			$('.to-top').toTop({
				position : false
			});
		});
	</script>
	<!-- 右侧菜单 -->
	<%@ include file="rightMenu.jsp"%>
	<%@ include file="bottom.jsp"%>
</body>
</html>
