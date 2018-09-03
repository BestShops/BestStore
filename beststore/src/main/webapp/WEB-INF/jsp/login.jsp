<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/iconfont.css">
	<link rel="stylesheet" href="css/global.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="css/login.css">
	<script src="js/jquery.1.12.4.min.js" charset="UTF-8"></script>
	<script src="js/bootstrap.min.js" charset="UTF-8"></script>
	<script src="js/jquery.form.js" charset="UTF-8"></script>
	<script src="js/global.js" charset="UTF-8"></script>
	<script src="js/login.js" charset="UTF-8"></script>
	<title>U袋网 - 登录 / 注册</title>
</head>
<body>
	<div class="public-head-layout container">
		<a class="logo" href="index"><img src="images/icons/logo.jpg" alt="U袋网" class="cover"></a>
	</div>
	<div style="background:url(images/login_bg.jpg) no-repeat center center; ">
		<div class="login-layout container">
			<div class="form-box login">
				<div class="tabs-nav">
					<h2>欢迎登录U袋网平台</h2>
				</div>
				<div class="tabs_container">
					<form class="tabs_form" action="" method="post" id="login_form">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								</div>
								<input class="form-control phone" name="phone" id="login_phone" required placeholder="用户名/手机号/邮箱" autocomplete="on" type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
								</div>
								<input class="form-control password" name="password" id="login_pwd" placeholder="请输入密码" autocomplete="off" type="password">
								<div class="input-group-addon pwd-toggle" title="显示密码"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></div>
							</div>
						</div>
						<div class="checkbox">
	                        <label>
	                        	<input checked="" id="login_checkbox" type="checkbox"><i></i> 30天内免登录
	                        </label>
	                        <a href="javascript:;" class="pull-right" id="resetpwd">忘记密码？</a>
	                    </div>
	                    <!-- 错误信息 -->
						<div class="form-group">
							<div class="error_msg" id="login_error">
								<!-- 错误信息 范例html
								<div class="alert alert-warning alert-dismissible fade in" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<strong>密码错误</strong> 请重新输入密码
								</div>
								 -->
							</div>
						</div>
	                    <button class="btn btn-large btn-primary btn-lg btn-block submit" id="login_submit" type="button">登录</button><br>
	                    <p class="text-center">没有账号？<a href="javascript:;" id="register">免费注册</a></p>
                    </form>
                </div>
			</div>
			<div class="form-box register">
  				<div class="tabs-nav">
  					<h2>欢迎注册<a href="javascript:;" class="pull-right fz16" id="reglogin">返回登录</a></h2>
  				</div>
  				<div class="tabs_container">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								</div>
								<input class="form-control phone" name="phone" id="register_phone" required placeholder="手机/邮箱" autocomplete="on" type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								</div>
								<input class="form-control phone" name="phone" id="register_name" required placeholder="用户名" autocomplete="on" type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<input class="form-control" name="smscode" id="register_sms" placeholder="输入验证码" type="text">
								<span class="input-group-btn">
									<button class="btn btn-primary getsms" id="code_submit" type="button" >发送验证码</button>
								</span>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
								</div>
								<input class="form-control password" name="password" id="register_pwd" placeholder="请输入密码" autocomplete="off" type="password">
								<div class="input-group-addon pwd-toggle" title="显示密码"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></div>
							</div>
						</div>
						<div class="checkbox">
	                        <label>
	                        	<input checked="" id="register_checkbox" type="checkbox"><i></i> 同意<a href="temp_article/udai_article3.html">U袋网用户协议</a>
	                        </label>
	                    </div>
	                    <!-- 错误信息 -->
						<div class="form-group">
							<div class="error_msg" id="register_error"></div>
						</div>
	                    <button class="btn btn-large btn-primary btn-lg btn-block submit" id="register_submit" type="button">注册</button>
                    <div class="tabs_div">
	                    <div class="success-box">
	                    	<div class="success-msg">
								<i class="success-icon"></i>
	                    		<p class="success-text">注册成功</p>
	                    	</div>
	                    </div>
	                    <div class="option-box">
	                    	<div class="buts-title">
	                    		现在您可以
	                    	</div>
	                    	<div class="buts-box">
	                    		<a role="button" href="index.html" class="btn btn-block btn-lg btn-default">继续访问商城</a>
								<a role="button" href="udai_welcome.html" class="btn btn-block btn-lg btn-info">登录会员中心</a>
	                    	</div>
	                    </div>
                    </div>
                </div>
			</div>
			<div class="form-box resetpwd">
  				<div class="tabs-nav clearfix">
  					<h2>找回密码<a href="javascript:;" class="pull-right fz16" id="pwdlogin">返回登录</a></h2>
  				</div>
  				<div class="tabs_container">
					<form class="tabs_form" action="https://rpg.blue/member.php?mod=logging&action=login" method="post" id="resetpwd_form">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
								</div>
								<input class="form-control phone" name="phone" id="resetpwd_phone" required placeholder="邮箱" autocomplete="on" type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<input class="form-control" name="sms" id="resetpwd_sms" placeholder="输入验证码" type="text">
								<span class="input-group-btn">
									<button class="btn btn-primary getsms" id="resetcode_submit" type="button">发送验证码</button>
								</span>
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
								</div>
								<input class="form-control password" name="password" id="resetpwd_pwd" placeholder="新的密码" autocomplete="off" type="password">
								<div class="input-group-addon pwd-toggle" title="显示密码"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></div>
							</div>
						</div>
	                    <!-- 错误信息 -->
						<div class="form-group">
							<div class="error_msg" id="resetpwd_error"></div>
						</div>
	                    <button class="btn btn-large btn-primary btn-lg btn-block submit" id="resetpwd_submit" type="button">重置密码</button>
                    </form>
                    <div class="tabs_div">
	                    <div class="success-box">
	                    	<div class="success-msg">
								<i class="success-icon"></i>
	                    		<p class="success-text">密码重置成功</p>
	                    	</div>
	                    </div>
	                    <div class="option-box">
	                    	<div class="buts-title">
	                    		现在您可以
	                    	</div>
	                    	<div class="buts-box">
	                    		<a role="button" href="index.html" class="btn btn-block btn-lg btn-default">继续访问商城</a>
								<a role="button" href="login.html" class="btn btn-block btn-lg btn-info">返回登陆</a>
	                    	</div>
	                    </div>
                    </div>
                </div>
			</div>
			<script>
				// 设置在密码的文本框中回车登录
				$('#login_pwd').bind('keydown',function(event){
				    if(event.keyCode == "13") {
				    	$('#login_submit').click();
				    }
				}); 
				
				$(document).ready(function() {
					// 判断直接进入哪个页面 例如 login.php?p=register
					/* switch($.getUrlParam('p')) {
						case 'register': $('.register').show(); break;
						case 'resetpwd': $('.resetpwd').show(); break;
						default: $('.login').show();
					}; */
					
					switch(document.URL.split("/")[document.URL.split("/").length-1]) {
						case 'userLoginPage.do': $('.login').show(); break;
						case 'userRegisterPage.do': $('.register').show(); break;
						case 'resetpwdPage.do': $('.resetpwd').show(); break;
						default: $('.login').show();
					};
					
					// 登录
					$('#login_submit').click(function() {
						var uname = $("#login_phone").val();
						var upwd = $("#login_pwd").val();
						if (uname == null || uname == "") {
							$("#login_error").html(msgtemp('<strong>用户名为空</strong> 请输入用户名', 'alert-warning'));
							return;
						}
						if (upwd == null || upwd == "") {
							$("#login_error").html(msgtemp('<strong>密码为空</strong> 请输入密码', 'alert-warning'));
							return;
						}
						$.post("login.todo",{
							hname:uname,
							hpwd:upwd
						},function(data){
							if (data == "OK") {
								$("#register_error").html(msgtemp('<strong>登录成功！</strong>', 'alert-success'));
								window.location.href = "welcomePage.do?type=10";
							} else {
								$("#login_error").html(msgtemp(data, 'alert-warning'));
							}
						});
					});

					// 注册发送验证码事件
					$('#code_submit').click(function() {
						var email = $("#register_phone").val();
						var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
						var ph = /^((1[3-9][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/;
						if( email == null || email == ""){
							$("#register_error").html(msgtemp('<strong>手机/邮箱为空</strong> 请输入手机/邮箱','alert-warning')); 
							return;
						} 
						if( !re.test(email) && !ph.test(email) ){
							$("#register_error").html(msgtemp('<strong>手机/邮箱错误</strong> 请输入正确的手机/邮箱','alert-warning')); 
							return;
						}
						$.post("checkPhoneAndEmail.todo",{hemail:email},function(data){
							if(data!="OK"){
								$("#register_error").html(msgtemp(data, 'alert-warning'));
								return;
							}else{
								$.post("code.todo",{
									email:email
								},function(data){
									if(data == "OK") {
										$("#register_error").html(msgtemp('验证码 <strong>已发送</strong>','alert-success'));
										$('#code_submit').rewire(60);
									} else {
										$("#register_error").html(msgtemp(data, 'alert-warning'));
									}
								});
							}
						});
						
					});
					
					// 验证用户名是否存在的失焦事件
					$("#register_name").blur(function(){
						var uname = $("#register_name").val();
						if (uname == null || uname == "") {
							$("#register_error").html(msgtemp('<strong>用户名不能</strong> 请输入用户名', 'alert-warning'));
							return;
						}
						$.post("checkname.todo",{
							hname:uname
						},function(data){
							if (data == "OK") {
								$("#register_error").html(msgtemp('<strong>该用户名可以使用！</strong>', 'alert-success'));
							} else {
								$("#register_error").html(msgtemp(data, 'alert-warning'));
							}
						});
					});
					
					// 注册
					$('#register_submit').click(function() {
						var uemail = $("#register_phone").val();
						var uname = $("#register_name").val();
						var code = $("#register_sms").val();
						var upwd = $("#register_pwd").val();
						if (uname == null || uname == "") {
							$("#register_error").html(msgtemp('<strong>用户名为空</strong> 请输入用户名', 'alert-warning'));
							return;
						}
						if (code == null || code == "") {
							$("#register_error").html(msgtemp('<strong>验证码为空</strong> 请输入验证码', 'alert-warning'));
							return;
						}
						if (upwd == null || upwd == "") {
							$("#register_error").html(msgtemp('<strong>密码为空</strong> 请输入密码', 'alert-warning'));
							return;
						} 
						$.post("register.todo",{
							emailorphone:uemail,
							hname:uname,
							hpwd:upwd,
							code:code
						},function(data){
							if (data == "OK") {
								$("#register_error").html(msgtemp('<strong>注册成功！正跳转至登录界面</strong>', 'alert-success'));
								window.location.href = "userLoginPage.do";
							} else {
								$("#register_error").html(msgtemp(data, 'alert-warning'));
							}
						});
					});
					
					// 忘记密码手机/邮箱失焦事件
					$("#resetpwd_phone").blur(function(){
						var uphone = $("#resetpwd_phone").val();
						if (uphone == null || uphone == "") {
							$("#resetpwd_error").html(msgtemp('<strong>手机/邮箱不能为空</strong> 请输入手机/邮箱', 'alert-warning'));
							return;
						}
						$.post("checkname.todo",{
							emailorphone:uphone
						},function(data){
							if (data == "OK") {
								$("#resetpwd_error").html(msgtemp('<strong>该手机/邮箱未注册，请注册后再执行此操作！</strong>', 'alert-warning'));
							} else {
								$("#resetpwd_error").html(msgtemp('<strong>该手机/邮箱是注册用户，请获取验证码修改密码！</strong>', 'alert-success'));
							}
						});
					});
					
					// 忘记密码发送验证码事件
					$('#resetcode_submit').click(function() {
						var email = $("#resetpwd_phone").val();
						var re = /^[A-Za-z\d]+([-_.][A-Za-z\d]+)*@([A-Za-z\d]+[-.])+[A-Za-z\d]{2,4}$/;
						var ph = /^((1[3,5,8][0-9])|(14[5,7])|(17[0,6,7,8])|(19[7]))\d{8}$/;
						if( email == null || email == ""){
							$("#resetpwd_error").html(msgtemp('<strong>手机/邮箱为空</strong> 请输入手机/邮箱','alert-warning')); 
							return;
						} 
						if( !re.test(email) && !ph.test(email) ){
							$("#resetpwd_error").html(msgtemp('<strong>手机/邮箱错误</strong> 请输入正确的手机/邮箱','alert-warning')); 
							return;
						} 
						$.post("code.todo",{
							email:email
						},function(data){
							if(data == "OK") {
								$("#resetpwd_error").html(msgtemp('验证码 <strong>已发送</strong>','alert-success'));
								$('#resetcode_submit').rewire(60);
							} else {
								$("#resetpwd_error").html(msgtemp(data, 'alert-warning'));
							}
						});
					});
					
					// 忘记密码
					$('#resetpwd_submit').click(function() {
						var uemail = $("#resetpwd_phone").val();
						var code = $("#resetpwd_sms").val();
						var upwd = $("#resetpwd_pwd").val();
						if (code == null || code == "") {
							$("#resetpwd_error").html(msgtemp('<strong>验证码为空</strong> 请输入验证码', 'alert-warning'));
							return;
						}
						if (upwd == null || upwd == "") {
							$("#resetpwd_error").html(msgtemp('<strong>密码为空</strong> 请输入密码', 'alert-warning'));
							return;
						} 
						$.post("findPwd.todo",{
							emailorphone:uemail,
							hpwd:upwd,
							code:code
						},function(data){
							if (data == "OK") {
								$("#resetpwd_error").html(msgtemp('<strong>密码修改成功！正跳转至登录界面</strong>', 'alert-success'));
								window.location.href = "userLoginPage.do";
							} else {
								$("#resetpwd_error").html(msgtemp(data, 'alert-warning'));
							}
						});
					});
					
				});
			</script>
		</div>
	</div>
	<div class="footer-login container clearfix">
		<ul class="links">
			<a href=""><li>网店代销</li></a>
			<a href=""><li>U袋学堂</li></a>
			<a href=""><li>联系我们</li></a>
			<a href=""><li>企业简介</li></a>
			<a href=""><li>新手上路</li></a>
		</ul>
		<!-- 版权 -->
		<p class="copyright">
			© 2005-2017 U袋网 版权所有，并保留所有权利<br>
			ICP备案证书号：闽ICP备16015525号-2&nbsp;&nbsp;&nbsp;&nbsp;福建省宁德市福鼎市南下村小区（锦昌阁）1栋1梯602室&nbsp;&nbsp;&nbsp;&nbsp;Tel: 18650406668&nbsp;&nbsp;&nbsp;&nbsp;E-mail: 18650406668@qq.com
		</p>
	</div>
</body>
</html>