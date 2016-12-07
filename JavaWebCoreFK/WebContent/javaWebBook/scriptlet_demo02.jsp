<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>scriptlet_demo02</title>
</head>
<body>
<%! public static final String INFO="新安人才网"; %>

<%! public int add(int x,int y){
	return x+y;
} 
%>

<%! 
	class Person{
	private String name;
	private int age;
	public Person(String name,int age){
		this.name=name;
		this.age=age;
	}
	public String toString(){
		return "name = "+ this.name +" ; age = "+this.age;
	}
}
%>

<% 
	out.println("<h1>INFO = "+INFO+"</h1>");
	out.println("<h2>3 + 5 = "+add(3,5)+"</h2>");
	out.println("<h3>"+new Person("zhangsan",30)+"</h3>");
	
%>





</body>
</html>