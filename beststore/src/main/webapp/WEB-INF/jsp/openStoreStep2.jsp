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
					<div class="title">开店流程-开店步骤</div>
					<div class="step-flow-box">
						<div class="step-flow__bd">
							<div class="step-flow__li step-flow__li_done">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p class="step-flow__title-top">阅读条款</p>
							</div>
							<div class="step-flow__line step-flow__li_done">
							  <div class="step-flow__process"></div>
							</div>
							<div class="step-flow__li step-flow__li_done">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p  class="step-flow__title-top">店铺信息</p>
							</div>
							<div class="step-flow__line step-flow__line_ing">
							  <div class="step-flow__process"></div>
							</div>
							<div class="step-flow__li">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p class="step-flow__title-top">完成</p>
							</div>
						</div>
					</div>
					<form action="openStoreStep3Page.do" class="user-setting__form" role="form">
						<div class="form-group">
							<c:if test="${requestScope.errorStore!=null}">
								<input class="form-control focus" name="sname" required maxlength="11" autocomplete="off" type="text" value="${requestScope.errorStore.sname}">
							</c:if>
							<c:if test="${requestScope.errorStore==null}">
								<input class="form-control" name="sname" required maxlength="11" autocomplete="off" type="text">
							</c:if>
							<span class="tip-text">店铺名</span>
							<span class="error_tip" style="color:red;">${requestScope.error1}</span>
						</div>
						<div class="form-group">
							<c:if test="${requestScope.errorStore!=null}">
								<input class="form-control focus" name="sdesc" required maxlength="50" autocomplete="off" type="text" value="${requestScope.errorStore.sdesc}">
							</c:if>
							<c:if test="${requestScope.errorStore==null}">
								<input class="form-control" name="sdesc" required maxlength="50" autocomplete="off" type="text">
							</c:if>
							<span class="tip-text">店铺描述</span>
							<span class="error_tip" style="color:red;">${requestScope.error2}</span>
						</div>
						<div class="user-form-group tags-box">
							<button type="submit" class="btn ">提交</button>
						</div>
						<script src="js/login.js"></script>
						<script>
							$(document).ready(function(){
								$('.form-control').on('blur focus',function() {
									$(this).addClass('focus')
									if ($(this).val() == ''){$(this).removeClass('focus')}
								});
							});
						</script>
					</form>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>