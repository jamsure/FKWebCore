<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" width="50%" style="margin-left: 25%;">
		<%
			int rows = 10;
			int cols = 10;
			for (int x = 0; x < rows; x++) {
		%>
		<tr>
			<%
				for (int y = 0; y < cols; y++) {
			%>
			<td>
			<%=x%>*<%=y%>=<%=(x*y)%>
			</td>
			<%
				}
			%>
			</tr>
			<%
				}
			%>
		
	</table>




</body>
</html>