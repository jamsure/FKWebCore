<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%!
	int i=0;
%>
<%
	Cookie c1=new Cookie("m000","fankai1");
	Cookie c2=new Cookie("name2","fankai2");
	response.addCookie(c1);
	response.addCookie(c2);
%>
<body>
	<span>cookie：${cookie.name.name}</span><br>
	<span>cookie：${cookie.m000.value}</span><br>
	<%
		Set<String> set1=new HashSet();
		set1.add("abc");
		set1.add("asd");
		set1.add("qwe");
		set1.add("ghj");
		set1.add("tty");
		
		pageContext.setAttribute("set0", set1);
	%>
	
	${set0}<br>

	
	
	
	
	<P>该页面被访问了<%=++i %>次</P>
</body>
</html>