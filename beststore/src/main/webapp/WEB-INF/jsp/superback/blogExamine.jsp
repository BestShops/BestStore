<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>超级后台管理</title>
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
		var s = '<a href="#" style="color:green" onclick="examineSuccess('
				+ index + ')">通过</a>';
		s += "&nbsp;&nbsp;";
		s += '<a href="#" style="color:red" onclick="examineFail(' + index
				+ ')">不通过</a>';
		return s;
	}

	//通过
	function examineSuccess(index) {
		flag = confirm("确定博客审核通过吗?");
		var data = $("#blogShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateBlog.do", {
				bid : row.BID,
				bstatus : 1
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					$("#blogShenheGrid").datagrid('reload');
				} 
				alert(d.data);
			});
		}
	}

	//不通过
	function examineFail(index) {
		flag = confirm("确定博客审核不通过吗?");
		var data = $("#blogShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateBlog.do", {
				bid : row.BID,
				bstatus : 2
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					$("#blogShenheGrid").datagrid('reload');
				} 
				alert(d.data);
			});
		}
	}

</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->
	<table class="easyui-datagrid" title="博客管理" id="blogShenheGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'blogExamine.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr>
				<th data-options="field:'SNAME',width:80,align:'center'">店铺名</th>
				<th data-options="field:'BID',width:80,align:'center'">博客号</th>
				<th data-options="field:'BTITLE',width:150,align:'center'">博客标题</th>
				<th data-options="field:'BPHOTO',width:150,align:'center',formatter:imgFormatter">图片</th>
				<th data-options="field:'BDESC',width:250,align:'center'">博客描述</th>
				<th data-options="field:'BTIME',width:200,align:'center',formatter:dataFormat">发布时间</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>

	
</body>
</html>