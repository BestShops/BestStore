<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css"> -->
<link rel="stylesheet" href="css/message.css">
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>  
 
</head>
<body>
	<%@ include file="header2.jsp"%>
	<div class="pull-right">
		<div class="user-content__box clearfix bgf">
			<div class="title">账户信息-编辑收货地址</div>
			<form action="" class="user-addr__form form-horizontal" role="form"
				onsubmit="return false;">
				<div>
					<Strong id="error" style="color: red"></Strong>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 control-label">收货人姓名：</label>
					<div class="col-sm-6">
						<input class="form-control" id="name" placeholder="请输入姓名"
							type="text">
					</div>
				</div>
				<div class="form-group">
					<label for="details" class="col-sm-2 control-label">收货地址：</label>
					<div class="col-sm-10">
						<div class="addr-linkage">
						地区：<select id="area" name="area"></select>  
						省：<select id="cmbProvince" name="cmbProvince"></select>  
						市：<select id="cmbCity" name="cmbCity"></select>  
						区：<select id="cmbArea" name="cmbArea"></select> 
						</div>
						<input class="form-control" id="details"
							placeholder="建议您如实填写详细收货地址，例如街道名称，门牌号码等信息" maxlength="30"
							type="text">
					</div>
				</div>
				<div class="form-group">
					<label for="mobile" class="col-sm-2 control-label">手机号码：</label>
					<div class="col-sm-6">
						<input class="form-control" id="mobile" placeholder="请输入手机号码"
							type="text">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-6">
						<div class="checkbox">
							<label><input id="status" type="checkbox" checked><i></i>
								设为默认收货地址</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-6" id="divsubmit">
						<button type="submit" class="but" id="submit"
							onclick="commit(0, 0)">保存</button>
					</div>
				</div>
			</form>
			<p class="fz18 cr">已保存的有效地址</p>

			<div class="table-thead addr-thead">
				<div class="tdf1">序号</div>
				<div class="tdf1">收货人</div>
				<div class="tdf3">所在地</div>
				<div class="tdf3">
					<div class="tdt-a_l" style="text-align: center;">详细地址</div>
				</div>
				<!-- <div class="tdf1">邮编</div> -->
				<div class="tdf1">电话/手机</div>
				<div class="tdf1">操作</div>
				<div class="tdf1"></div>
			</div>
			<div class="addr-list">
				<c:if test="${fn:length(addresslist)!=0}">
					<c:forEach items="${addresslist}" var="a">
						<div class="addr-item">
							<div class="tdf1">${a.aid}</div>
							<div class="tdf1">${a.aconsignee}</div>
							<div class="tdf3">${a.acity}</div>
							<div class="tdf3 tdt-a_l" style="text-align: center;">${a.alocation}</div>
							<div class="tdf1">${fn:substring(a.aphone, 0, 3)}****${fn:substring(a.aphone, 7, 11)}</div>
							<div class="tdf1_hidden" hidden="yes">${a.aphone}</div>
							<div class="tdf1 order">
								<a onclick="change(this)" style="cursor: pointer;">修改</a><a onclick="del(${a.aid})" style="cursor: pointer;">删除</a>
							</div>
							<div class="tdf1">
								<c:if test="${a.astatus==1}">
									<a href="" class="default active">默认地址</a>
								</c:if>
								<c:if test="${a.astatus==0}">
									<a href="" class="default" onclick="addressDefault(${a.aid})">设为默认</a>
								</c:if>
							</div>
						</div>
					</c:forEach>
				</c:if>
			</div>
		</div>
		</section>
	</div>
	<%@ include file="rightMenu.jsp"%>
	<%@ include file="bottom.jsp"%>
	<script src="js/jsAddress.js"></script>
	<script type="text/javascript">
		//$(function(){
			addressInit('area','cmbProvince','cmbCity','cmbArea','西北地区', '北京', '市辖区', '东城区'); 
		//})
		// 设为默认
		function addressDefault(aid) {
			if (confirm("您确定要将该地址设置为默认吗？")) {
				$.post("addressDefault.do",{
					aid:aid
				},function(data){
					if ("OK" == data) {
						$.message("设置成功");
					}
				});
			}
		}
		
		// 删除
		function del(aid) {
			if (confirm("您确定要删除这个地址吗？")) {
				$.post("delAddress.do",{
					aid:aid
				},function(data){
					if (data == "OK") {
						$.message("删除成功");
						window.location.href = "addressPage.do";
					}
				});
			}
		}
	
		// 修改
		function change(e) {
			// 设值
			var aphone = $(e).parent().prev();
			$("#mobile").val(aphone.text());
			var alocation = aphone.prev().prev();
			$("#details").val(alocation.text());
			var acmbProvince = alocation.prev();
			var citys = acmbProvince.text().split(" ");
			addressInit('area','cmbProvince','cmbCity','cmbArea',citys[0], citys[1], citys[2], citys[3]);
			// 设置名字
			var aconsignee = acmbProvince.prev();
			$("#name").val(aconsignee.text());
			var aid = aconsignee.prev().text();
			// 修改保存的点击事件
			$("#divsubmit").html("<button type='submit' class='but' id='submit' onclick='commit(1, " 
					+ aid + ")'>确认修改</button>");
		}
		
		// 添加一个地址
		function commit(a, aid) {
			var url;
			if (a == 0) {
				url = "addAddress.do";
			} else {
				url = "modifyAddress.do";
			}
			var name = $("#name").val();
			var option = $("#area option:selected").text() + " "
				+ $("#cmbProvince option:selected").text() + " "
				+ $("#cmbCity option:selected").text() + " "
				+ $("#cmbArea option:selected").text() + " ";
			var details = $("#details").val();
			var mobile = $("#mobile").val();
			var status;
			if ($('#status').is(':checked')) {
			   	status = 1;
			} else {
				status = 0;
			}
			var isPhone = /^[1][3,4,5,7,8][0-9]{9}$/;//手机号码
			if (name == null || name == "") {
				$("#error").html("收货人姓名不能为空");
			} else if (details == null || details == "") {
				$("#error").html("收货人地址不能为空");
			} else if (mobile == null || mobile == "") {
				$("#error").html("收货人手机号码不能为空");
			} else if (!isPhone.test(mobile)) {
				$("#error").html("请填写真实的号码");
			}else {
				$.post(url,{
					aid:aid,
					aphone:mobile,
					acity:option,
					alocation:details,
					aconsignee:name,
					astatus:status
				},function(data){
					if (data == "OK") {
						if (a == 0) {
							$.message("地址添加成功");
						} else {
							$.message("地址修改成功");
						}
						var t1=window.setTimeout(refreshCount, 1000 * 1);
					    function refreshCount() {
					    	window.location.href = "addressPage.do";
					    }
					} else {
						$("#error").html(data);
					}
				});
			}
		}
	</script>

</body>
</html>