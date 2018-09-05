<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Store店铺管理</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<script>
	//图片格式化
	function imgFormatter(value, row, index) {
		if (value != null && value != "") {
			value = '<img style="width:80px;height:40px" src="${basePath}/upload/'+value+'">';
			return value;
		}
		return "";
	}
	//时间格式化
	function dataFormat(value) {
		if (value != null && value != "") {
			var d = new Date(value);
			value = d.getFullYear() + "-" + (d.getMonth() + 1) + "-"
					+ (d.getDate()) + " " + (d.getHours()) + ":"
					+ d.getMinutes() + ":" + d.getSeconds();
			return value;
		}
		return "";
	}
	//商品状态
	function statusFmt(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.OSTATUS == "0") {
			return "<span style='color:red'>待付款</span>";
		} else if (row.OSTATUS == "1") {
			return "<span style='color:red'>待发货</span>";
		} else if (row.OSTATUS == "2") {
			return "<span style='color:green'>待收货</span>";
		} else if (row.OSTATUS == "3") {
			return "<span style='color:green'>待评价</span>";
		} else if (row.OSTATUS == "4") {
			return "<span style='color:green'>已评价</span>";
		}
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.OSTATUS == "1") {
			return '<a href="#" onclick="shelfGoods(' + index + ')">发货</a>';
		} else if (row.OSTATUS == "0" || row.OSTATUS == "2" || row.OSTATUS == "3" || row.OSTATUS == "4") {
			return "";
		} 
	}
	//发货
	function shelfGoods(index) {
		flag = confirm("确定发货吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateOrders.do", {
				oid : row.OID,
				ostatus : 2
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
					alert(d.data);
				} else {
					alert(d.data);
				}
			});
		}
	}

	function doSearch() {
		var ostatus = $('#cc').val();
		$('#foodGrid').datagrid('options').url = "findOrderBySid.do?ostatus="
				+ ostatus;
		$("#foodGrid").datagrid('reload');
	}


	
</script>
<body>
	<table class="easyui-datagrid" title="订单管理" id="foodGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'findOrderBySid.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr style="text-align: center">
				<th data-options="field:'OID',width:80,align:'center'">订单号</th>
				<th data-options="field:'hname',width:70,align:'center'">用户名</th>
				<th data-options="field:'OSTATUS',width:100,align:'center',formatter:statusFmt">订单状态</th>
				<th data-options="field:'gphotopic',width:130,align:'center',formatter:imgFormatter">商品图片</th>
				<th data-options="field:'num',width:70,align:'center'">商品数量</th>
				<th data-options="field:'gnowprice',width:70,align:'center'">商品单价</th>
				<th data-options="field:'ONOWPRICE',width:70,align:'center'">支付总价</th>
				<th data-options="field:'OTIME',width:140,align:'center',formatter:dataFormat">订单提交时间</th>
				<th data-options="field:'OPAYTIME',width:140,align:'center',formatter:dataFormat">付款时间</th>
				<th data-options="field:'ODEALTIME',width:140,align:'center',formatter:dataFormat">成交时间</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<span>商品状态:</span> <select
			id="cc" class="easyui-combobox" name="dept" style="width: 200px;">
			<option value="">全部</option>
			<option value="0">待付款</option>
			<option value="1">待发货</option>
			<option value="2">待收货</option>
			<option value="3">待评价</option>
			<option value="4">已评价</option>
		</select> <a class="easyui-linkbutton" plain="true" onclick="doSearch()">搜索</a>
	</div>

</body>
</html>