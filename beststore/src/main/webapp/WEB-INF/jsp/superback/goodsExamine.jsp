<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品审核</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<script>
	//图片格式化
	function imgFormatter(value, row, index) {
		if (value != null && value != "") {
			value = '<img style="width:80px;height:40px" src="${basePath}/upload/'+value+'">';
			return value;
		}
	}
	//时间格式化
	function dataFormat(value) {
		if (value != null && value != "") {
			var d = new Date(value);
			value = d.getFullYear() + "-" + (d.getMonth() + 1) + "-"
					+ d.getDate() + " " + d.getHours() + ":" + d.getMinutes()
					+ ":" + d.getSeconds();
			return value;
		}
		return "";
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#goodsShenheGrid").datagrid('getData');
		var row = data.rows[index];
		var s = '<a href="#" style="color:green" onclick="examineSuccess(' + index + ')">通过</a>';
		s += "&nbsp;&nbsp;";
		s += '<a href="#" style="color:red" onclick="examineFail(' + index + ')">不通过</a>';
		return s;
	}

	//通过
	function examineSuccess(index) {
		flag = confirm("确定商品审核通过吗?");
		var data = $("#goodsShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateGoods.do", {
				gid : row.gid,
				gstatus:1
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#goodsShenheGrid").datagrid('reload');
					alert(d.data);
				} else {
					alert(d.data);
				}
			});
		}
	}
	
	//不通过
	function examineFail(index) {
		flag = confirm("确定商品审核不通过吗?");
		var data = $("#goodsShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateGoods.do", {
				gid : row.gid,
				gstatus:2
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#goodsShenheGrid").datagrid('reload');
					alert(d.data);
				} else {
					alert(d.data);
				}
			});
		}
	}
</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->
	<table class="easyui-datagrid" title="商品审核" id="goodsShenheGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'goodsExamine.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr>
				<th data-options="field:'sname',width:100,align:'center'">店铺名</th>
				<th data-options="field:'gid',width:80,align:'center'">商品号</th>
				<th data-options="field:'gname',width:150,align:'center'">商品名</th>
				<th data-options="field:'gphotopic',width:140,align:'center',formatter:imgFormatter">商品图片</th>
				<th data-options="field:'gpublish',width:150,align:'center',formatter:dataFormat">上架时间</th>
				<th data-options="field:'gdesc',width:220,align:'center'">描述</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>

</body>
</html>