<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">开店流程-开店步骤</div>
					<div class="modify_div">
						<div class="clearfix">
							<a href="openStoreStep1Page.do" role="button" class="but">创建个人店铺</a>
							<a href="userInfoPage.do" role="button" class="but">去完善信息</a>
						</div>
						<div class="help-block">
						<c:if test="${requestScope.error!=null && requestScope.error!=''}">
							<span style="color:red">${requestScope.error}</span>
						</c:if>
						<c:if test="${requestScope.error==null || requestScope.error==''}">
							实名认证的用户才可以注册店铺哦！
						</c:if>
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