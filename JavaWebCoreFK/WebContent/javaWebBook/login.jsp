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
	request.setCharacterEncoding("UTF-8");
	%>
	<form action="login.jsp" method="post" id="myform">
		用户名：<input type="text" name="uname"><br> 密&nbsp;码：<input
			type="password" name="upwd"><br> <input type="submit"
			value="登录"> <input type="reset" value="重置">
	</form>
	<%	//用户名:fankai ， 密码：123
		String name=request.getParameter("uname");				//取得name的信息
		String pwd=request.getParameter("upwd");				//取得pwd的信息
		if(!(name==null||"".equals(name)||pwd==null||"".equals(pwd))){	//进行用户名和密码的验证
			if("范凯".equals(name) && "123".equals(pwd)){
			response.setHeader("refresh", "2;URL=welcome.jsp");		//定时跳转
			session.setAttribute("userid", name);	//将登录的用户名保存在session中
	%>
	<h3>用户登录成功，两秒后跳转到欢迎页！</h3>
	<h3>
		如果没有跳转，请按<a href="welcome.jsp">这里</a>
	</h3>
	<script type="text/javascript">
		/* 	document.getElemetById("myform").disabled=true; */
		document.getElementById('myform').style.display="none";
		</script>
	<%
		}else{
	%>
	<h3>错的用户名或密码！</h3>										<!-- //登录失败给出错误信息 -->
	<%
			}
		}
	%>

</body>
</html>