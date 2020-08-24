<%@page import="java.util.Enumeration"%>
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
		Enumeration<String> list = request.getHeaderNames();
		while(list.hasMoreElements()) {
			String key = list.nextElement();
			out.print(key + " : " + request.getHeader(key) + "<br/>");
		}
	%>
	<hr>
	${header }
</body>
</html>