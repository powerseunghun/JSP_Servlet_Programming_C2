package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/queryTest")
public class QueryTestServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		out.print("<html><head><title>Query String test</title></head>");
		out.print("<body>");
		out.print("<h1>Request By GET Method</h1>");
		out.println("</body></html>");
		
		String id = req.getParameter("id");
		String password = req.getParameter("pwd");
		String name = req.getParameter("name");
		String[] hobbies = req.getParameterValues("hobby");
		String gender = req.getParameter("gender");
		String religion = req.getParameter("religion");
		String intro = req.getParameter("introduction");
		
		out.print("ID : " + id + "<br/>");
		out.print("PW : " + password + "<br/>");
		out.print("name : " + name + "<br/>");
		out.print("hobby : ");
		for (int i = 0; i < hobbies.length; i++) {
			out.print(hobbies[i] + " ");
		}
		out.print("<br/>");
		out.print("gender : " + gender + "<br/>");
		out.print("religion : " + religion + "<br/>");
		out.print("introduce : " + intro + "<br/>");
		out.print("All QueryString : " + req.getQueryString());
		
		out.close();
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		
		out.print("<html><head><title>Query String test</title></head>");
		out.print("<body>");
		out.print("<h1>Request By POST Method</h1>");
		out.println("</body></html>");
		
		String id = req.getParameter("id");
		String password = req.getParameter("pwd");
		String name = req.getParameter("name");
		String[] hobbies = req.getParameterValues("hobby");
		String gender = req.getParameter("gender");
		String religion = req.getParameter("religion");
		String intro = req.getParameter("introduction");
		
		out.print("ID : " + id + "<br/>");
		out.print("PW : " + password + "<br/>");
		out.print("name : " + name + "<br/>");
		out.print("hobby : ");
		for (int i = 0; i < hobbies.length; i++) {
			out.print(hobbies[i] + " ");
		}
		out.print("<br/>");
		out.print("gender : " + gender + "<br/>");
		out.print("religion : " + religion + "<br/>");
		out.print("introduce : " + intro + "<br/>");
		out.print("All QueryString : " + req.getQueryString());
		
		out.close();
	}
	
	
}
