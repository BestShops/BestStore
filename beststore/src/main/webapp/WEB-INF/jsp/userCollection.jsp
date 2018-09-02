<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					
					<c:forEach items="${list}" var="v">
						<c:if test="${v.FSTATUS == 1 }">
						<div class="item-card" id="${v.FID }">
							<a href="goodsShowPage.do?gid=${v.GID }" class="photo">
								<img src="upload/${v.GPHOTOPIC }" alt="${v.GNAME }" class="cover">
								<div class="name">${v.GNAME }</div>
							</a>
							<div class="middle">
								<div class="price"><small>￥</small>${v.GNOWPRICE }</div>
								<div class="sale"><a onclick="remove(${v.FID })" >取消收藏</a></div>
							</div>
						</div>
						</c:if>
						
					</c:forEach>
						
					</div>
					<div class="page text-right clearfix">
						<!-- <a class="disabled">上一页</a> -->
						<!-- <a class="select">1</a>
						<a href="">2</a>
						<a href="">3</a> -->
						
							<mt:page href="userCollectionPage.do" total="${total }" rows="${rows }"/>
						
						<!-- <a class="" href="">下一页</a>
						<a class="disabled">1/3页</a> -->
					</div>
				</div>
			</div>
			<script>
				function remove(fid){
					$.post("removeFavorite.do",{
						fid:fid
					},function(data){
						if (data == "OK") {
							alert("取消收藏成功！");
							window.location.href = "userCollectionPage.do";
						} else {
							alert(data);
						}
					});
				}
				</script>
			
			
			
			
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>