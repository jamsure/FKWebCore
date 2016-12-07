<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>统计访问次数</title>
</head>
<body>
<%!//定义全局变量
	BigInteger count=null;
	BigInteger count2=new BigInteger("1");  
%>
<%!//以下方法为了省事，直接在方法中处理了异常，而实际中应该交给调用处处理
	public BigInteger load(File file){
	BigInteger count=null;
	try{if(file.exists()){
		Scanner scan=null;
		scan=new Scanner(new FileInputStream(file));
		if(scan.hasNext()){
			count=new BigInteger(scan.next());
		}
		scan.close();
	}else{
		count=new BigInteger("0");
		save(file,count);
	}
	}catch(Exception e){
		e.printStackTrace();
	}
	return count;
}
	public void save(File file,BigInteger count){
		try{
			PrintStream ps=null;
			ps=new PrintStream(new FileOutputStream(file));
			ps.println(count);
			ps.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
	<%
	/*  BigInteger count2=new BigInteger("1");  */
		String fileName=this.getServletContext().getRealPath("/")+"count.txt";
	File file=new File(fileName);
	if(session.isNew()){
		synchronized(this){
			count=load(file);
			count=count.add(new BigInteger("1"));
			save(file,count);
		//	session.removeAttribute("count");
			session.setAttribute("sescount", count);
		}
	}
	%>
	
	<%
/* 	count2=count2.add(new BigInteger("2")); */
	%>
	
	<%-- <h2>您是第<%=count==null?0:count %>位访客！</h2> --%>
	<h2>您是第<%=count==null?0:session.getAttribute("sescount") %>位访客！</h2>
	<%-- <h2>您是第<%=count2 %>位访客！</h2> --%>
</body>
</html>