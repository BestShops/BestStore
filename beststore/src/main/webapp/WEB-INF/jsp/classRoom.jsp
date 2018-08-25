<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header1_similar.jsp" %>
	<div class="content inner">
		<section class="panel__div clearfix">
			<div class="filter-value">
				<div class="filter-title">视频专区</div>
				<div class="auto-play pull-right">自动播放</div>
			</div>
			<div class="video-list_div">
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="1" data-video="images/temp/videos/video_1.mp4"><img src="images/temp/S-001-1_s.jpg" alt="U袋学堂第1课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="2" data-video="images/temp/videos/video_2.mp4"><img src="images/temp/S-001-2_s.jpg" alt="U袋学堂第2课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="3" data-video="images/temp/videos/video_3.mp4"><img src="images/temp/S-001-3_s.jpg" alt="U袋学堂第3课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="4" data-video="images/temp/videos/video_4.mp4"><img src="images/temp/S-001-4_s.jpg" alt="U袋学堂第4课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="5" data-video="images/temp/videos/video_5.mp4"><img src="images/temp/S-001-5_s.jpg" alt="U袋学堂第5课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="6" data-video="images/temp/videos/video_6.mp4"><img src="images/temp/S-001-6_s.jpg" alt="U袋学堂第6课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="7" data-video="images/temp/videos/video_7.mp4"><img src="images/temp/S-001-7_s.jpg" alt="U袋学堂第7课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
				<div class="video-box">
					<div class="img" data-toggle="modal" data-target="#video-modal" data-id="8" data-video="images/temp/videos/video_8.mp4"><img src="images/temp/S-001-8_s.jpg" alt="U袋学堂第8课" class="cover"></div>
					<div class="buttom">
						<div class="title ep">U袋学堂第1课</div>
						<div class="price">免费学习</div>
					</div>
				</div>
			</div>
			<script>
				$(function() {
					$('#video-modal').on('show.bs.modal', function (e) {
						if ($('#video').data('id') != $(e.relatedTarget).data('id')) {
							 $('#video').data('id',$(e.relatedTarget).data('id'));
							$('#video').attr({
								'src': $(e.relatedTarget).data('video'),
								'poster': $(e.relatedTarget).find('img').attr('src')
							});
						};
						if ($('.auto-play').hasClass('active')) {
							$('#video').get(0).play()
						};
					});
					$('.auto-play').click(function() {
						$(this).toggleClass('active')
					});
					$('#video-modal').on('hide.bs.modal', function (e) {
						$('#video').get(0).pause();
					});
				});
			</script>
		</section>
		<section class="panel__div clearfix">
			<div class="filter-value">
				<div class="filter-title">U袋学堂说明</div>
			</div>
			<div class="html-code">
				<p>这里是U袋学堂说明内容</p>
			</div>
		</section>
	</div>
	<div class="modal fade bs-example-modal-lg" id="video-modal" tabindex="-1" role="dialog" aria-labelledby="videoModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<video id="video" width="870" controls preload="metadata" data-id=""></video>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
</body>
</html>