package com.edu.test;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;

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
}
