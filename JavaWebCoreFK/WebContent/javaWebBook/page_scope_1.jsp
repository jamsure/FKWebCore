<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%//设置page属性
		pageContext.setAttribute("name", "fankai");
		pageContext.setAttribute("birthday", new Date());
	%>
	<%//获取page属性
		String username=(String)pageContext.getAttribute("name");
		Date userbirthday=(Date)pageContext.getAttribute("birthday");
	%>
	<h1>姓名 : <%=username %></h1>
	<h1>生日 : <%=userbirthday.toLocaleString() %></h1>
<jsp:forward page="page_scope_2.jsp"></jsp:forward>
	
</body>
</html>