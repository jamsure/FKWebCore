<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../javaWebBook/login.jsp"></c:import>
<%--  <c:import url="../javaWebBook/login.jsp" var="loginUrl" scope="request" ></c:import> --%>
<%--  <c:redirect url="${loginUrl }" ></c:redirect>
${loginUrl} --%>
<c:url var="contxt" value="/login.jsp" context="/javaWebBook"/>
<%-- <c:url var="contxt" value="/login.jsp" /> --%>
<c:url value="../javaWebBook/login.jsp" var="login" scope="page" >
	<c:param name="author" value="zhangsan"></c:param>
	<c:param name="pwd" value="123"></c:param>
</c:url>
<br/>
${contxt}<br/>
${login }<br>

		<%
			request.getContextPath();
		Cookie aa=new Cookie("a1","bb");
		response.addCookie(aa);
		//response.sendRedirect("")
		%>
		<%=request.getContextPath() %>
	${5.2e0 }
	${5.2}
	${Null}
	${cookie.a1.value }
<%-- 	<c:import url=""></c:import> --%>


<c:url value="http://www.baidu.com" var="baidu" scope="page">
<c:param name="tt" value="123"></c:param>
<c:param name="qq" value="000"></c:param>
</c:url>
<br>
${baidu }
<%-- <c:redirect url="forEach.jsp"/> --%>

 <div style="width: 100px; height: 100px;">
 <c:import url="http://www.baidu.com" charEncoding="utf-8"></c:import>
 </div>
 <c:set var="n" value="80" ></c:set>
 ${n}
</body>
</html>