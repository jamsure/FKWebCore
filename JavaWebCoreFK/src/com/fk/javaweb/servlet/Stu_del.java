package com.fk.javaweb.servlet;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fk.javaweb.javabean.Stu_score;

/**
 * Servlet implementation class Stu_add
 */
@WebServlet("/servlet/Stu_del")
public class Stu_del extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Stu_del() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		String[] id = request.getParameterValues("id");
		Map<Integer, Stu_score> stu = (Map<Integer, Stu_score>) this.getServletContext().getAttribute("stu_score");

		for (int i = 0; i < id.length; i++) {
			stu.remove(Integer.parseInt(id[i]));
		}
		this.getServletContext().setAttribute("stu_score", stu);
		response.sendRedirect("/JavaWebCoreFK/student_score/stu_score.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
