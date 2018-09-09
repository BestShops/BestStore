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
function openEdit1(){
	//添加
	$("#editWin").dialog('open');
	//将表二表三隐藏
	document.getElementById('form1').style.display='block'; 
	document.getElementById('form2').style.display='none'; 
	document.getElementById('form3').style.display='none'; 
	$("#saveButton1").unbind("click").click(addSave);
	op1.value = "add";
	$("#form1").form('load',{
		tid1 : "",
		tid2 : "",
		tparentname : ""
	});
	$('#tid1').combobox('select', '1');
	$('#tid2').combobox('clear');
}

$(function() {
	//商品类别
	var tid1 = $("#tid1").combobox({
		url : "findAllInfo.do",
		editable : false, //不可编辑状态
		cache : false,
		panelHeignt : '150', //自动高度适合
		valueField : 'tid',
		textField : 'tpriname',
		onSelect : function(record) {
			tid2.combobox({
				url : "findAllInfo.do?tid1=" + record.tid,
				cache : false,
				panelHeignt : '150', //自动高度适合
				valueField : 'tid2',
				textField : 'tname2'
			}).combobox('clear');
		}
	});
	$('#tid1').combobox('select', '1');
	
	var tid2 = $("#tid2").combobox({
		url : "findAllInfo.do?tid1=" + tid1.val(),
		cache : false,
		panelHeignt : '150', //自动高度适合
		valueField : 'tid2',
		textField : 'tname2'
	});
	
});

function addSave(){
	var t1 = $("#tid1").combobox('getValue');
	var t2 = $("#tid2").combobox('getValue');
	var t3 = $("#tparentname").textbox('getValue');
	
	if( (t2 == null || t2 == '') && (t3 == null || t3 == '') ){
		alert("商品类别不能为空!");
		return;
	}
	//添加
	$("#form1").form( 'submit', {
	    success:function(data){
	   		// 使用eval函数将 json 字符串转成 对象 d
			eval("var d =" + data);
			if(d.code == "1"){
				//成功
				$("#editWin").dialog('close');
				$("#goodsTypeGrid1").datagrid('reload');
				$("#goodsTypeGrid2").datagrid('reload');
				$("#goodsTypeGrid3").datagrid('reload');
				alert("添加成功！");
			} else {
				alert(d.data);
			} 
	    }
	});
}





function fmtDo2(value, row, index){
	var s = '<a href="#" onclick="openEdit2('+index+')">修改</a>';
	s += "&nbsp;&nbsp;";
	s +='<a href="#" onclick="del2('+index+')">删除</a>';
	return s;
}

function openEdit2(index){
	// 打开窗口
	$("#editWin").dialog('open');
	if(index != null){
		//修改表二数据
		//表单加载数据
		var data = $("#goodsTypeGrid2").datagrid('getData');
		var row = data.rows[index];
		
		//将表一表三隐藏
		document.getElementById('form2').style.display='block'; 
		document.getElementById('form1').style.display='none'; 
		document.getElementById('form3').style.display='none'; 
		//表单加载数据
		$("#form2").form('load',row);
		Formfid2.value = row.tid2;
		$("#saveButton2").unbind("click").click(modSave2);
		op2.value = "modify2";
	}
}

function modSave2(){
	flag = confirm("确定修改此商品类别吗?");
	if(flag){
		if($("#tpriname2").val() == "" || $("#tpriname2").val() == null){
			alert("商品类别不能为空!");
			return;
		}
		$("#form2").form("submit",{
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editWin").dialog('close');
					$("#goodsTypeGrid2").datagrid('reload');
				}
				alert(d.data);
			}
		});
	}
}

function del2(index){
	flag = confirm("确定删除该类别吗?");
	var data = $("#goodsTypeGrid2").datagrid('getData');
	var row = data.rows[index];
	if(flag){
		$.post("removeType.do",{
			tid : row.tid2
		},function(data){
			eval("var d=" + data);
			if (d.code == "1") {
				//成功
				$("#goodsTypeGrid2").datagrid('reload');
			}
			alert(d.data);
		});
	}
}

function fmtDo3(value, row, index){
	var s = '<a href="#" onclick="openEdit3('+index+')">修改</a>';
	s += "&nbsp;&nbsp;";
	s +='<a href="#" onclick="del3('+index+')">删除</a>';
	return s;
}

function openEdit3(index){
	// 打开窗口
	$("#editWin").dialog('open');
	if(index != null){
		//修改表三
		//表单加载数据
		var data = $("#goodsTypeGrid3").datagrid('getData');
		var row = data.rows[index];
		//将表一表二隐藏
		document.getElementById('form1').style.display='none'; 
		document.getElementById('form2').style.display='none'; 
		document.getElementById('form3').style.display='block'; 
		//表单加载数据
		$("#form3").form('load',row);
		Formfid3.value = row.tid3;
		$("#saveButton3").unbind("click").click(modSave3);
		op3.value = "modify3";
	}
}

function modSave3(){
	flag = confirm("确定修改此商品类别吗?");
	if(flag){
		if($("#tpriname3").val() == "" || $("#tpriname3").val() == null){
			alert("商品类别不能为空!");
			return;
		}
		$("#form3").form("submit",{
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editWin").dialog('close');
					$("#goodsTypeGrid3").datagrid('reload');
				} 
				alert(d.data);
			}
		});
	}
}

function del3(index){
	flag = confirm("确定删除该类别吗?");
	var data = $("#goodsTypeGrid3").datagrid('getData');
	var row = data.rows[index];
	if(flag){
		$.post("removeType.do",{
			tid : row.tid3
		},function(data){
			eval("var d=" + data);
			if (d.code == "1") {
				//成功
				$("#goodsTypeGrid3").datagrid('reload');
			} 
			alert(d.data);
		});
	}
}


</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->
<div class="easyui-panel" title="商品类别管理" collapsible="true" style="width:100%;height:690px;">
	<div class="easyui-layout" fit="true">
		<div region="center" style="border:1px solid #ccc;">
			<div class="easyui-layout" fit="true">
				<div region="west" style="border:1px solid #ccc;width:33%;">
					<table class="easyui-datagrid" title="主类别" id="goodsTypeGrid1" url="findAllInfo.do" 
						data-options="fit:true,
									rownumbers:true,
									singleSelect:true,
									collapsible:true,
									method:'get',
									toolbar:'#tb'">
						<thead>
							<tr>
								<th data-options="field:'tid',width:80,align:'center'">类别id</th>
								<th data-options="field:'tpriname',width:80,align:'center'">商品类别</th>
							</tr>
						</thead>
					</table>
				</div>
				<div region="center" border="false" style="border:1px solid #ccc;">
					<div class="easyui-layout" fit="true">
						<div region="center" border="false" style="border:1px solid #ccc;width:50%;">
							<table class="easyui-datagrid" title="副类别" id="goodsTypeGrid2" url="" 
								data-options="fit:true,
											rownumbers:true,
											singleSelect:true,
											collapsible:true,
											method:'post'">
								<thead>
									<tr>
										<th data-options="field:'tid2',width:80,align:'center'">类别id</th>
										<th data-options="field:'tname2',width:80,align:'center'">商品类别</th>
										<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo2">操作</th>
									</tr>
								</thead>
							</table>
						</div>
						<div region="east" border="false" style="border:1px solid #ccc;width:50%;">
							<table class="easyui-datagrid" title="类别" id="goodsTypeGrid3" url=""	
									data-options="fit:true,
												rownumbers:true,
												singleSelect:true,
												collapsible:true,
												method:'post'">
								<thead>
									<tr>
										<th data-options="field:'tid3',width:80,align:'center'">类别id</th>
										<th data-options="field:'tname3',width:80,align:'center'">商品类别</th>
										<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo3">操作</th>
									</tr>
								</thead>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	
	<div id="tb" style="padding: 5px; height: auto">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="openEdit1()">添加</a>
	</div>

	<div id="editWin" class="easyui-dialog" title="商品类别管理"
		style="width: 330px; height:200px; padding: 10px;" 
		data-options="iconCls:'icon-save',closed:true,modal:true">
		
		<form action="goodsType.do" id="form1" method="post">
			<input type="hidden" id="op1" name="op">
		<table>
			<tr>
				<td>主类别：</td>
				<td>
					<select id="tid1" name="type1" style="width:100%;"></select> 
				</td>
			</tr>
			<tr>
				<td>副类别：</td>
				<td>
					<select id="tid2" name="type2" style="width: 100%;"></select>
				</td>
			</tr>
			<tr>
				<td>类别：</td>
				<td>
					<input class="easyui-textbox" id="tparentname" name="tparentname" style="width: 100%;">
				</td>
			</tr>
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-save'" style="width: 100px"
							id="saveButton1">保存</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 100px"
							onclick='$("#editWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
		
		<form action="goodsType.do" id="form2" method="post">
			<input type="hidden" id="op2" name="op">
			<input type="hidden" id="Formfid2" name="tid2">
		<table>
			<tr>
				<td>商品主类别：</td>
				<td>
					<input class="easyui-textbox" id="tparentid2" name="tparentid2" disabled="false" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td>商品类别：</td>
				<td>
					<input class="easyui-textbox" id="tpriname2" name="tname2" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-save'" style="width: 100px"
							id="saveButton2">保存</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 100px"
							onclick='$("#editWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
		
		<form action="goodsType.do" id="form3" method="post">
			<input type="hidden" id="op3" name="op">
			<input type="hidden" id="Formfid3" name="tid3">
		<table>
			<tr>
				<td>商品主类别：</td>
				<td>
					<input class="easyui-textbox" id="tparentname2" name="tparentid2" disabled="false" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td>商品副类别：</td>
				<td>
					<input class="easyui-textbox" id="tparentid3" name="tparentid3" disabled="false" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td>商品类别：</td>
				<td>
					<input class="easyui-textbox" id="tpriname3" name="tname3" style="width: 100%">
				</td>
			</tr> 
			<tr>
				<td align="right" colspan="3">
					<a class="easyui-linkbutton" data-options="iconCls:'icon-save'" style="width: 100px"
							id="saveButton3">保存</a>
					<a class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" style="width: 100px"
							onclick='$("#editWin").dialog("close");'>取消</a>
				</td>
			</tr>
		</table>
		</form>
		
	</div>
	
	
</body>

<script>

$("#goodsTypeGrid1").datagrid({  
	onClickRow:function(rowIndex, rowData){
		var tid1 = rowData["tid"];
        $("#goodsTypeGrid2").datagrid({url:'findAllInfo.do?tid1='+tid1});
		
        a2 = rowData["tpriname"];
        
        $("#tparentid2").textbox("setValue",a2);
        tparentid2 = tid1;
        $("#goodsTypeGrid3").datagrid('loadData', { total: 0, rows: [] });
	}
});

$("#goodsTypeGrid2").datagrid({  
	onClickRow:function(rowIndex, rowData){
		var tid2 = rowData["tid2"];
        $("#goodsTypeGrid3").datagrid({url:'findAllInfo.do?tid2='+tid2});
        
        $("#tparentname2").textbox("setValue",a2);
        
        $("#tparentid3").textbox("setValue",rowData["tname2"]);
        tparentid3 = tid2;
	}
});


</script>
</html>