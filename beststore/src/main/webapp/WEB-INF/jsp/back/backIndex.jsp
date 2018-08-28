<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Best Store后台管理系统</title>
<link type="text/css" rel="stylesheet" href="${basePath }/css/backLogin.css">
</head>
<body style="overflow: hidden">
	<div class="pagewrap">
		<div class="main">
			<div class="header"></div>
			<div class="content">
				<div class="con_left"></div>
				<div class="con_right">
					<div class="con_r_top">
						<a href="javascript:;" class="left"
							style="color: rgb(153, 153, 153); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(222, 222, 222);">关注我们</a>
						<a href="javascript:;" class="right"
							style="color: rgb(51, 51, 51); border-bottom-width: 2px; border-bottom-style: solid; border-bottom-color: rgb(46, 85, 142);">登录管理</a>
					</div>
					<ul>
						<li class="con_r_left" style="display: none;">
							<div class="erweima">
								<div class="qrcode">
									<div id="output" style="width: 100%; position: relative">
										<img src="${basePath }/images/backIndex/2weima.jpg" style="width: 174px; height: 174px">
									</div>
								</div>
							</div>
							<div style="height: 70px">
								<p>微信扫码 安全便捷</p>
							</div>
						</li>
						<li class="con_r_right" style="display: block;">
							<form name="form1" onsubmit="return false"
								autocomplete="off">
								<div class="user">
									<div>
										<span class="user-icon"></span> <input type="text" id="back_hname"
											placeholder="输入用户名/手机号/邮箱">
									</div>
									<div>
										<span class="mima-icon"></span> <input type="password" 
											id="back_pwd" placeholder="输入密码">
									</div>
									<div>
										<span class="yzmz-icon"></span> <input id="back_code" type="text"
											name="code" placeholder="验证码" 
											style="width: 150px;">
										<img style="cursor: pointer; margin-top: 0px;width:90px;margin-left: 20px;" onclick='src="verifyCode.do?d="+Math.random()'
											src="verifyCode.do">
									</div>
									<span id="errorMessage" style="color: red"></span>
								</div>
								<br>
								<input style="margin: 0 0 0 75pt; width: 250px; height: 44px; background: #2e558e; color: #fff; font-size: 1pc;" id="btn_Login" type="submit" value="登 录">
							</form>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="${basePath }/js/jquery.1.12.4.min.js"></script>
<script type="text/javascript" src="${basePath }/js/backLogin.js"></script>
</body>
</html>