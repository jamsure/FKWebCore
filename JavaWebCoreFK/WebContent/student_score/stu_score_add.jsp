<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<div>
		<form action="/JavaWebCoreFK/servlet/Stu_add" method="post">
			<input type="text" name="id" value="0" style="display: none;">
			<table>
				<tr><td>姓名</td><td><input type="text" name="name"></td></tr>
				<tr><td>班级</td>
				<td><select name="clas">
					<option value="一班">一班</option>
					<option value="二班">二班</option>
					<option value="三班">三班</option>
					<option value="四班">四班</option>
					<option value="五班">五班</option>
					<option value="六班">六班</option>
				</select></td></tr>
				<tr><td>课程</td><td><select name="subject">
					<option value="语文">语文</option>
					<option value="数学">数学</option>
					<option value="英语">英语</option>
					<option value="政治">政治</option>
					<option value="物理">物理</option>
					<option value="体育">体育</option>
				</select></td></tr>
				<tr><td>分数</td><td><input type="text" name="score"></td></tr>
				<tr><td><input type="submit" value="增加"></td><td><input type="reset" value="重置"></td></tr>
			</table>
		</form>
	</div>
</body>
</html>