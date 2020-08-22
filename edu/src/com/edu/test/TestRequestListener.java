package com.edu.test;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;

public class TestRequestListener implements ServletRequestListener {
	public TestRequestListener() {
		System.out.println("TestRequestListener Object Creation");
	}
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		System.out.println("Http ServletRequest Object Release");
	}

	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		System.out.println("Http ServletRequest Object Initialized");
	}
	
}
