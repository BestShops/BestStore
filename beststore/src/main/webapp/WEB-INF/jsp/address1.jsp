<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jsAddress.js"></script>
<title>源辰</title>
</head>
<body>
	<div>  
地区：<select id="area"></select>  
省：<select id="cmbProvince"></select>  
市：<select id="cmbCity"></select>  
区：<select id="cmbArea"></select>  
<br /><br />  
  
<script type="text/javascript">  
    addressInit('area','cmbProvince','cmbCity','cmbArea','西北地区', '北京', '市辖区', '东城区');  
    //addressInit('Select1', 'Select2', 'Select3');  
</script>  
</div>
</body>
</html>