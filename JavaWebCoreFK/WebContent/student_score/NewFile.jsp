<%@page import="java.util.HashMap"%>
<%@page import="com.fk.javaweb.javabean.Stu_score"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String,Stu_score> stu=new HashMap<String,Stu_score>();
stu.put("张三", new Stu_score("张三","2班","语文",90));
stu.put("李四", new Stu_score("李四","2班","语文",90));
stu.put("王五", new Stu_score("王五","2班","语文",90));
stu.put("赵六", new Stu_score("赵六","2班","语文",90));
application.setAttribute("stu_score", stu);
%>
</body>
</html>