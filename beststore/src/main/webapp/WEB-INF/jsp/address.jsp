<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
</head>
<body>
	<%@ include file="header2.jsp" %>
			<div class="pull-right">
				<div class="user-content__box clearfix bgf">
					<div class="title">账户信息-编辑收货地址</div>
					<form action="" class="user-addr__form form-horizontal" role="form">
						<div class="form-group">
							<label for="name" class="col-sm-2 control-label">收货人姓名：</label>
							<div class="col-sm-6">
								<input class="form-control" id="name" placeholder="请输入姓名" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="details" class="col-sm-2 control-label">收货地址：</label>
							<div class="col-sm-10">
								<div class="addr-linkage">
									<select name="province"></select>
									<select name="city"></select>
									<select name="area"></select>
									<select name="town"></select>
								</div>
								<input class="form-control" id="details" placeholder="建议您如实填写详细收货地址，例如街道名称，门牌号码等信息" maxlength="30" type="text">
							</div>
						</div>
						<div class="form-group">
							<label for="mobile" class="col-sm-2 control-label">手机号码：</label>
							<div class="col-sm-6">
								<input class="form-control" id="mobile" value="15377777777" placeholder="请输入手机号码" type="text">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-6">
								<div class="checkbox">
									<label><input type="checkbox" checked><i></i> 设为默认收货地址</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-6">
								<button type="submit" class="but" id="submit">保存</button>
							</div>
						</div>
						<script src="js/jquery.citys.js"></script>
						<script>
							$(document).ready(function(){
								// 添加街道/乡镇
								function townFormat(info){
									$('.addr-linkage select[name="town"]').hide().empty();
									if (info['code'] % 1e4 && info['code'] < 7e6){	//是否为“区”且不是港澳台地区
										var ajaxConfig = {
											url: 'http://passer-by.com/data_location/town/' + info['code'] + '.json',
											scriptCharset:'UTF-8',
											dataType: "json",
											timeout: 4000,
											success: function(data) {
												$('.addr-linkage select[name="town"]').show();
												// $('#code').val(info['code']) // 填地区编码
												for (i in data) {
													$('.addr-linkage select[name="town"]').append(
														'<option value="' + data[i] + '">' + data[i] + '</option>'
													);
												};
												$('.addr-linkage select[name="town"]').find('option[value="洪山镇"]').prop("selected", "selected");
											},
										};
										$.ajax(ajaxConfig).fail(function(p1,p2,p3){
											ajaxConfig.url = 'js/data_location/town/' + info['code'] + '.json';
											$.ajax(ajaxConfig)
										});
									}
								};
								$('.addr-linkage').citys({
									// 如果某天这个仓库地址失效了dataUrl请使用本地 2017.10 的数据 'js/data_location/list.json'
									dataUrl: 'http://passer-by.com/data_location/list.json',
									spareUrl: 'js/data_location/list.json',
									dataType: 'json',
									valueType: 'name',
									province: '湖南省',
									city:'衡阳市',
									area: '珠晖区',
									onChange: function(data) {
										townFormat(data)
									},
								},function(api){
									var info = api.getInfo();
									townFormat(info);
								});
							}); 
						</script>
					</form>
					<p class="fz18 cr">已保存的有效地址</p>

					<div class="table-thead addr-thead">
						<div class="tdf1">收货人</div>
						<div class="tdf2">所在地</div>
						<div class="tdf3"><div class="tdt-a_l">详细地址</div></div>
						<!-- <div class="tdf1">邮编</div> -->
						<div class="tdf1">电话/手机</div>
						<div class="tdf1">操作</div>
						<div class="tdf1"></div>
					</div>
					<div class="addr-list">
						<c:forEach items="addresslist" var="a">
							<div class="addr-item">
								<div class="tdf1">${a.aconsignee}</div>
								<div class="tdf2 tdt-a_l">${a.acity}</div>
								<div class="tdf3 tdt-a_l">${a.alocation}</div>
								<!-- <div class="tdf1">350111</div> -->
								<div class="tdf1">${a.aphone}</div>
								<div class="tdf1 order">
									<a href="udai_address_edit.html">修改</a><a href="">删除</a>
								</div>
								<div class="tdf1">
									<c:if test="${a.astatus}==1">
										<a href="" class="default active">默认地址</a>
									</c:if>
									<c:if test="${a.astatus}==0">
										<a href="" class="default" onclick="addressDefault.do">设为默认</a>
									</c:if>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp" %>
	<%@ include file="bottom.jsp" %>
	
</body>
</html>