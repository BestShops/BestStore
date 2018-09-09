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
		if (row.bstatus == "0") {
			return "<span style='color:red'>审核中</span>";
		} else if (row.bstatus == "1") {
			return "<span style='color:green'>发布中</span>";
		} else if (row.bstatus == "2") {
			return "<span style='color:red'>审核未通过</span>";
		} else if (row.bstatus == "3") {
			return "<span style='color:red'>已下架</span>";
		} else if (row.bstatus == "4") {
			return "<span style='color:red'>已删除</span>";
		} 
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.bstatus == "3") {
			var s = '<a href="#" onclick="shelfGoods(' + index + ')">上架</a>';
			s += "&nbsp;&nbsp;";
			s += '<a href="#" onclick="delGoods(' + index + ')">删除</a>';
			return s;
		} else if (row.bstatus == "4") {
			return "";
		} else if (row.bstatus == "0" || row.bstatus == "1"
				|| row.bstatus == "2") {
			var s = '<a href="#" onclick="openEdit(' + index + ')">修改</a>';
			s += "&nbsp;&nbsp;";
			s += '<a href="#" onclick="removeGoods(' + index + ')">下架</a>';
			return s;
		}
	}
	
	//上架
	function shelfGoods(index) {
		flag = confirm("确定上架该博客吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateBlog.do", {
				bid : row.bid,
				bstatus : 0
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
				} 
				alert(d.data);
			});
		}
	}

	//删除
	function delGoods(index) {
		flag = confirm("确定删除该博客吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateBlog.do", {
				bid : row.bid,
				bstatus : 4
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
				} 
				alert(d.data);
			});
		}
	}
	
	//下架
	function removeGoods(index) {
		flag = confirm("确定下架该博客吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateBlog.do", {
				bid : row.bid,
				bstatus : 3
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
				} 
				alert(d.data);
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
			//表单加载数据
			$("#form1").form('load', row);
			bphoto.src = "${basePath}/upload/" + row.bphoto;
			Formfid.value = row.bid;
			$("#saveButton").unbind("click").click(modSave);
			op.value = "modify";
		} else {
			$("#saveButton").unbind("click").click(save);
			op.value = "add";
			$("#form1").form('load', {
				btitle : "",
				bdesc : ""
			});
			bphoto.src = "${basePath }/images/noimg.gif";
			Formfid.value = "";
		}
	}

	//修改保存
	function modSave() {
		flag = confirm("修改之后博客需要去推至审核哦,确定修改吗?");
		if(flag){
			if ($("#btitle").val() == "" || $("#btitle").val() == null) {
				alert("博客标题不能为空");
				return;
			} else if ($("#bdesc").val() == "" || $("#bdesc").val() == null) {
				alert("博客描述不能为空");
				return;
			} 
			$("#form1").form("submit", {
				success : function(data) {
					//使用eval函数将json字符串转为对象d 
					eval("var d=" + data);
					if (d.code == "1") {
						//成功
						$("#editAdd").dialog('close');
						$("#foodGrid").datagrid('reload');
					}
					alert(d.data);
				}
			});
		}
		
	}

	//添加保存按钮
	function save() {
		if ($("#btitle").val() == "" || $("#btitle").val() == null) {
			alert("博客标题不能为空");
			return;
		} else if ($("#bdesc").val() == "" || $("#bdesc").val() == null) {
			alert("博客描述不能为空");
			return;
		} 
		$("#form1").form("submit", {
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editAdd").dialog('close');
					$("#foodGrid").datagrid('reload');
				}
				alert(d.data);
			}
		});
	}

	//图片预览
	function showPic() {
		var file = document.getElementById("file");
		var reader = new FileReader();
		reader.readAsDataURL(file.files[0]);
		reader.onload = function(e) {
			document.getElementById("bphoto").src = e.target.result;
		}
	}
	$(function(){
		$("#loadCourse").combobox({
			url:"${basePath }/GradeServlet?op=selectCourse",
			editable:false,   //不可编辑状态
			cache:false,
			panelHeignt:'150',  //自动高度适合
			valueField:'cid',
			textField:'cname'
		});
	});
	
	function doSearch() {
		var bstatus = $('#cc').val();
		$('#foodGrid').datagrid('options').url = "blogFindBySid.do?bstatus="
				+ bstatus;
		$("#foodGrid").datagrid('reload');
	}
</script>
<body>
	<table class="easyui-datagrid" title="博客管理" id="foodGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'blogFindBySid.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr style="text-align: center">
				<th data-options="field:'bid',width:80,align:'center'">博客号</th>
				<th data-options="field:'btitle',width:200,align:'center'">博客标题</th>
				<th data-options="field:'bphoto',width:120,align:'center',formatter:imgFormatter">图片路径</th>
				<th data-options="field:'bdesc',width:300,align:'center'">博客描述</th>
				<th data-options="field:'bstatus',width:90,align:'center',formatter:statusFmt">博客状态</th>
				<th data-options="field:'btime',width:150,align:'center',formatter:dataFormat">发布时间</th>
				<th data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="openEdit()">添加</a>&nbsp;&nbsp;&nbsp;<span>商品状态:</span> <select
			id="cc" class="easyui-combobox" name="dept" style="width: 200px;">
			<option value="">全部</option>
			<option value="0">审核中</option>
			<option value="1">上架中</option>
			<option value="2">审核未通过</option>
			<option value="3">已下架</option>
			<option value="4">已删除</option>
		</select> <a class="easyui-linkbutton" plain="true" onclick="doSearch()">搜索</a>
	</div>
	<div id="editAdd" class="easyui-dialog" title="添加博客"
		data-options="iconCls:'icon-save',closed:true,modal:true"
		style="width: 400px; height: 450px; padding: 10px">
		<form action="storeAddBlog.do" id="form1" method="post" enctype="multipart/form-data">
			<input type="hidden" name="op" id="op"> <input type="hidden"
				id="Formfid" name="bid">
			<table>
				<tr>
					<td>博客标题：</td>
					<td><input class="easyui-textbox" name="btitle" id="btitle"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>博客描述：</td>
					<td width="250px"><input class="easyui-textbox" name="bdesc" id="bdesc"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>点击图片<br>上传：
					</td>
					<td><img id="bphoto" alt="请上传照片" width="200px"
						height="150px" src="${basePath }/images/noimg.gif"
						onclick="file.click()"> <input id="file" name="file"
						type="file" style="display: none" onchange="showPic()"></td>
				</tr>
				<tr></tr>
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