package com.edu.test;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FlowFilterOne implements Filter{
	// Filter -> Request and Response Data Filtering.. Controll & change role
	
	// when Filter object creation.. first time call
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init() method call...one");
	}
	
	// when server close.. first time call
	@Override
	public void destroy() {
		System.out.println("destroy() method call...one");
	}

	// look like service method
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("before doFilter() method call...one");
		chain.doFilter(request, response);
		System.out.println("after doFilter() method call...one");
	}

	
}
