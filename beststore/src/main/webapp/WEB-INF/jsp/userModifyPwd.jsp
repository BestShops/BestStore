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
					<div class="modify_div">
						<div class="clearfix">
							<a href="userModifyPwdStep.do" role="button" class="but">修改登陆密码</a>
							<a href="userLogin.do?p=resetpwd" role="button" class="but">忘记登陆密码</a>
						</div>
						<div class="help-block">随时都能更改密码，保障您账户的安全</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>