<%@page import="com.fk.javaweb.javabean.Stu_score"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<script type="text/javascript"
	src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
	
</script>

</head>
<body>
	<%
		Integer id = Integer.parseInt(request.getParameter("id"));
		Map<Integer, Stu_score> stuMap = (Map<Integer, Stu_score>) application.getAttribute("stu_score");
		Stu_score s = stuMap.get(id);
	%>
	<div>
		<form action="/JavaWebCoreFK/servlet/Stu_add" method="post">
			<input type="text" name="id" value="<%=s.getId()%>" style="display: none;">
			<table>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="name" value="<%=s.getName()%>"></td>
				</tr>
				<tr>
					<td>班级</td>
					<td><span id="clas_value" style="display: none;"><%=s.getClas()%></span>
						<select name="clas" id="clas">
							<option value="一班">一班</option>
							<option value="二班">二班</option>
							<option value="三班">三班</option>
							<option value="四班">四班</option>
							<option value="五班">五班</option>
							<option value="六班">六班</option>
					</select></td>
				</tr>
				<tr>
					<td>课程</td>
					<td><span id="subject_value" style="display: none;"><%=s.getSubject()%></span>
						<select name="subject" id="subject">
							<option value="语文">语文</option>
							<option value="数学">数学</option>
							<option value="英语">英语</option>
							<option value="政治">政治</option>
							<option value="物理">物理</option>
							<option value="体育">体育</option>
					</select></td>
				</tr>
				<tr>
					<td>分数</td>
					<td><input type="text" name="score" value="<%=s.getScore()%>"></td>
				</tr>
				<tr>
					<td><input type="submit" value="更新"></td>
					<td><input type="button" value="返回"
						onclick="javascript:history.back(-1);"></td>
				</tr>
			</table>
			<script type="text/javascript">
				var clas_value = $("#clas_value").text();
				$("#clas option[value=" + clas_value + "]").attr("selected",
						true);

				var subject_value = $("#subject_value").text();
				$("#subject option[value=" + subject_value + "]").attr(
						"selected", true);
			</script>
		</form>
	</div>
</body>
</html>