<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Best Store店铺管理</title>
<%@ include file="easyuiLink.jsp"%>
<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet" href="css/message.css">
</head>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/message.min.js"></script>
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
		if (row.gstatus == "0") {
			return "<span style='color:red'>审核中</span>";
		} else if (row.gstatus == "1") {
			return "<span style='color:green'>上架中</span>";
		} else if (row.gstatus == "2") {
			return "<span style='color:red'>审核未通过</span>";
		} else if (row.gstatus == "3") {
			return "<span style='color:red'>已下架</span>";
		} else if (row.gstatus == "4") {
			return "<span style='color:red'>已删除</span>";
		}
	}

	//操作
	function fmtDo(value, row, index) {
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (row.gstatus == "3") {
			var s = '<a href="#" onclick="shelfGoods(' + index + ')">上架</a>';
			s += "&nbsp;&nbsp;";
			s += '<a href="#" onclick="delGoods(' + index + ')">删除</a>';
			return s;
		} else if (row.gstatus == "4") {
			return "";
		} else if (row.gstatus == "0" || row.gstatus == "1"
				|| row.gstatus == "2") {
			var s = '<a href="#" onclick="openEdit(' + index + ')">修改</a>';
			s += "&nbsp;&nbsp;";
			s += '<a href="#" onclick="removeGoods(' + index + ')">下架</a>';
			return s;
		}
	}
	//上架
	function shelfGoods(index) {
		flag = confirm("确定上架该商品吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateGoods.do", {
				gid : row.gid,
				gstatus : 0
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
					$.message(d.data);
				} else {
					$.message({
	                    message:d.data,
                        type:'warning'
                    });
				}
			});
		}
	}

	//删除
	function delGoods(index) {
		flag = confirm("确定删除该商品吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateGoods.do", {
				gid : row.gid,
				gstatus : 4
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
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
		flag = confirm("确定下架该商品吗?");
		var data = $("#foodGrid").datagrid('getData');
		var row = data.rows[index];
		if (flag) {
			$.post("operateGoods.do", {
				gid : row.gid,
				gstatus : 3
			}, function(data) {
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#foodGrid").datagrid('reload');
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
			gphotopic.src = "${basePath}/upload/" + row.gphotopic;
			$('#tid1').combobox('select', row.name1);
			$('#tid2').combobox('select', row.name2);
			$('#tid3').combobox('select', row.name3);
			Formfid.value = row.gid;
			$("#saveButton").unbind("click").click(modSave);
			op.value = "modify";
		} else {
			$("#saveButton").unbind("click").click(save);
			op.value = "add";
			$("#form1").form('load', {
				gname : "",
				glastprice : "",
				gnowprice : "",
				gnumber : "",
				tid1 : "",
				gdesc : "",
				tid2 : "",
				tid3:""
			});
			gphotopic.src = "${basePath }/images/noimg.gif";
			Formfid.value = "";
		}
	}

	//修改保存
	function modSave() {
		flag = confirm("修改之后商品需要去推至审核哦,确定修改吗?");
		if (flag) {
			if ($("#gname").val() == "" || $("#gname").val() == null) {
				$.message({
					message:"商品名不能为空",
                    type:'warning'
                });
				return;
			}else if ($("#gname").val().length>50) {
				$.message({
					message:"商品名不能超过50个字符",
                    type:'warning'
                });
				return;
			} else if ($("#gnowprice").val() == ""
					|| $("#gnowprice").val() == null) {
				$.message({
					message:"商品现价不能为空",
                    type:'warning'
                });
				return;
			} else if ($("#gnumber").val() == "" || $("#gnumber").val() == null || $("#gnumber").val()<=0) {
				$.message({
					message:"商品库存数不能为空",
                    type:'warning'
                });
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
						$.message(d.data);
					} else {
						$.message({
							message:d.data,
	                        type:'error'
	                    });
					}
				}
			});
		}
	}

	//添加保存按钮
	function save() {
		if ($("#gname").val() == "" || $("#gname").val() == null) {
			$.message({
				message:"商品名不能为空",
                type:'warning'
            });
			}
			return;
		}else if ($("#gname").val().length>50) {
			$.message({
				message:"商品名不能超过50个字符",
                type:'error'
            });
			}
			return;
		} else if ($("#gnowprice").val() == "" || $("#gnowprice").val() == null) {
			$.message({
				message:"商品现价不能为空",
                type:'error'
            });
			return;
		} else if ($("#gnumber").val() == "" || $("#gnumber").val() == null || $("#gnumber").val()<=0) {
			$.message({
				message:"商品库存数不能为空",
                type:'error'
            });
			return;
		} 
		//添加
		$("#form1").form("submit", {
			success : function(data) {
				//使用eval函数将json字符串转为对象d 
				eval("var d=" + data);
				if (d.code == "1") {
					//成功
					$("#editAdd").dialog('close');
					$("#foodGrid").datagrid('reload');
					$.message(d.data);
				} else {
					$.message({
						message:d.data,
		                type:'error'
		            });
				}
			}
		});
	}

	//图片预览
	function showPic() {
		var file = document.getElementById("file");
		var reader = new FileReader();
		reader.readAsDataURL(file.files[0]);
		reader.onload = function(e) {
			document.getElementById("gphotopic").src = e.target.result;
		}
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
					editable : false, //不可编辑状态
					cache : false,
					panelHeignt : '150', //自动高度适合
					valueField : 'tid2',
					textField : 'tname2'
				}).combobox('clear');
				tid3.combobox({
					editable : false, //不可编辑状态
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
			editable : false, //不可编辑状态
			cache : false,
			panelHeignt : '150', //自动高度适合
			valueField : 'tid2',
			textField : 'tname2',
			onSelect : function(record) {
				tid3.combobox({
					url : "findAllInfo.do?tid2=" + record.tid2,
					editable : false, //不可编辑状态
					cache : false,
					panelHeignt : '150', //自动高度适合
					valueField : 'tid3',
					textField : 'tname3'
				}).combobox('clear');
			}
		});
		
		var tid3 = $("#tid3").combobox({
			url : "findAllInfo.do?tid2=" + tid2.val(),
			editable : false, //不可编辑状态
			cache : false,
			panelHeignt : '150', //自动高度适合
			valueField : 'tid3',
			textField : 'tname3'
		});
		
	});

	function doSearch() {
		var gstatus = $('#cc').val();
		$('#foodGrid').datagrid('options').url = "goodsFindAll.do?gstatus="
				+ gstatus;
		$("#foodGrid").datagrid('reload');
	}
</script>
<body>
	<table class="easyui-datagrid" title="商品管理" id="foodGrid"
		data-options="fit:true,
					rownumbers:true,
					singleSelect:true,
					collapsible:true,
					pagination:true,
					pageList:[5,10,15,20,25],
					pageSize:5,
					url:'goodsFindAll.do',
					method:'post',
					toolbar:'#tb'
			">
		<thead>
			<tr style="text-align: center">
				<th data-options="field:'gid',width:80,align:'center'">商品号</th>
				<th data-options="field:'gname',width:100,align:'center'">商品名</th>
				<th
					data-options="field:'gphotopic',width:120,align:'center',formatter:imgFormatter">图片路径</th>
				<th data-options="field:'glastprice',width:80,align:'center'">原价</th>
				<th data-options="field:'gnowprice',width:80,align:'center'">现价</th>
				<th
					data-options="field:'gstatus',width:80,align:'center',formatter:statusFmt">商品状态</th>
				<th data-options="field:'gnumber',width:80,align:'center'">库存数</th>
				<th data-options="field:'concatName',width:120,align:'center'">类别</th>
				<th data-options="field:'grade',width:80,align:'center'">评分</th>
				<th
					data-options="field:'gpublish',width:100,align:'center',formatter:dataFormat">上架时间</th>
				<th data-options="field:'gdesc',width:220,align:'center'">描述</th>
				<th
					data-options="field:'dogid',width:180,align:'center',formatter:fmtDo">操作</th>
			</tr>
		</thead>
	</table>
	<div id="tb" style="padding: 5px; height: auto">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="openEdit()">添加</a>&nbsp;&nbsp;&nbsp; <span>商品状态:</span> <select
			id="cc" class="easyui-combobox" name="dept" style="width: 200px;">
			<option value="">全部</option>
			<option value="0">审核中</option>
			<option value="1">上架中</option>
			<option value="2">审核未通过</option>
			<option value="3">已下架</option>
			<option value="4">已删除</option>
		</select> <a class="easyui-linkbutton" plain="true" onclick="doSearch()">搜索</a>
	</div>

	<div id="editAdd" class="easyui-dialog" title="编辑商品信息"
		data-options="iconCls:'icon-save',closed:true,modal:true"
		style="width: 400px; height: 450px; padding: 10px">
		<form action="storeAddGoods.do" id="form1" method="post"
			enctype="multipart/form-data">
			<input type="hidden" name="op" id="op"> <input type="hidden"
				id="Formfid" name="gid">
			<table>
				<tr>
					<td>商品名：</td>
					<td><input class="easyui-textbox" name="gname" id="gname"
						style="width: 100%" placeholder="50字以内"></td>
				</tr>
				<tr>
					<td>原价：</td>
					<td width="250px"><input class="easyui-numberbox"
						name="glastprice" style="width: 100%"
						data-options="min:0,precision:2"></td>
				</tr>
				<tr>
					<td>现价：</td>
					<td><input class="easyui-numberbox" name="gnowprice"
						id="gnowprice" style="width: 100%"
						data-options="min:0,precision:2"></td>
				</tr>
				<tr>
					<td>库存数：</td>
					<td><input class="easyui-numberbox" name="gnumber"
						id="gnumber" style="width: 100%" data-options="min:0,precision:0"></td>
				</tr>
				<tr>
					<td>类别：</td>
					<td><select id="tid1" style="width: 76px;"></select> <select
						id="tid2" style="width: 76px;"></select>
						<select id="tid3" name="tid1" style="width: 76px;"></select></td>
				</tr>
				<tr>
					<td>描述：</td>
					<td><input class="easyui-textbox" name="gdesc"
						style="width: 100%"></td>
				</tr>
				<tr>
					<td>点击图片<br>上传：
					</td>
					<td><img id="gphotopic" alt="请上传照片" width="200px"
						height="150px" src="${basePath }/images/noimg.gif"
						onclick="file.click()"> <input id="file" name="file"
						type="file" style="display: none" onchange="showPic()"></td>
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