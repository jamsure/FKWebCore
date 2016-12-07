<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@page import="com.fk.javaweb.javabean.*" %>
<jsp:useBean id="book" class="com.fk.javaweb.javabean.BookBean" scope="page">
		<!-- 使用通配符* -->
<%--     <jsp:setProperty name="book" property="*" /> --%>
		<!-- 指定属性名，自动匹配 -->
    <jsp:setProperty name="book" property="bookName" />
  <jsp:setProperty name="book" property="bookNum" param="bookNum"/>
		<!--   指定属性名，并且指定参数 -->
 <%--  <jsp:setProperty name="book" property="bookNum" param="bookNum"/> --%>
		<!--  指定属性并且赋值 -->
		<%--  <jsp:setProperty name="book" property="bookNum" value="bookNum"/> --%>
</jsp:useBean>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书订购</title>
</head>
<body>
	订购图书清单
	<hr/>
	书名：<%=book.getBookName() %><br/>
	数量：<%=book.getBookNum() %><br/>
	<hr/>
	书名：<jsp:getProperty property="bookName" name="book"/><br/>
	数量：<jsp:getProperty property="bookNum" name="book"/><br/>
</body>
</html>