<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/servlet/loginConfirmed" method="post" onsubmit=false>
	<p>用户名 ： <input type="text" name="username"></p>
	<p>密&nbsp;码 ： <input type="password" name="userpassword"></p>
	<p><input type="submit" value="提交"><input type="reset" value="重置"></p>
</form>
</body>
</html>