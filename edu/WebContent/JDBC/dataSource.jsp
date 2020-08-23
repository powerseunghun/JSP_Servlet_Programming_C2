<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>

<%
	// 1. JNDI Server Object Create
	InitialContext ic = new InitialContext();
	// 2. lookup()
	DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/myoracle");
	// 3. getConnection()
	Connection conn = ds.getConnection();
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM TEST");
	
	while(rs.next()) {
		out.print("ID : " + rs.getString("ID") + " PWD : " + rs.getString("PWD") + "<br/>");
	}
	
	out.close();
	rs.close();
	stmt.close();
	conn.close();
%>