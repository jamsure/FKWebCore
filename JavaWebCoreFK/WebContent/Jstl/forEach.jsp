<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] books={"数据库","java","php","编程"};
	pageContext.setAttribute("book", books);
	String str="hefei,上海!北极;xianggang' zh ong guo";
	pageContext.setAttribute("string", str);
%>
<c:forEach var="bookname" items="${book }" step="1" varStatus="status">
	${status.count}、${bookname}<br/>
</c:forEach>

<c:forTokens items="${string}" delims=",!;' " var="mem">
	${mem}<br/>
</c:forTokens>
<%-- <jsp:forward page="jstlDemo2"></jsp:forward> --%>

<%
	String s=pageContext.getServletContext().getContextPath();
out.println(s);
%>
<c:forEach begin="" end="" items="" step="" var="" varStatus="" ></c:forEach>
<c:forTokens items="" delims="" begin="" end="" step="" var="" varStatus=""></c:forTokens>







</body>
</html>