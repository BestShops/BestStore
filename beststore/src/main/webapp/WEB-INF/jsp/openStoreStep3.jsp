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
							<div class="step-flow__line step-flow__li_done">
							  <div class="step-flow__process"></div>
							</div>
							<div class="step-flow__li step-flow__li_done">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p class="step-flow__title-top">完成</p>
							</div>
						</div>
					</div>
					<div class="modify-success__box text-center">
						<div class="icon b-r50"><i class="iconfont icon-checked cf fz24"></i></div>
						<div class="text c6">开店成功！</div>
						<a href="storeManagePage.do" class="btn"><span id="sec">3</span> 秒后跳转至店铺管理页面，如果浏览器未跳转请点击这里</a>
					</div>
					<script>
						$(document).ready(function(){
							var time = 3;
							window.setInterval(function(){
								$('#sec').html(time--);
								if (time < 0) {window.location.href = 'storeManagePage.do'}
							}, 1000);
						});
					</script>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>