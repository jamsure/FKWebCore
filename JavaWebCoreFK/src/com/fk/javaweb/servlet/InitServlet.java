package com.fk.javaweb.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InitServlet
 */
@WebServlet(initParams = { 
				@WebInitParam(name = "aa", value = "中国人"), 
				@WebInitParam(name = "bb", value = "小日本", description = "ca")},
			urlPatterns={"/servlet/InitServlet2"})
public class InitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	String aa,bb,cc;
    public InitServlet() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
	
	/*	aa=config.getInitParameter("aa");
		bb=config.getInitParameter("bb");
		cc=config.getInitParameter("cc");
		System.out.println("Init方法----");
		System.out.println("aa----"+aa);
		System.out.println("bb----"+bb);
		System.out.println("cc----"+cc);*/
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		System.out.println("destroy方法----");
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
/*		System.out.println("aa----"+aa);
		System.out.println("bb----"+bb);
		System.out.println("cc----"+cc);*/
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
