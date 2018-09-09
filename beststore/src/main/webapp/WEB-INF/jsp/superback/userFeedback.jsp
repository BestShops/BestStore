<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户反馈</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<script>
//时间格式化
function dataFormat(value){
	if(value!=null && value!=""){
		var d=new Date(value);
		value=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
		return value;
	}
	return "";
}
//审核状态
function statusFmt(value, row, index) {
	var data = $("#userfeedbackGrid").datagrid('getData');
	var row = data.rows[index];
	if (row.gstatus == "0") {
		return "未审核";
	} else if(row.gstatus=="1"){
		return "已审核";
	}
}

//操作
function fmtDo(value, row, index) {
	var data = $("#userfeedbackGrid").datagrid('getData');
	var row = data.rows[index];
	if(row.gstatus=="3"){
		var s = '<a href="#" onclick="openEdit(' + index + ')">修改</a>';
		return s;
	}else if(row.gstatus=="4"){
		return "";
	}else if(row.gstatus == "0" || row.gstatus == "1" || row.gstatus == "2"){
		var s = '<a href="#" onclick="openEdit(' + index + ')">修改</a>';
		s += "&nbsp;&nbsp;";
		s += '<a href="#" onclick="removeGoods(' + index + ')">下架</a>';
		return s;
	}
}

function openEdit(index){
	// 打开窗口
	$("#editWin").dialog('open');

	if(index != null){
		// 获取表格里面的数据
		var data = $("#storeGrid").datagrid('getData');
		var row = data.rows[index];
		// 表单加载数据
		$("#form1").form('load', row);
	} 

}

function save(){
	$("#form1").form( 'submit', {
    	success:function(data){
   			// 使用eval函数将 json 字符串转成 对象 d
			eval("var d =" + data);
			if(d.code == "1"){
				$.message(d.data);
				$("#editWin").dialog('close');
				$("#storeGrid").datagrid('reload');
			} else {
				$.message({
                    message:d.data,
                    type:'error'
                });
			} 
    	}
	});

}

function doSearch(){
	$('#userfeedbackGrid').datagrid('load',{
		gstatus: $('#status').val()
	});
}
</script>
<body>
<!-- 
	使用 easyui 的 datagrid 控件,以 AJAX 的方式查询数据 
	easyui 控件接收 json 格式的数据
-->
	
	<table class="easyui-datagrid" title="用户反馈" id="userfeedbackGrid"
		data-options="
			fit:true,
			rownumbers:true,
			singleSelect:true,
			collapsible:true,
			pagination:true,
			pageSize:5,
			pageList:[5,10,15,20,25],
			url:'',
			method:'post'">
		<thead>
			<tr>
				<th data-options="field:'hid',width:100,align:'center'">用户id</th>
				<th data-options="field:'hname',width:100,align:'center'">用户名</th>
				<th data-options="field:'gid',width:100,align:'center'">违规商品id</th>
				<th data-options="field:'gname',width:100,align:'center'">违规商品名</th>
				<th data-options="field:'bid',width:100,align:'center'">违规博客号</th>
				<th data-options="field:'pinfo',width:200,align:'center'">反馈内容</th>
				<th data-options="field:'time',width:200,align:'center',formatter:dataFormat">反馈时间</th>
				<th data-options="field:'status',width:200,align:'center',formatter:statusFmt">审核状态</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="editWin" class="easyui-dialog" title="违规信息状态"
		style="width: 320px; height: 150px; padding: 10px" 
		data-options="iconCls:'icon-save',closed:true,modal:true">
		<form action="${basePath }/order.servlet" id="form1">
			<input type="hidden" id="op" name="op" value="mod">
		<table>
			<tr>
				<td>
					<input name="roid" type="hidden">
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">商品或博客状态：</td>
				<td>
					<select name="status" class="easyui-combobox" style="width: 200px">  
    					<option value="0">下架或删除</option>  
    					<option value="1">正常</option>  
					</select>  
				</td>
			</tr>
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-save'" style="width: 80px"
							onclick="save()">保存</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 80px"
							onclick='$("#editWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
	</div>
	
	<div id="tb" style="padding:3px 50px;">
    	<select id="status">
    		<option>审核状态</option>
    		<option>未审核</option>
    		<option>已审核</option>
    	</select>
    	<a href="#" class="easyui-linkbutton" plain="true" onclick="doSearch()">查找</a>
    </div>
	
</body>
</html>