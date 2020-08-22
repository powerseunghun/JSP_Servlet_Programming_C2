package com.edu.test;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class TestSessionListener implements HttpSessionListener{
	public TestSessionListener() {
		System.out.println("TestSessionListener Object Created");
	}
	
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("Session Object Created");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("Session Object Released");
	}
	
}
