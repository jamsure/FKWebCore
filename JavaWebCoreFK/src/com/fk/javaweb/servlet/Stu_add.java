package com.fk.javaweb.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fk.javaweb.javabean.Stu_score;

/**
 * Servlet implementation class Stu_add
 */
@WebServlet("/servlet/Stu_add")
public class Stu_add extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Stu_add() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");

		Integer id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String clas = request.getParameter("clas");
		String subject = request.getParameter("subject");
		int score = Integer.parseInt(request.getParameter("score"));
		Stu_score s = new Stu_score(name, clas, subject, score);

		Map<Integer, Stu_score> stu = (Map<Integer, Stu_score>) this.getServletContext().getAttribute("stu_score");
		if (id == 0) {
			s.setId(stu.size() + 1);
		} else {
			s.setId(id);
		}
		stu.put(s.getId(), s);
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
