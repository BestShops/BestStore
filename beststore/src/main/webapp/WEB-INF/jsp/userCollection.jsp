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
					<div class="title">订单中心-我的收藏</div>
					<div class="collection-list__area clearfix">
					
					<c:forEach items="${list}" var="list">
						<div class="item-card">
							<a href="goodsShowPage.do" class="photo">
								<img src="images/temp/M-001.jpg" alt="锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款" class="cover">
								<div class="name">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div>
							</a>
							<div class="middle">
								<div class="price"><small>￥</small>18.0</div>
								<div class="sale"><a href="">取消收藏</a></div>
							</div>
						</div>
					</c:forEach>
						
					</div>
					<div class="page text-right clearfix">
						<a class="disabled">上一页</a>
						<a class="select">1</a>
						<a href="">2</a>
						<a href="">3</a>
						<a class="" href="">下一页</a>
						<a class="disabled">1/3页</a>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>