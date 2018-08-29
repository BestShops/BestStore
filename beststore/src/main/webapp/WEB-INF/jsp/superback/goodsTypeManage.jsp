<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品类别管理</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<script>
function fmtDo(value, row, index){
	var s = '<a href="#" onclick="openEdit('+index+')">修改</a>';
	s += "&nbsp;&nbsp;";
	s +='<a href="#" onclick="del('+index+')">删除</a>';
	return s;
}


function openEdit(index){
	// 打开窗口
	$("#editWin").dialog('open');
	
	if(index != null){
		// 获取表格里面的数据
		var data = $("#goodsTypeGrid").datagrid('getData');
		var row = data.rows[index];
		// 表单加载数据
		$("#form1").form('load', row);
		$("#op").val("mod");
	} else {
		// 表单清空数据
		$("#form1").form('load', {
			raname:"",
			rapwd:""
		});
		
	}
	
}

function save(){
	$("#form1").form( 'submit', {
	    success:function(data){
	   		// 使用eval函数将 json 字符串转成 对象 d
			eval("var d =" + data);
			if(d.code == "1"){
				alert(d.data);
				$("#editWin").dialog('close');
				$("#goodsTypeGrid").datagrid('reload');
			} else {
				alert(d.data);
			} 
	    }
	});
}

function ensure(){
	$("#form2").form( 'submit',{
		success:function(data){
			// 使用eval函数将 json 字符串转成 对象 d
			eval("var d =" + data);
			if(d.code == "1"){
				alert(d.data);
				$("#delWin").dialog('close');
				$("#goodsTypeGrid").datagrid('reload');
			} else {
				alert(d.data);
			} 
		}
	})
	
}

function del(index){
	// 打开窗口
	$("#delWin").dialog('open');
	// 获取表格里面的数据
	var data = $("#goodsTypeGrid").datagrid('getData');
	var row = data.rows[index];
	// 表单加载数据
	$("#form2").form('load', row);
}

</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->
	<table class="easyui-datagrid" title="商品类别管理" id="goodsTypeGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'${basePath}/StudentServlet?op=queryAjax',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr>
				<th data-options="field:'tid',width:80,align:'center'">类别id</th>
				<th data-options="field:'tpriname',width:100,align:'center'">商品类别</th>
				<th data-options="field:'tparentid',width:100,align:'center'">商品父类id</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="tb" style="padding: 5px; height: auto">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
				onclick="openEdit()">添加</a>
	</div>

	<div id="editWin" class="easyui-dialog" title="商品类别管理"
		style="width: 450px; height: 200px; padding: 10px;" 
		data-options="iconCls:'icon-save',closed:true,modal:true">
		<form action="${basePath }/resadmin.servlet" id="form1">
			<input type="hidden" id="op" name="op" value="add">
		<table>
			<tr>
				<td>
					<input name="raid" type="hidden">
				</td>
			</tr>
			<tr>
				<td>类别id：</td>
				<td width="250px">
					<input class="easyui-textbox" name="tid" style="width: 100%">
				</td>
			<tr>
				<td>商品类别：</td>
				<td>
					<input class="easyui-textbox" name="tpriname" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td>商品父类id：</td>
				<td>
					<input class="easyui-textbox" name="tparentid" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-save'" style="width: 100px"
							onclick="save()">保存</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 100px"
							onclick='$("#editWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
	</div>

	<div id="delWin" class="easyui-dialog" title="提示"
		style="width: 220px; height: 140px; padding: 10px" 
		data-options="iconCls:'icon-no',closed:true,modal:true">
		<form action="${basePath }/resadmin.servlet" id="form2">
			<input type="hidden" id="op" name="op" value="del">
		<table>
			<tr>
				<td>
					<input name="raid" type="hidden">
				</td>
			</tr>
			<tr>
				<td>
					<input name="raname" type="hidden">
				</td>
			<tr>
			<tr>
				<td>您确定要删除这个商品类别吗?</td>
			</tr>
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-ok'" style="width: 80px"
							onclick="ensure()">确定</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 80px"
							onclick='$("#delWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	
</body>
</html>