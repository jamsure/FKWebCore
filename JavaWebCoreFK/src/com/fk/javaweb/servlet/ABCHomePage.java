package com.fk.javaweb.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ABCHomePage
 */
@WebServlet("/servlet/ABCHomePage")
public class ABCHomePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ABCHomePage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected synchronized void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>ABC公司主页</title></head>");
		out.println("<body>");
		out.println("<center>");
		ServletContext context=getServletContext();
		RequestDispatcher rd=context.getRequestDispatcher("/servlet/HeaderServlet");
		rd.include(request, response);
		//rd.forward(request, response);
		
		out.println("<font size=4 color='#000099'>");
		out.println("&nbsp;&nbsp;ABC Limited founded in 1890 is a multinational company spread across six nations.<br/><br/>");
		out.println("We deal with gamentexport and online sales of designer wares.<br/><br/>");
		out.println("To have a look at out fascinating collection check out at<a href='http://www.abcdesign.com'>ABC Designs</a></font><br/><br/> ");
		
		rd=context.getRequestDispatcher("/servlet/Footer.html");
		rd.include(request, response);
		//rd.forward(request, response);
		out.println("</center>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
