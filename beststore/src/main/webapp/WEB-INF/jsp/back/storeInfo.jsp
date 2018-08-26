<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息管理</title>
<%@ include file="../back/easyuiLink.jsp"%>
</head>
<script>
	//添加保存按钮
	function save() {
		//添加
		flag=confirm("确定修改信息吗?");
		if(flag){
			$("#form1").form("submit", {
				success : function(data) {
					//使用eval函数将json字符串转为对象d 
					eval("var d=" + data);
					if (d.code == "1") {
						//成功
						alert(d.data);
						document.location.reload();
					} else {
						alert(d.data);
					}
				}
			});
		}
	}
</script>
<body>
	<form action="" id="form1">
		<input type="hidden" name="op" value="modify">
		<table>
			<tr>
				<td>店铺编号：</td>
				<td width="250px"><input type="text" name="sid"
					style="width: 100%; height: 26px; background-color: #F4F0F0; border: 0px;"
					readonly value="${applicationScope.student.sid }"></td>
			</tr>
			<tr>
				<td>创立人：</td>
				<td width="250px"><input class="easyui-textbox" name="hname" readonly
					style="width: 100%" value="${applicationScope.student.sname }"></td>
			</tr>
			<tr>
				<td>店铺名：</td>
				<td><input class="easyui-numberbox" name="sname"
					style="width: 100%" value="${applicationScope.student.age }"></td>
			</tr>
			<tr>
				<td>店铺说明：</td>
				<td width="250px"><input class="easyui-textbox" name="sdesc"
					style="width: 100%" value="${applicationScope.student.address }"></td>
			</tr>
			<tr>
				<td>创立时间：</td>
				<td><input class="easyui-numberbox" name="stime" readonly
					style="width: 100%" value="${applicationScope.student.tel }"></td>
			</tr>
			
			<tr id="creditTr">
				<td>店铺评分：</td>
				<td><input type="text" name="sgrade" readonly
					style="width: 100%; height: 26px; background-color: #F4F0F0; border: 0px;"
					readonly readonly value="${applicationScope.student.credit }"></td>
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