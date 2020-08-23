<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int total = out.getBufferSize();
		out.print("First Text");
		out.clearBuffer();
		
		out.print("Print Buffer Size : " + total);
		out.print("<br>Not used Buffer Size : " + out.getRemaining());
		out.flush();
		out.print("<br>After Flush, Buffer Size : " + out.getRemaining());
	%>
	<hr>
	<h3>out.print() Method</h3>
	<%
		out.print(100);
		out.print(true);
		out.print(3.14);
		out.print("TEST");
		out.print('a');
		out.print(new java.io.File("\\"));
		out.print("Buffer Size : " + out.getRemaining());
	%>
</body>
</html>