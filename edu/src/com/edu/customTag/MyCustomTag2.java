package com.edu.customTag;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MyCustomTag2 extends SimpleTagSupport{
	
	@Override
	public void doTag() throws JspException, IOException {
		System.out.println("Before Custom Tag's Body start");
		for (int i = 0; i < 10; i++) {
			getJspBody().invoke(null);
		}
		System.out.println("After Custom Tag's Body start");
	}
}
