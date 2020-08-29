<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>

<%
	Class.forName("oracle.jdbc.driver.OracleDriver");

	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
	Statement stmt = con.createStatement();
	
	String sql = "create table member(id varchar2(10) primary key, password varchar2(10), name varchar2(10), mail varchar2(20))";
	
	stmt.executeUpdate(sql);
	
	out.print("member table is created");
	stmt.close();
	con.close();
%>