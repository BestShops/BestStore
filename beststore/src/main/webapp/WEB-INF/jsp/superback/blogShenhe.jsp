<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品管理</title>
<%@ include file="easyuiLink.jsp"%>
</head>
<script>
	//图片格式化
	function imgFormatter(value, row, index) {
		if (value != null && value != "") {
			value = '<img style="width:80px;height:40px" src="${basePath}/img/'+value+'">';
			return value;
		}
	}
	//时间格式化
	function dataFormat(value){
		if(value!=null && value!=""){
			var d=new Date(value);
			value=d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()+" "+d.getHours()+":"+d.getMinutes()+":"+d.getSeconds();
			return value;
		}
		return "";
	}
	//博客状态
	function statusFmt(value, row, index) {
		var data = $("#blogShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.gstatus == "0") {
			return "审核中";
		} else if(row.gstatus=="1"){
			return "发布中";
		}else if(row.gstatus=="2"){
			return "审核未通过";
		}else if(row.gstatus=="3"){
			return "删除";
		}
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#blogShenheGrid").datagrid('getData');
		var row = data.rows[index];
		if(row.gstatus=="3"){
			var s = '<a href="#" onclick="openEdit(' + index + ')">修改</a>';
			s += "&nbsp;&nbsp;";
			s += '<a href="#" onclick="delInfo(' + index + ')">删除</a>';
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
			var data = $("#blogShenheGrid").datagrid('getData');
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
					alert(d.data);
					$("#editWin").dialog('close');
					$("#blogShenheGrid").datagrid('reload');
				} else {
					alert(d.data);
				} 
	    	}
		});

	}
	
    function doSearch(){
    	$('#blogShenheGrid').datagrid('load',{
    		sid: $('#sid').val(),
    		tid: $('#tid').val()
    	});
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
					url:'${basePath}/StudentServlet?op=queryAjax',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr>
				<th data-options="field:'sid',width:80,align:'center'">店铺id</th>
				<th data-options="field:'bid',width:80,align:'center'">博客id</th>
				<th data-options="field:'btitle',width:100,align:'center'">博客标题</th>
				<th data-options="field:'bphoto',width:120,align:'center',formatter:imgFormatter">博客图</th>
				<th data-options="field:'bdesc',width:220,align:'center'">博客描述</th>
				<th data-options="field:'btime',width:100,align:'center',formatter:dataFormat">发布时间</th>
				<th data-options="field:'bstatus',width:100,align:'center',formatter:statusFmt">博客状态</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	
	<div id="editWin" class="easyui-dialog" title="博客审核"
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
				<td colspan="2" align="center">博客状态：</td>
				<td>
					<select name="bstatus" class="easyui-combobox" style="width: 200px">  
    					<option value="0">审核中</option>  
    					<option value="1">审核通过</option>  
    					<option value="2">审核未通过</option>  
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
    	<span>店铺ID:</span>
    	<input id="sid" style="line-height:26px;border:1px solid #ccc">
    	<span>博客ID:</span>
    	<input id="bid" style="line-height:26px;border:1px solid #ccc">
    	<a href="#" class="easyui-linkbutton" plain="true" onclick="doSearch()">查找</a>
    </div>
	
</body>
</html>