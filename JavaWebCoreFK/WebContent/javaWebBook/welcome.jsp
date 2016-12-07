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
	if(session.getAttribute("userid")!=null){			//已经设置过属性，所以不为空
%>		
	<h3>欢迎<%=session.getAttribute("userid") %>光临本系统，<a href="logout.jsp">注销</a>!</h3>
<%
	}else{			//非法用户，没有登录过，则session范围没有属性
%>
	<h3>请先<a href="login.jsp">登录</a>!</h3>
<%
	}
%>		
</body>
</html>