package com.edu.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/hello2")
// Annotation Attribute
// description : input servlet description
// displayNames : external display Servlet name
// initParmas : @WebInitParam Annotation's add
// largeIcon : Large Icon Position . use Servlet
// loadOnStartup : sequence .. to load Servlet in Container
// name : Servlet name
// smallicon : small Icon Position . use Servlet
// urlPatterns : URL Pattern to this Servlet Call
// value : looks like urlPatterns, Attribute name omission possible
public class FirstServlet extends HttpServlet{
	
	// when first servlet call
	@Override
	public void init() throws ServletException {
		System.out.println("init() execute!");
	}
	
	// when Servlet EveryTime execute request...
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		System.out.println("service() execute!");
	}
	
	@Override
	public void destroy() {
		System.out.println("destroy() execute!");
	}
}
