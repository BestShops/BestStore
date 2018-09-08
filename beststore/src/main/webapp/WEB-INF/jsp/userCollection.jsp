<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp"%>
	<div class="pull-right">
		<div class="user-content__box clearfix bgf">
			<div class="title">订单中心-我的收藏</div>
			<div class="collection-list__area clearfix">

				<c:forEach items="${list}" var="v">
					<c:if test="${v.GSTATUS!=1 || v.SSTATUS!=1 }">
						<div class="item-card" id="${v.FID }">
							<a href="" class="photo"> <img src="upload/${v.GPHOTOPIC }"
								alt="${v.GNAME }" class="cover">
								<div class="name">${v.GNAME }</div>
							</a>
							<div class="middle">
								<div style="color: gray; float: left">
									<s>￥${v.GNOWPRICE }</s>&nbsp;已下架
								</div>
								<div class="sale">
									<a onclick="remove(${v.FID })" style="cursor: pointer;">取消收藏</a>
								</div>
							</div>
						</div>
					</c:if>
					<c:if test="${v.GSTATUS==1 && v.SSTATUS==1 }">
						<div class="item-card" id="${v.FID }">
							<a href="goodsShowPage.todo?gid=${v.GID }" class="photo"> <img
								src="upload/${v.GPHOTOPIC }" alt="${v.GNAME }" class="cover">
								<div class="name">${v.GNAME }</div>
							</a>
							<div class="middle">
								<div class="price">
									<small>￥</small>${v.GNOWPRICE }</div>
								<div class="sale">
									<a onclick="remove(${v.FID })" style="cursor: pointer;">取消收藏</a>
								</div>
							</div>
						</div>
					</c:if>

				</c:forEach>

			</div>
			<div class="page text-right clearfix">
				<mt:page href="userCollectionPage.do" total="${total }"
					rows="${rows }" />
			</div>
		</div>
	</div>
	<script>
			function remove(fid){
				$.post("removeFavorite.do",{
					fid:fid
				},function(data){
					if (data == "OK") {
						$.message("取消收藏成功！");
						var t1=window.setTimeout(refreshCount, 1000 * 2);
					    function refreshCount() {
					    	window.location.href = "userCollectionPage.do";
					    }
					} else {
						$.message({
	                        message:data,
	                        type:'error'
	                    });
					}
				});
			}
	</script>

	</section>
	</div>
<%@ include file="rightMenu.jsp"%>
<%@ include file="bottom.jsp"%>
</body>