<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.fk.javaweb.javabean.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生成绩表</title>
<script type="text/javascript"	src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">	
</script>
<script type="text/javascript">
	function stu_update() {
		var val = $('input:checkbox:checked').val();
		var num = $('input:checkbox:checked').length;
		if (val == null || num > 1) {
			alert("请选择一条信息！");
		} else {
			window.location.href = "stu_score_update.jsp?id=" + val;
		}
	}
	function check() {
		var val = $('input:checkbox:checked').val();
		var num = $('input:checkbox:checked').length;
		if (val == null || num == 0) {
			alert("请选择一条信息！");
			return false;
		} else {
			return;
		}
	}
</script>
</head>
<body>
	<%
		if (pageContext.getServletContext().getAttribute("stu_score") == null) {
			pageContext.getServletContext().setAttribute("stu_score", new HashMap<String, Stu_score>());
		}
		Map<Integer, Stu_score> stuMap = (Map<Integer, Stu_score>) application.getAttribute("stu_score");
	%>
	<div>
		<form action="/JavaWebCoreFK/servlet/Stu_del"
			onsubmit="return check()">
			<h1>学生成绩表</h1>
			<p>
				<input type="button" value="增加信息"
					onclick="window.location.href='/JavaWebCoreFK/student_score/stu_score_add.jsp'">
				<input type="button" value="更新信息" onclick="stu_update();"> <input
					type="submit" value="删除信息"> <input type="button"
					value="查询信息">
			</p>
			<hr />
			<table>
				<tr>
					<td></td>
					<td>姓名</td>
					<td>班级</td>
					<td>课程</td>
					<td>成绩</td>
				</tr>
				<%
					for (Map.Entry<Integer, Stu_score> entry : stuMap.entrySet()) {
						Stu_score demo = entry.getValue();
				%>

				<tr>
					<td><input type="checkbox" value="<%=demo.getId()%>"
						name="id"></td>
					<td><%=demo.getName()%></td>
					<td><%=demo.getClas()%></td>
					<td><%=demo.getSubject()%></td>
					<td><%=demo.getScore()%></td>
				</tr>

				<% 				
		}
		%>
			</table>

		</form>
	</div>
</body>
</html>