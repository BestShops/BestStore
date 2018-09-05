<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="mt"%>
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
							<c:if test="${typeTid==null }">
								<a href="goodsQueryPage.todo"><li class="active">全部分类</li></a>
							</c:if>
							<c:if test="${typeTid!=null }">
								<a href="goodsQueryPage.todo"><li>全部分类</li></a>
							</c:if>
							<c:forEach items="${firstList }" var="c">
								<c:if test="${typeTid==c.tid }">
									<a href="goodsQueryPage.todo?tid=${c.tid }" onclick="clickName()"><li class="active">${c.tpriname }</li></a>
								</c:if>
								<c:if test="${typeTid!=c.tid }">
									<a href="goodsQueryPage.todo?tid=${c.tid }" onclick="clickName()"><li>${c.tpriname }</li></a>
								</c:if>
							</c:forEach>
						</ul>
						<!-- 已选选项 -->
						<div class="ul_filter">
							<c:if test="${typeTname2!=null }">
								<span id="spanIndex"+v.index class="pull-left">
									分类:${typeTname2 }<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&price1=${price1 }&price2=${price2}" class="close">&times;</a>
								</span>
							</c:if>
							<c:if test="${priceSize!=1 }">
								<c:if test="${priceSize!=200 && (priceSize==0 || priceSize==50 ||priceSize==100 || priceSize==150) }">
									<span id="spanIndex"+v.index class="pull-left">
									价格:${priceSize }-${priceSize+50 }<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }" class="close">&times;</a>
									</span>
								</c:if>
								<c:if test="${priceSize==200 }">
									<span id="spanIndex"+v.index class="pull-left">
									价格:${priceSize }以上<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }" class="close">&times;</a>
									</span>
								</c:if>
							</c:if>
						</div>
						<a class="reset pull-right" href="goodsQueryPage.todo">重置</a>
					</div>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">分类：</span>
					<ul class="clearfix">
						<c:if test="${typeTname2==null }">
							<a href="goodsQueryPage.todo?tid=${typeTid }"><li class="active">全部</li></a>
						</c:if>
						<c:if test="${typeTname2!=null }">
							<a href="goodsQueryPage.todo?tid=${typeTid }"><li>全部</li></a>
						</c:if>
						<c:if test="${typeTid!=null }">
							<c:forEach items="${typeInfo2 }" var="c">
								<c:if test="${c.tname2==typeTname2 }">
									<a href="goodsQueryPage.todo?tid=${typeTid }&tid2=${c.tid2 }"><li class="active">${c.tname2 }</li></a>
								</c:if>
								<c:if test="${c.tname2!=typeTname2 }">
									<a href="goodsQueryPage.todo?tid=${typeTid }&tid2=${c.tid2 }"><li>${c.tname2 }</li></a>
								</c:if>
							</c:forEach>
						</c:if>
					</ul>
				</div>
				<div class="filter-prop-item">
					<span class="filter-prop-title">价格：</span>
					<ul class="clearfix">
					<c:if test="${priceSize==1 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }"><li class="active">全部</li></a>
					</c:if>
					<c:if test="${priceSize!=1 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }"><li>全部</li></a>
					</c:if>
					<c:if test="${priceSize==0 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=0&price2=50"><li class="active">0-50</li></a>
					</c:if>	
					<c:if test="${priceSize!=0 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=0&price2=50"><li>0-50</li></a>
					</c:if>	
					<c:if test="${priceSize==50 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=50&price2=100"><li class="active">50-100</li></a>
					</c:if>	
					<c:if test="${priceSize!=50 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=50&price2=100"><li>50-100</li></a>
					</c:if>		
					<c:if test="${priceSize==100 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=100&price2=150"><li class="active">100-150</li></a>
					</c:if>	
					<c:if test="${priceSize!=100 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=100&price2=150"><li>100-150</li></a>
					</c:if>
					<c:if test="${priceSize==150 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=150&price2=200"><li class="active">150-200</li></a>
					</c:if>	
					<c:if test="${priceSize!=150 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=150&price2=200"><li>150-200</li></a>
					</c:if>
					<c:if test="${priceSize==200 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=200"><li class="active">200以上</li></a>
					</c:if>	
					<c:if test="${priceSize!=200 }">
						<a href="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=200"><li>200以上</li></a>
					</c:if>
					<form method="post" action="goodsQueryPage.todo?page=${page }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }" class="price-order">
						<input name="price1" type="number" min="0" value="${price1 }">
						<span class="cc">-</span>
						<input name="price2" type="number" min="0" value="${price2 }">
						<input type="submit" value="确定">
					</form>	
					</ul>
				</div>
			</div>
			<div class="sort-box bgf5">
				<div class="sort-text">排序：</div>
				<a href=""><div class="sort-text">销量 <i class="iconfont icon-sortDown"></i></div></a>
				<a href=""><div class="sort-text">评价 <i class="iconfont icon-sortUp"></i></div></a>
				<a href=""><div class="sort-text">价格 <i class="iconfont"></i></div></a>
				<div class="sort-total pull-right">共${total }个商品</div>
			</div>
		</section>
		<section class="item-show__div clearfix">
			<div class="pull-left">
				<div class="item-list__area clearfix">
				<c:forEach items="${goodsQueryList}" var="c">
					<div class="item-card">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="photo">
							<img src="${basePath }/upload/${c.GPHOTOPIC }" class="cover">
							<div class="name">${c.GNAME }</div>
						</a>
						<div class="middle">
							<div class="price"><small>￥</small>${c.GNOWPRICE }</div>
							<div class="sale"><a href="">加入购物车</a></div>
						</div>
						<div class="buttom">
							<div>店铺 <b>${c.sname }</b></div>
							<c:if test="${c.num!=null }">
								<div>销量 <b>${c.num }</b></div>
							</c:if>
							<c:if test="${c.num==null }">
								<div>销量 <b>0</b></div>
							</c:if>
							<c:if test="${c.count!=null }">
								<div>评论 <b>${c.count }</b></div>
							</c:if>
							<c:if test="${c.count==null }">
								<div>评论 <b>0</b></div>
							</c:if>
						</div>
					</div>
				</c:forEach>	
				</div>
				
				<div class="page text-right clearfix">
					<a href="goodsQueryPage.todo?page=${page-1 }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=${price1}&price2=${price2}">上一页</a>
					<mt:page href="goodsQueryPage.todo" total="${total }" rows="${rows }"/>
					<a href="goodsQueryPage.todo?page=${page+1 }&rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=${price1}&price2=${price2}">下一页</a>
					<form method="post" action="goodsQueryPage.todo?rows=${rows}&tid=${typeTid }&tid2=${typeTid2 }&price1=${price1}&price2=${price2}" class="page-order">
						到第
						<input type="number" name="page" min="1" max="${totalPage }">
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
					<c:forEach items="${goodsQueryList}" var="c" begin="0" end="9">
						<a href="goodsShowPage.todo?gid=${c.GID }" class="picked-item"><img src="${basePath }/upload/${c.GPHOTOPIC }" class="cover"><span class="look_price">¥${c.GNOWPRICE }</span></a>
					</c:forEach>	
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>