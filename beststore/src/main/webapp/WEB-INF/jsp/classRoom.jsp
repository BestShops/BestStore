<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header1.jsp" %>
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
	<!-- 右侧菜单 -->
	<div class="right-nav">
		<ul class="r-with-gotop">
			<li class="r-toolbar-item">
				<a href="udai_welcome.html" class="r-item-hd">
					<i class="iconfont icon-user" data-badge="0"></i>
					<div class="r-tip__box"><span class="r-tip-text">用户中心</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_shopcart.html" class="r-item-hd">
					<i class="iconfont icon-cart"></i>
					<div class="r-tip__box"><span class="r-tip-text">购物车</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="udai_collection.html" class="r-item-hd">
					<i class="iconfont icon-aixin"></i>
					<div class="r-tip__box"><span class="r-tip-text">我的收藏</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="" class="r-item-hd">
					<i class="iconfont icon-liaotian"></i>
					<div class="r-tip__box"><span class="r-tip-text">联系客服</span></div>
				</a>
			</li>
			<li class="r-toolbar-item">
				<a href="issues.html" class="r-item-hd">
					<i class="iconfont icon-liuyan"></i>
					<div class="r-tip__box"><span class="r-tip-text">留言反馈</span></div>
				</a>
			</li>
			<li class="r-toolbar-item to-top">
				<i class="iconfont icon-top"></i>
				<div class="r-tip__box"><span class="r-tip-text">返回顶部</span></div>
			</li>
		</ul>
		<script>
			$(document).ready(function(){ $('.to-top').toTop({position:false}) });
		</script>
	</div>
	<!-- 底部信息 -->
	<div class="footer">
		<div class="footer-tags">
			<div class="tags-box inner">
				<div class="tag-div">
					<img src="images/icons/footer_1.gif" alt="厂家直供">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_2.gif" alt="一件代发">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_3.gif" alt="美工活动支持">
				</div>
				<div class="tag-div">
					<img src="images/icons/footer_4.gif" alt="信誉认证">
				</div>
			</div>
		</div>
		<div class="footer-links inner">
			<dl>
				<dt>U袋网</dt>
				<a href="temp_article/udai_article10.html"><dd>企业简介</dd></a>
				<a href="temp_article/udai_article11.html"><dd>加入U袋</dd></a>
				<a href="temp_article/udai_article12.html"><dd>隐私说明</dd></a>
			</dl>
			<dl>
				<dt>服务中心</dt>
				<a href="temp_article/udai_article1.html"><dd>售后服务</dd></a>
				<a href="temp_article/udai_article2.html"><dd>配送服务</dd></a>
				<a href="temp_article/udai_article3.html"><dd>用户协议</dd></a>
				<a href="temp_article/udai_article4.html"><dd>常见问题</dd></a>
			</dl>
			<dl>
				<dt>新手上路</dt>
				<a href="temp_article/udai_article5.html"><dd>如何成为代理商</dd></a>
				<a href="temp_article/udai_article6.html"><dd>代销商上架教程</dd></a>
				<a href="temp_article/udai_article7.html"><dd>分销商常见问题</dd></a>
				<a href="temp_article/udai_article8.html"><dd>付款账户</dd></a>
			</dl>
		</div>
		<div class="copy-box clearfix">
			<ul class="copy-links">
				<a href="agent_level.html"><li>网店代销</li></a>
				<a href="class_room.html"><li>U袋学堂</li></a>
				<a href="udai_about.html"><li>联系我们</li></a>
				<a href="temp_article/udai_article10.html"><li>企业简介</li></a>
				<a href="temp_article/udai_article5.html"><li>新手上路</li></a>
			</ul>
			<!-- 版权 -->
			<p class="copyright">
				© 2005-2017 U袋网 版权所有，并保留所有权利<br>
				ICP备案证书号：闽ICP备16015525号-2&nbsp;&nbsp;&nbsp;&nbsp;福建省宁德市福鼎市南下村小区（锦昌阁）1栋1梯602室&nbsp;&nbsp;&nbsp;&nbsp;Tel: 18650406668&nbsp;&nbsp;&nbsp;&nbsp;E-mail: 18650406668@qq.com
			</p>
		</div>
	</div>
</body>
</html>