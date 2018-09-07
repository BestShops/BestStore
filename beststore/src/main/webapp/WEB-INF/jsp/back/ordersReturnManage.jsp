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
		if (row.ORTYPE == "0") {
			return "<span style='color:red'>申请中</span>";
		} else if (row.ORTYPE == "1") {
			return "<span style='color:green'>已退款</span>";
		} else if (row.ORTYPE == "2") {
			return "<span style='color:red'>拒绝退款</span>";
		}
	}
	
	//服务类型
	function ORSERVICEFormat(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.ORSERVICE == "0") {
			return "<span>仅退货</span>";
		} else if (row.ORSERVICE == "1") {
			return "<span>退货退款</span>";
		}
	}
	
	//商品状态
	function ORSTATUSFormat(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.ORSTATUS == "0") {
			return "<span>未收到货</span>";
		} else if (row.ORSTATUS == "1") {
			return "<span>已收到货</span>";
		}
	}
	
	//退款原因  
	function OREASONFormat(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.OREASON == "0") {
			return "<span>质量原因</span>";
		} else if (row.OREASON == "1") {
			return "<span>发错货物</span>";
		}else if (row.OREASON == "1") {
			return "<span>七天无理由退款</span>";
		}else if (row.OREASON == "1") {
			return "<span>多拍重拍</span>";
		}
	}
	
	
	//操作
	function fmtDo(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.ORTYPE == "0") {
			var s='<a href="#" onclick="agree(' + index + ')">同意</a>';
			s += "&nbsp;&nbsp;";
			s+='<a href="#" onclick="disAgree(' + index + ')">不同意</a>';
			return s;
		} else if (row.ORTYPE == "1") {
			return "";
		} 
	}
	//发货
	function agree(index) {
		flag = confirm("确定同意退款吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateOrdersReturn.do", {
				orid : row.ORID,
				ortype : 1
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
	//不同意退款
	function disAgree(index) {
		flag = confirm("确定不同意退款吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateOrdersReturn.do", {
				orid : row.ORID,
				ortype : 2
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
		var ortype = $('#cc').val();
		$('#foodGrid').datagrid('options').url = "ordersReturnManage.do?ortype="
				+ ortype;
		$("#foodGrid").datagrid('reload');
	}


	
</script>
<body>
	<table class="easyui-datagrid" title="退款管理" id="foodGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'ordersReturnManage.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr style="text-align: center">
				<th data-options="field:'ORID',width:80,align:'center'">退款号</th>
				<th data-options="field:'OID',width:70,align:'center'">订单号</th>
				<th data-options="field:'ORTYPE',width:70,align:'center',formatter:statusFmt">退款进度</th>
				<th data-options="field:'hname',width:70,align:'center'">用户名</th>
				<th data-options="field:'gname',width:100,align:'center'">商品名</th>
				<th data-options="field:'gphotopic',width:130,align:'center',formatter:imgFormatter">商品图片</th>
				<th data-options="field:'onowprice',width:130,align:'center'">成交价格</th>
				<th data-options="field:'odealtime',width:140,align:'center',formatter:dataFormat">成交时间</th>
				<th data-options="field:'ORSERVICE',width:140,align:'center',formatter:ORSERVICEFormat">服务类型</th>
				<th data-options="field:'ORSTATUS',width:140,align:'center',formatter:ORSTATUSFormat">商品状态</th>
				<th data-options="field:'OREASON',width:140,align:'center',formatter:OREASONFormat">退款原因</th>
				<th data-options="field:'ORDESC',width:140,align:'center'">退款说明</th>
				<th data-options="field:'ORPHOTO',width:70,align:'center',formatter:imgFormatter">实物拍照</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<span>退货状态:</span> <select
			id="cc" class="easyui-combobox" name="dept" style="width: 200px;">
			<option value="">全部</option>
			<option value="0">申请中</option>
			<option value="1">已退款</option>
			<option value="2">拒绝退款</option>
		</select> <a class="easyui-linkbutton" plain="true" onclick="doSearch()">搜索</a>
	</div>

</body>
</html>