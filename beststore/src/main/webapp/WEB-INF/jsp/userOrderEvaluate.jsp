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
					<div class="title">订单中心-商品评价</div>
					<div class="evaluate_box">
						<div class="evaluate_info posr clearfix">
							<div class="img"><img src="upload/${Info.GPHOTOPIC}" alt="" class="cover"></div>
							<div class="name ep2">${Info.sname} &nbsp;${Info.GNAME}</div>
							<div class="param">
								<div class="param-row"><span class="param-label">原价</span><span class="c6 fz20">${Info.GLASTPRICE}元</span></div>
								<div class="param-row"><span class="param-label">现价</span><b class="cr fz24">${Info.GNOWPRICE}</b><span class="cr">元</span></div>
								<div class="param-row"><span class="param-label">销量</span><span class="c6 fz20">${Info.num}</span></div>
								<div class="param-row"><span class="param-label">评价</span><span class="c6 fz20">${count}</span></div>
								<div class="param-row"><span class="param-label">好评率</span><span class="c6 fz20">${goodNum}</span></div>
							</div>
							<div class="info c6">
								${Info.GDESC}
							</div>
						</div>
					</div>
					<p class="fz18 cr">商品评价</p>
					<div class="modify_div">
						<form action="" class="evaluate-form__box" onsubmit="return false;">
							<span class="help-block">快评论一番，让其他买家开开眼</span>
							<table class="table table-bordered">
								<tr>
									<th scope="row">评价等级</th>
									<td class="user-form-group fz0">
										<label><input name="opinion" value="0" type="radio" checked><i class="iconfont icon-radio"></i> <span>好评</span></label>
										<label><input name="opinion" value="1" type="radio"><i class="iconfont icon-radio"></i> <span>中评</span></label>
										<label><input name="opinion" value="2" type="radio"><i class="iconfont icon-radio"></i> <span>差评</span></label>
									</td>
								</tr>
								<tr>
									<th scope="row">评价商品</th>
									<td><textarea rows="5" placeholder="请输入您对该商品的评价~" id="depict"></textarea></td>
								</tr>
								<tr valign="middle">
									<th scope="row">晒图片</th>
									<td>
										<ul class="uploader__files"></ul>
										<div class="uploader__input"></div>
										<div class="uploader__size"><span class="cr">0</span>/5</div>
									</td>
								</tr>
							</table>
							<div class="checkbox">
								<label><input type="checkbox" id="status"><i></i> 匿名评价</a></label>
								<button type="submit" class="but pull-right" id="submit">提交评价</button>
							</div>
							<script>
								// 表单对象
								var formData = new FormData();
								
								$(document).ready(function(){
									var tmpl = '<li class="uploader__file"><input name="i[]" accept="image/*" type="file"><i>&times;</i></li>',
										$uploader_files = $('.uploader__files'),
										$uploader_input = $('.uploader__input'),
										$uploader_size = $('.uploader__size span');
									$uploader_input.on('click',function() {
										var size = $uploader_files.find('li').length;
										if (size >= 5) {return DJMask.msg("最多上传5张图片！");}
										var $input = $(tmpl);
										$uploader_files.append($input);
										$uploader_size.html(size + 1);
										$input.on('click','i',function() {
											$(this).parent().remove();
											$uploader_size.html($uploader_files.find('li').length);
										});
										$input.on('change','input',function(e) {
											var src, url = window.URL || window.webkitURL || window.mozURL, files = e.target.files, that = this;
											for (var i = 0, len = files.length; i < len; ++i) {
												var file = files[i];
												console.log(file);
												formData.append('file', file);
												if (url) {
													src = url.createObjectURL(file);
												} else {
													src = e.target.result;
												}
												$input.css({'background-image':'url('+src+')'}).addClass('active');
											}
										});
										$input.find('input').click();
									})
								});
								
								$("#submit").click(function(){
									var dstatus = 1;
									if ($("#status").is(':checked') ) {
										dstatus = 2;
									}
									var gid = '${Info.GID}';
									var oid = '${oid}';
									var odid = '${odid}';
									console.info(oid);
									console.info(odid);
									var drank = $("input[name='opinion']:checked").val();
									var depict = $("#depict").val();
									if (depict.length > 80 || depict.length<5) {
										$.message({
											message:"评价描述的长度适合在5~80字之间，请不要超出范围",
											type:'warning'
										});
									}
									formData.append('gid',gid);
									formData.append('oid',oid);
									formData.append('odid',odid);
									formData.append('drank',drank);
									formData.append('depict',depict);
									formData.append('dstatus',dstatus);
									console.log(formData.getAll("file"));
									var xhr = new XMLHttpRequest();
									xhr.open("POST","addDiscuss.do", true);
									xhr.send(formData);
									xhr.onload = function(data) {
										if (xhr.readyState==4) {// 4 = "loaded"
										  if (xhr.status==200) {// 200 = OK
										    var data = xhr.responseText;
										    if (data == 1) {// 订单全部评价完成
										    	$.message("提交成功");
												var t1=window.setTimeout(refreshCount, 1000 * 1);
											    function refreshCount() {
											    	// 跳到评论显示页面
													window.location.href="EvaluatePage.do?odid=" + odid;
											    }
											} else {
												$.message({
							                        message:data,
							                        type:'error'
							                    });
											}
										  } else {
											  $.message({
													message:"图片上传失败，请稍后重试",
													type:'warning'
												});
										  }
										}
									}
								});
							</script>
						</form>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>