<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	//设置request 属性范围
		request.setAttribute("name", "requset1");
		request.setAttribute("birthday", "1990-01-03");
		request.setAttribute("birthday", new Date());
	%>
	<jsp:forward page="request_scope_2.jsp"></jsp:forward>
</body>
</html>