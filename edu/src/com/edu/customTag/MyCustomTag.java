package com.edu.customTag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MyCustomTag extends TagSupport {
	int cnt = 1;
	
	private String color;
	
	public String getColor() {
		return this.color;
	}
	
	public void setColor(String color) {
		this.color = color;
	}
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("Meet Start Tag");
		System.out.println("Color Attribute Value : " + color);
		return EVAL_BODY_INCLUDE;
	}
	
	@Override
	public int doAfterBody() throws JspException {
		System.out.println("Body End" + cnt);
//		if (cnt++ < 10) {
//			return EVAL_BODY_AGAIN;
//		}
//		else {
//			return SKIP_BODY;
//		}
//		return super.doAfterBody();
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("Meet End Tag");
//		return super.doEndTag();
//		return EVAL_PAGE;
		return SKIP_PAGE;
	}
}
