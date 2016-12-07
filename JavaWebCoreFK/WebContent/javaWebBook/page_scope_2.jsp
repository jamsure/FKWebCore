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
		pageContext.setAttribute("name", "zhangsan");
		pageContext.setAttribute("birthday", "1990-07-11");
		pageContext.setAttribute("birthday", new Date());
	%>
	<jsp:forward page="page_scope_3.jsp"></jsp:forward>
</body>
</html>