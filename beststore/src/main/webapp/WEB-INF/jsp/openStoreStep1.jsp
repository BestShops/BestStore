<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp"%>
	<div class="pull-right">
		<div class="user-content__box clearfix bgf">
			<div class="title">开店流程-开店步骤</div>
			<div class="step-flow-box">
				<div class="step-flow__bd">
					<div class="step-flow__li step-flow__li_done">
						<div class="step-flow__state">
							<i class="iconfont icon-ok"></i>
						</div>
						<p class="step-flow__title-top">阅读条款</p>
					</div>
					<div class="step-flow__line step-flow__line_ing">
						<div class="step-flow__process"></div>
					</div>
					<div class="step-flow__li">
						<div class="step-flow__state">
							<i class="iconfont icon-ok"></i>
						</div>
						<p class="step-flow__title-top">店铺信息</p>
					</div>
					<div class="step-flow__line">
						<div class="step-flow__process"></div>
					</div>
					<div class="step-flow__li">
						<div class="step-flow__state">
							<i class="iconfont icon-ok"></i>
						</div>
						<p class="step-flow__title-top">完成</p>
					</div>
				</div>
			</div>
			<form action="openStoreStep2Page.do" role="form">
				<div style="font-size: 14px;font-family:">
					1、我在淘宝已经开了个店了，我用别人的身份证再开一个店可以吗？<br/>
					答：不可以。未经淘宝平台同意，将本人淘宝账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。
					<br/>
					2、我可以把店铺转租给其他人吗?<br/>
					答：不可以。未经淘宝平台同意，将本人淘宝账号提供给他人作开店使用，否则由此导致相关争议、诉讼及因店铺经营中的违法违规行为导致一切人身、财产权益损害，均由本人自行承担全部民事、行政及刑事责任。
					<br/>
					3、我可以开多个淘宝店吗?<br/>
					答：不可以。一张身份证（一张营业执照）只能开一个淘宝店铺。开店后请保持营业执照存续状态，不得注销；如若发现营业执照被注销、吊销，淘宝将会对店铺做出永久关闭的处置。
					<br/>
					4、我已经开过淘宝店，现在想要注销原来的店铺重新开店，可以吗?<br/>
					答：不可以，淘宝暂时不提供注销店铺的服务。用户一但成功开店就无法再用身份证（营业执照）另开一家淘宝店铺。
				</div>
				<div class="user-form-group tags-box">
					<button type="submit" class="btn" style="width:150px;margin-left: 300px;">我已了解，继续开店</button>
				</div>
			</form>
		</div>
	</div>
	</section>
	</div>
	<%@ include file="rightMenu.jsp"%>
	<%@ include file="bottom.jsp"%>
</body>
</html>