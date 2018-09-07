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
					<div class="title">账户信息-修改登陆密码</div>
					<div class="step-flow-box">
						<div class="step-flow__bd">
							<div class="step-flow__li step-flow__li_done">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p class="step-flow__title-top">输入旧密码</p>
							</div>
							<div class="step-flow__line step-flow__li_done">
							  <div class="step-flow__process"></div>
							</div>
							<div class="step-flow__li step-flow__li_done">
							  <div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
							  <p  class="step-flow__title-top">重置登陆密码</p>
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
					<form class="user-setting__form" role="form">
						<div class="form-group">
							<input class="form-control" id="pwd" name="pwd" required="" maxlength="11" autocomplete="off" type="password">
							<span class="tip-text">新的密码</span>
							<span class="see-pwd pwd-toggle" title="显示密码"><i class="glyphicon glyphicon-eye-open"></i></span>
							<span class="error_tip"></span>
						</div>
						<div class="form-group">
						<div class="form-group">
							<input class="form-control" id="repwd" name="repwd" required="" maxlength="11" autocomplete="off" type="password">
							<span class="tip-text">再次确认新的密码</span>
							<span class="see-pwd pwd-toggle" title="显示密码"><i class="glyphicon glyphicon-eye-open"></i></span>
							<span class="error_tip"></span>
						</div>
						<!-- 错误信息 -->
						<div class="form-group">
							<div class="error_msg" id="error_msg">
								<!-- 错误信息 范例html
								<div class="alert alert-warning alert-dismissible fade in" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<strong>密码错误</strong> 请重新输入密码
								</div>
								 -->
							</div>
						</div>
						</div>
						<div class="user-form-group tags-box">
							<button type="button" id="step1_submit" class="btn ">提交</button>
						</div>
						<script src="js/login.js"></script>
						<script>
							$(document).ready(function(){
								$('.form-control').on('blur focus',function() {
									$(this).addClass('focus')
									if ($(this).val() == ''){$(this).removeClass('focus')}
								});
								
								// 修改新密码
								$('#step1_submit').click(function() {
									var pwd = $("#pwd").val();
									var repwd = $("#repwd").val();
									if (pwd == repwd && pwd != null && repwd != null) {
										$.post("changePwd.do",{
											hpwd:repwd
										},function(data){
											if (data == "OK") {
												window.location.href = "userModifyPwdStep3.do";
											} else {
												$('#error_msg').html(msgtemp(data, 'alert-warning'));
											}
										});
									} else {
										$('#error_msg').html(msgtemp('两次输入密码不一致', 'alert-warning'));
										return;
									}
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