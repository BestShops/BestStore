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
					<form action="" class="user-setting__form" role="form">
						<div class="form-group">
							<input class="form-control" name="phone" autocomplete="off" type="password">
							<span class="tip-text">请输入店铺名</span>
						</div>
						<div class="form-group">
							<input class="form-control" name="phone" autocomplete="off" type="password">
							<span class="tip-text">请输入店铺说明</span>
						</div>
						<div class="user-form-group tags-box">
							<button type="submit" class="btn ">提交</button>
						</div>
						
					</form>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>