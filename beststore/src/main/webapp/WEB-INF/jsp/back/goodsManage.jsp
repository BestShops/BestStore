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
	//商品状态
	function statusFmt(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.gstatus == "0") {
			return "审核中";
		} else if(row.gstatus=="1"){
			return "上架中";
		}else if(row.gstatus=="2"){
			return "审核未通过";
		}else if(row.gstatus=="3"){
			return "已下架";
		}else if(row.gstatus=="4"){
			return "已删除";
		}
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
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

	//删除
	function delInfo(index) {
		flag = confirm("确定删除该学生吗?");
		if (flag) {
			$.post("${basePath}/StudentServlet", {
				op : "del",
				sid : row.sid
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
				} else {
					alert(d.data);
				}
			});
		}

	}

	//添加按钮
	function openEdit(index) {
		$("#editAdd").dialog('open');
		if (index != null) {
			//修改
			//获取表格里的数据
			var data = $("#foodGrid").datagrid('getData');
			var row = data.rows[index];
			$("#creditTr").show();
			//表单加载数据
			$("#form1").form('load', row);
			fimage.src = "${basePath}/img/" + row.photo;
			Formfid.value = row.sid;
			$("#saveButton").unbind("click").click(modSave);
			op.value = "modify";
		} else {
			$("#saveButton").unbind("click").click(save);
			op.value = "add";
			$("#creditTr").hide();
			$("#form1").form('load', {
				sname : "",
				age : "",
				address : "",
				tel : "",
				idcard : "",
				credit : ""
			});
			fimage.src = "${basePath }/images/noimg.gif";
			Formfid.value = "";
		}
	}

	//修改保存
	function modSave() {
		$("#form1").form("submit", {
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editAdd").dialog('close');
					$("#foodGrid").datagrid('reload');
					alert(d.data);
				} else {
					alert(d.data);
				}
			}
		});
	}

	//添加保存按钮
	function save() {
		//添加
		$("#form1").form("submit", {
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editAdd").dialog('close');
					$("#foodGrid").datagrid('reload');
					alert(d.data);
				} else {
					alert(d.data);
				}
			}
		});
	}

	function uploadImg() {
		//创建表单上传对象
		var fd = new FormData();
		//添加上传的图片,值是原生的HTML对象
		fd.append("photo", $("#file")[0].files[0]);
		$.ajax({
			url : "${basePath}/ImageUploadServlet",
			type : "post",
			data : fd,
			processData : false, //禁止jquery处理参数
			success : function(data) {
				if (data) {
					fimage.src = "${basePath}" + data;
					//将上传的路径写到photo名字
					photo.value = data;
				} else {
					alert("图片上传失败!");
				}
			}
		});
	}
</script>
<body>
	<!-- 使用easyUI的datagrid控件以ajax的方式查询数据,
	easyui控件接收json格式的数据 -->
	<table class="easyui-datagrid" title="商品管理" id="foodGrid"
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
			<tr style="text-align: center">
				<th data-options="field:'gid',width:80,align:'center'">商品号</th>
				<th data-options="field:'gname',width:100,align:'center'">商品名</th>
				<th data-options="field:'photopic',width:120,align:'center',formatter:imgFormatter">图片路径</th>
				<th data-options="field:'glastprice',width:80,align:'center'">原价</th>
				<th data-options="field:'gnowprice',width:80,align:'center'">现价</th>
				<th data-options="field:'gstatus',width:80,align:'center',formatter:statusFmt">商品状态</th>
				<th data-options="field:'gnumber',width:80,align:'center'">库存数</th>
				<th data-options="field:'tid',width:120,align:'center'">类别</th>
				<th data-options="field:'grade',width:80,align:'center'">评分</th>
				<th data-options="field:'gpublish',width:100,align:'center',formatter:dataFormat">上架时间</th>
				<th data-options="field:'gdesc',width:220,align:'center'">描述</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="openEdit()">添加</a>
	</div>
	<div id="editAdd" class="easyui-dialog" title="注册新生"
		data-options="iconCls:'icon-save',closed:true,modal:true"
		style="width: 400px; height: 450px; padding: 10px">
		<form action="${basePath }/StudentServlet" id="form1">
			<input type="hidden" name="op" id="op"> <input type="hidden"
				id="Formfid" name="sid">
			<table>
				<tr>
					<td>商品号：</td>
					<td width="250px"><input class="easyui-textbox" name="sname"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>商品名：</td>
					<td><input class="easyui-numberbox" name="age"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>原价：</td>
					<td width="250px"><input class="easyui-textbox" name="address"
						style="width: 100%" data-options="min:0,precision:2"></td>
				</tr>
				<tr>
					<td>现价：</td>
					<td><input class="easyui-numberbox" name="tel"
						style="width: 100%" data-options="min:0,precision:2"></td>
				</tr>
				<tr>
					<td>商品状态：</td>
					<td width="250px"><input class="easyui-textbox" name="idcard"
						style="width: 100%"></td>
				</tr>
				<tr id="creditTr">
					<td>库存数：</td>
					<td><input class="easyui-numberbox" name="credit"
						style="width: 100%" data-options="min:0,precision:0"></td>
				</tr>
				<tr id="creditTr">
					<td>类别：</td>
					<td><input class="easyui-numberbox" name="credit"
						style="width: 100%"></td>
				</tr>
				<tr id="creditTr">
					<td>描述：</td>
					<td><input class="easyui-numberbox" name="credit"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>点击图片<br>上传：
					</td>
					<td><input type="hidden" name="photo" id="photo"> <img
						id="fimage" alt="请上传照片" width="200px" height="150px"
						src="${basePath }/images/noimg.gif" onclick="file.click()"> <input
						id="file" type="file" style="display: none" onchange="uploadImg()"></td>
				</tr>
				<tr>
					<td align="right" colspan="3"><a class="easyui-linkbutton"
						data-options="iconCls:'icon-save'" style="width: 100px"
						id="saveButton">保存</a> <a class="easyui-linkbutton"
						data-options="iconCls:'icon-cancel'" style="width: 100px"
						onclick='$("#editAdd").dialog("close")'>取消</a></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>