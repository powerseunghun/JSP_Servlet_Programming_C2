package com.edu.test;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class TestSessionAttributeListener implements HttpSessionAttributeListener{
	public TestSessionAttributeListener() {
		System.out.println("TestSessionAttibuteListener Object Created");
	}
	@Override
	public void attributeAdded(HttpSessionBindingEvent event) {
		System.out.println("Attribute added to Session Object");
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		System.out.println("Attribute Removed from Session Object");
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		System.out.println("Attribute Replaced to Session Object");
	}
}
