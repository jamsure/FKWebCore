<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta http-equiv="refresh" content="10;url=http://www.baidu.com" > -->
<title>Insert title here</title>
</head>
<body style="text-align: center;">
<h1>登陆成功！</h1>
<%
	String Name=request.getParameter("name");
%>
<p>欢迎<%=Name %></p>
<span>即将跳转到<a href="http://www.baidu.com" >首页！</a></span>
<%
	response.setHeader("refresh", "3;url=http://www.baidu.com");
%>
</body>
</html>