<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/zebra.datepicker.css">
</head>
<body>
	<%@ include file="header2.jsp" %>
	
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">账户信息-个人资料</div>
					<div class="port b-r50" id="crop-avatar">
						<div class="img"><img name="hphoto" src="images/icons/default_avt.png" class="cover b-r50"></div>
					</div>
					<div style="text-align:right;">
						<form action="" class="user-setting__form" role="form" onsubmit="return false;">
							用户名：<input id="name" value="${loginHuman.hname}" placeholder="请输入您的昵称"><br><br>
							性别：   <input type="radio" name="sex" value="男">男&nbsp;&nbsp;
							<input type="radio" name="sex" value="女">女<span>（默认为男性）</span><br><br>
							身高(cm)：<input id="weight" type="number" min="140" max="220" style="height:23px;width:165px;" value="${loginHuman.height}"><br><br>
							体重(kg)：<input id="hight" type="number" min="5" max="190" style="height:23px;width:165px;" value="${loginHuman.hweight}"><br><br>
							生日：<input type="text" class="datepicker" id="time" value="${loginHuman.hbirth}"><br><br>
							身份证号码：<input id="idcard" value="${loginHuman.hidcard}"><br><br>
							手机号码：<input id="phone" value="${loginHuman.hphone}"><br><br>
							邮箱：<input id="email" value="${loginHuman.hemail}"><br><br>
							<div style="width:200px;"><button type="button" class="btn" onclick="submit()">确认修改</button></div>
						</form>
					</div>
					<script src="js/zebra.datepicker.min.js"></script>
					<script>
						$('input.datepicker').Zebra_DatePicker({// 生日的样式
							default_position: 'below',
							show_clear_date: false,
							show_select_today: false,
						});
					</script>
				</div>
			</div>
		</section>
	</div>
	<!-- 头像选择模态框 -->
	<link href="css/cropper/cropper.min.css" rel="stylesheet">
	<link href="css/cropper/sitelogo.css" rel="stylesheet">
	<script src="js/cropper/cropper.min.js"></script>
	<script src="js/cropper/sitelogo.js"></script>
	<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<form class="avatar-form" action="{%url('admin/upload-logo')%}" enctype="multipart/form-data" method="post">
					<div class="modal-header">
						<button class="close" data-dismiss="modal" type="button">&times;</button>
						<h4 class="modal-title" id="avatar-modal-label">Change Logo Picture</h4>
					</div>
					<div class="modal-body">
						<div class="avatar-body">
							<div class="avatar-upload">
								<input class="avatar-src" name="avatar_src" type="hidden">
								<input class="avatar-data" name="avatar_data" type="hidden">
								<label for="avatarInput">图片上传</label>
								<input class="avatar-input" id="avatarInput" name="avatar_file" type="file"></div>
							<div class="row">
								<div class="col-md-9">
									<div class="avatar-wrapper"></div>
								</div>
								<div class="col-md-3">
									<div class="avatar-preview preview-lg"></div>
									<div class="avatar-preview preview-md"></div>
									<div class="avatar-preview preview-sm"></div>
								</div>
							</div>
							<div class="row avatar-btns">
								<div class="col-md-9">
									<div class="btn-group">
										<button class="btn" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"><i class="fa fa-undo"></i> 向左旋转</button>
									</div>
									<div class="btn-group">
										<button class="btn" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"><i class="fa fa-repeat"></i> 向右旋转</button>
									</div>
								</div>
								<div class="col-md-3">
									<button class="btn btn-success btn-block avatar-save" type="submit"><i class="fa fa-save"></i> 保存修改</button>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	<script src="js/jquery.1.12.4.min.js"></script>
	<script type="text/javascript">
		function submit() {
			var name = $("#name").val();
			var sex = $("input[name='sex']:checked").val();
			var weight = $("#weight")
		}
		
	</script>
</body>
</html>