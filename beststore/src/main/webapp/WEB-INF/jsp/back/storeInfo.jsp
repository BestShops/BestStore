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
	//添加保存按钮
	function save() {
		//添加
		flag = confirm("确定修改信息吗?");
		if (flag) {
			$("#form1").form("submit", {
				success : function(data) {
					//使用eval函数将json字符串转为对象d 
					eval("var d=" + data);
					alert(d.data);
				}
			});
		}
	}
</script>
<body>
	<form action="modifyStoreInfo.do" id="form1">
		<input type="hidden" name="op" value="modify">
		<table>
			<tr>
				<td>店铺编号：</td>
				<td width="250px"><input type="text" name="sid"
					style="width: 100%; height: 26px; background-color: #F4F0F0; border: 0px;"
					readonly value="${sessionScope.storeHuman.sid }"></td>
			</tr>
			<tr>
				<td>店铺名：</td>
				<td><input class="easyui-textbox" name="sname"
					style="width: 100%" value="${sessionScope.storeHuman.sname }"></td>
			</tr>
			<tr>
				<td>店铺说明：</td>
				<td width="250px"><input class="easyui-textbox" name="sdesc"
					style="width: 100%" value="${sessionScope.storeHuman.sdesc }"></td>
			</tr>
			<tr>
				<td>创立时间：</td>
				<td><input class="easyui-textbox" name="stime" readonly data-options="formatter:dataFormat"
					style="width: 100%" value="${sessionScope.storeHuman.stime }"></td>
			</tr>
			<tr id="creditTr">
				<td>店铺评分：</td>
				<td><input class="easyui-textbox" name="sgrade"
					style="width: 100%;" readonly
					value="${sessionScope.storeHuman.sgrade }"></td>
			</tr>
			<tr>
				<td align="right" colspan="3"><a class="easyui-linkbutton"
					data-options="iconCls:'icon-save'" style="width: 100px"
					id="saveButton" onclick="save()">保存</a>
			</tr>
		</table>
	</form>
</body>
</html>