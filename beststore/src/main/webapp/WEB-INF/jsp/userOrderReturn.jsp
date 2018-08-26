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
					<div class="title">订单中心-申请退款/退货</div>
					<div class="order-info__box">
						<div class="step-flow-box" style="width: 800px;margin: 0 auto 24px">
							<div class="step-flow__bd">
								<div class="step-flow__li step-flow__li_done">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">买家申请</p>
								</div>
								<div class="step-flow__line step-flow__line_ing">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">卖家处理</p>
								</div>
								<div class="step-flow__line">
									<div class="step-flow__process"></div>
								</div>
								<div class="step-flow__li">
									<div class="step-flow__state"><i class="iconfont icon-ok"></i></div>
									<p class="step-flow__title-top">完毕</p>
								</div>
							</div>
						</div>
						<hr>
						<div class="return-item__info">
							<div class="img"><img src="images/temp/M-001.jpg" alt="" class="cover"></div>
							<div class="name ep2">锦瑟 原创传统日常汉服男绣花交领衣裳cp情侣装春夏款</div>
							<div class="type">颜色分类：深棕色 尺码：均码</div>
							<div class="num">订单编号：156465416412132</div>
						</div>
						<form action="" class="user-addr__form form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-2 control-label">服务类型：</label>
								<div class="col-sm-6">
									<div class="user-form-group return_val c6">
										<label><input name="money" value="0" type="radio"><i class="iconfont icon-radio"></i> 仅退款</label><br>
										<label><input name="money" value="1" type="radio"><i class="iconfont icon-radio"></i> 退货退款</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">货物状态：</label>
								<div class="col-sm-6">
									<div class="user-form-group return_val c6">
										<label><input name="item" value="0" type="radio"><i class="iconfont icon-radio"></i> 未收到货</label><br>
										<label><input name="item" value="1" type="radio"><i class="iconfont icon-radio"></i> 已收到货</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label">退款金额：</label>
								<div class="col-sm-6">
									<div class="return_val cr">￥15.0</div>
								</div>
							</div>
							<div class="form-group">
								<label for="cause" class="col-sm-2 control-label">退款原因：</label>
								<div class="col-sm-10">
									<select name="town" id="cause">
										<option value="0">请选择</option>
										<option value="1">质量问题</option>
										<option value="2">发错货物</option>
										<option value="3">七天无理由退换</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="note" class="col-sm-2 control-label">退款说明：</label>
								<div class="col-sm-6">
									<textarea class="form-control" id="note" rows="3"></textarea>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-2 col-sm-3">
									<button type="submit" class="but">提交</button>
								</div>
							</div>
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