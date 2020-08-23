package com.edu.beans;

public class HelloBean implements java.io.Serializable {
	private String name;
	private String number;
	
	public HelloBean() {
		this.name = "No Name";
		this.number = "No Number";
	}
	
	public HelloBean(String name, String number) {
		super();
		this.name = name;
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "HelloBean [name=" + name + ", number=" + number + "]";
	}
	
}
