<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>店铺管理</title>
<%@ include file="easyuiLink.jsp"%>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/message.css">
</head>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>
<script>
	//时间格式化
	function dataFormat(value) {
		 if(value!=null && value!=""){
			var d=new Date(value);
			value=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			return value;
		}
		return ""; 
	}
	//店铺状态
	function statusFmt(value, row, index) {
		var data = $("#storeGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.sstatus == "0") {
			return "<span style='color:red'>已下架</span>";
		} else if (row.sstatus == "1") {
			return "<span style='color:green'>正常</span>";
		}
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#storeGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.sstatus == "0") {
			return '<a href="#" style="color:green" onclick="shelfGoods(' + index + ')">上架</a>';
		} else if (row.sstatus == "1") {
			return '<a href="#" style="color:red" onclick="removeGoods(' + index + ')">下架</a>';
		} 
	}

	//上架
	function shelfGoods(index) {
		flag = confirm("确定上架该店铺吗?");
		var data = $("#storeGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateStoreStatus.do", {
				sid : row.sid,
				sstatus:1
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					$("#storeGrid").datagrid('reload');
					$.message(d.data);
				} else {
					$.message({
                        message:d.data,
                        type:'error'
                    });
				}
			});
		}
	}
	
	//下架
	function removeGoods(index) {
		flag = confirm("确定下架该店铺吗?");
		var data = $("#storeGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateStoreStatus.do", {
				sid : row.sid,
				sstatus:0
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					$("#storeGrid").datagrid('reload');
					$.message(d.data);
				} else {
					$.message({
                        message:d.data,
                        type:'error'
                    });
				}
			});
		}
	}
	function doSearch() {
		var sstatus = $('#cc').val();
		$('#storeGrid').datagrid('options').url = "storeFindAllStore.do?sstatus="
				+ sstatus;
		$("#storeGrid").datagrid('reload');
	}
	
</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->

	<table class="easyui-datagrid" title="店铺管理" id="storeGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'storeFindAllStore.do',		
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr>
				<th data-options="field:'sid',width:80,align:'center'">店铺id</th>
				<th data-options="field:'sname',width:100,align:'center'">店铺名</th>
				<th data-options="field:'sgrade',width:80,align:'center'">店铺评分</th>
				<th
					data-options="field:'sstatus',width:80,align:'center',formatter:statusFmt">店铺状态</th>
				<th
					data-options="field:'stime',width:200,align:'center',formatter:dataFormat">店铺创立时间</th>
				<th data-options="field:'sdesc',width:220,align:'center'">店铺说明</th>
				<th data-options="field:'hname',width:220,align:'center'">店铺创立人</th>
				<th
					data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<span>店铺状态:</span> <select id="cc" class="easyui-combobox" name="dept"
			style="width: 200px;">
			<option value="">全部</option>
			<option value="0">已下架</option>
			<option value="1">正常</option>
		</select> <a class="easyui-linkbutton" plain="true" onclick="doSearch()">搜索</a>
	</div>

	<div id="editWin" class="easyui-dialog" title="店铺状态"
		style="width: 320px; height: 150px; padding: 10px"
		data-options="iconCls:'icon-save',closed:true,modal:true">
		<form action="${basePath }/order.servlet" id="form1">
			<input type="hidden" id="op" name="op" value="mod">
			<table>
				<tr>
					<td><input name="roid" type="hidden"></td>
				</tr>
				<tr>
					<td colspan="2" align="center">店铺状态：</td>
					<td><select name="status" class="easyui-combobox"
						style="width: 200px">
							<option value="0">下架</option>
							<option value="1">正常</option>
					</select></td>
				</tr>
				<tr>
					<td align="right" colspan="3"><a class="easyui-linkbutton"
						data-options="iconCls:'icon-save'" style="width: 80px"
						onclick="save()">保存</a> <a class="easyui-linkbutton"
						data-options="iconCls:'icon-cancel'" style="width: 80px"
						onclick='$("#editWin").dialog("close");'>取消</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>