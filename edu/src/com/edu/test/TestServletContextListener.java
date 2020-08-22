package com.edu.test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestServletContextListener implements ServletContextListener{
	public TestServletContextListener() {
		System.out.println("TestServletContextListener Object Created");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("ServletContext Object Released");
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("ServletContext Object Initialized");
	}
}
