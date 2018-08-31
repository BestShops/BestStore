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
							<div class="img"><img src="upload/${Info.gphotopic}" alt="" class="cover"></div>
							<div class="name ep2">${Info.sname} &nbsp;${Info.gname}</div>
							<div class="param">
								<div class="param-row"><span class="param-label">原价</span><span class="c6 fz20">${Info.glastprice}元</span></div>
								<div class="param-row"><span class="param-label">现价</span><b class="cr fz24">${Info.gnowprice}</b><span class="cr">元</span></div>
								<div class="param-row"><span class="param-label">销量</span><span class="c6 fz20">${Info.num}</span></div>
								<div class="param-row"><span class="param-label">评价</span><span class="c6 fz20">${count}</span></div>
								<div class="param-row"><span class="param-label">好评率</span><span class="c6 fz20">${goodNum}</span></div>
							</div>
							<div class="info c6">
								${Info.gdesc}
							</div>
						</div>
					</div>
					<p class="fz18 cr">商品评价</p>
					<div class="modify_div">
						<form action="" class="evaluate-form__box">
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
								$("#submit").click(function(){
									var drank = $("input[name='opinion']:checked").val();
									var depict = $("#depict").text();
									
									$.post("addDiscuss.do",{
										
									},function(data){
										
									});
								});
								
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