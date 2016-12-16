<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
	请输入成绩：<input type="text" name="score" /><br/>
	<input type="submit" value="提交">
</form>

<c:set var="color" value="red"  />
<c:set var="n" value="${param.score }" />
<c:if test="${n>=60&&n<=100}">
	<c:set var="color" value="blue" />
</c:if>
<p style="color: ${color};font-size:30px;">
<c:choose>
	<c:when test="${n<=100&&n>=90}">
		成绩优秀！
	</c:when>
	<c:when test="${n<90&&n>=80}">
		成绩优良！
	</c:when>
	<c:when test="${n<80 && n>=60}">
		成绩合格！
	</c:when>
<c:when test="${n>=0 && n<60 }">
	成绩不合格！
</c:when>
<%-- 	<c:when test="${n>100||n<0}">
	</c:when> --%>
	<c:otherwise>
		请输入正确的成绩！		
	</c:otherwise>
</c:choose>
${sessionScope.urlname }
</body>
</html>