package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/netInfo")
public class NetInfoServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = res.getWriter();
		out.print("<html>");
		out.print("<head><title>Request Information Print Servlet</title></head>");
		out.print("<body>");
		out.print("<h3>NetWork Related Request Information</h3>");
		out.print("Request Scheme : " + req.getScheme() + "<br/>");
		out.print("Server Name : " + req.getServerName() + "<br/>");
		out.print("Server Address : " + req.getLocalAddr() + "<br/>");
		out.print("Server Port : " + req.getServerPort() + "<br/>");
		out.print("Client Address : " + req.getRemoteAddr() + "<br/>");
		out.print("Client Host : " + req.getRemoteHost() + "<br/>");
		out.print("Client Port : " + req.getRemotePort() + "<br/>");
		out.print("</body></html>");
		
		out.close();
	}
}
