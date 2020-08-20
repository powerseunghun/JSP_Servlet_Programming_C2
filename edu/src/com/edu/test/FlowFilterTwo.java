package com.edu.test;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FlowFilterTwo implements Filter{

	@Override
	public void destroy() {
		System.out.println("destroy() method call...two");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("before doFilter() method call...two");
		chain.doFilter(request, response);
		System.out.println("after doFilter() method call...two");
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("init() method call...two");
	}
	
}
