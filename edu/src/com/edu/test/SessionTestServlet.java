package com.edu.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/sessionTest")
public class SessionTestServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		String param = req.getParameter("p");
		String msg = null;
		HttpSession session = null;
		
		if (param.equals("create")) {
			session = req.getSession();
			if (session.isNew()) {
				msg = "New Session Object Creation";
			}
			else {
				msg = "Existing Session Object Returned";
			}
		}
		else if (param.equals("delete")) {
			session = req.getSession(false);
			if (session != null) {
				session.invalidate();
				msg = "Session Object Delete Complete";
			}
			else {
				msg = "No Session Exist to Delete";
			}
		}
		else if (param.equals("add")) {
			session = req.getSession(true);
			session.setAttribute("msg", "It is Message");
			msg = "Data Registration Complete to Session Object";
		}
		else if (param.equals("get")) {
			session = req.getSession(false);
			if (session != null) {
				String str = (String) session.getAttribute("msg");
				msg = str;
			}
			else {
				msg = "No Session Exist to Data Extraction";
			}
		}
		else if (param.equals("remove")) {
			session = req.getSession(false);
			if (session != null) {
				session.removeAttribute("msg");
				msg = "Data Delete Complete in Session Object";
			}
			else {
				msg = "No session Object Exist to Data Remove"; 
			}
		}
		else if (param.equals("replace")) {
			session = req.getSession();
			session.setAttribute("msg", "New Message");
			msg = "Data Registration to Session Object";
		}
		out.print("Process Result : " + msg);
		out.close();
	}
}
