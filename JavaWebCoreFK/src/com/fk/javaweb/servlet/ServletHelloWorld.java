package com.fk.javaweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.buf.Utf8Encoder;

/**
 * Servlet implementation class ServletHelloWord
 */
@WebServlet(urlPatterns="/servlet/ServletHelloWord")
public class ServletHelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletHelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		String username=request.getParameter("name");
		String userpwd=request.getParameter("pwd");
		if("".equals(username)||username.equals(null)){
			username="未输入";
		}
		if("".equals(userpwd)||userpwd.equals(null)){
			userpwd="未输入";
		}
		Date date=new Date();
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>Hello World</title></head>");
		out.println("<body>");
		out.println("<h1>Hello World</h1>");
		out.println("<h2>现在时间是 ： "+date+"<h2></body>");
		out.println("<h2>输入的用户名是 ： "+username+"<h2></body>");
		out.println("<h2>输入的密码是 ： "+userpwd+"<h2></body>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.setContentType("text/html;charset=utf-8");
				response.setCharacterEncoding("UTF-8");
				String username=request.getParameter("name");
				String userpwd=request.getParameter("pwd");
				if("".equals(username)||username.equals(null)){
					username="未输入";
				}
				if("".equals(userpwd)||userpwd.equals(null)){
					userpwd="未输入";
				}
				Date date=new Date();
				PrintWriter out=response.getWriter();
				out.println("<html>");
				out.println("<head><title>Hello World</title></head>");
				out.println("<body>");
				out.println("<h1>Hello World</h1>");
				out.println("<h2>现在时间是 ： "+date+"<h2></body>");
				out.println("<h2>输入的用户名是 ： "+username+"<h2></body>");
				out.println("<h2>输入的密码是 ： "+userpwd+"<h2></body>");
				out.println("</body>");
				out.println("</html>");
				out.close();
	}

}
