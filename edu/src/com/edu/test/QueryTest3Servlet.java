package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/queryTest3")
public class QueryTest3Servlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.print("<html><head><title>Query String Test</title></head>");
		out.print("<body>");
		out.print("<h1>Requested By GET METHOD</h1>");
		
		String name = req.getParameter("name");
		out.print("name : " + name + "<br/>");
		
		out.println("</body></html>");
		out.close();
	}
	
 	@Override
 	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
 		res.setContentType("text/html; charset=UTF-8");
 		PrintWriter out = res.getWriter();
 		out.print("<html></head><title>Query String Test</title></head>");
 		out.print("<body>");
 		out.print("<h1>Requested By POST METHOD</h1>");
 		
 		// 한글 encoding
 		req.setCharacterEncoding("UTF-8");
 		String name = req.getParameter("name");
 		out.print("name : " + name + "<br/>");
 		
 		out.println("</body></html>");
 		out.close();
 	}
}