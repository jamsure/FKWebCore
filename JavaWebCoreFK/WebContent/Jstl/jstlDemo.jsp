<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="com.fk.javaweb.javabean.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:out value="Hello World!"></c:out>
	<%
		BookBean book=new BookBean();
		pageContext.setAttribute("book", book);
		String name="java1";
		pageContext.setAttribute("name", name);
	%>
	<c:set target="${book}" property="bookName">
	<%=name %>
	
	</c:set>
<p> ${book.bookName }</p>
<c:catch var="errmsg">
	<%-- <%
		int i=1/0;
	%> --%>		
	${1/0}
</c:catch>
${errmsg} 
</body>
</html>