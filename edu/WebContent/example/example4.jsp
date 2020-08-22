<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="example3.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	String param = request.getParameter("id");
	if(param.equals("test")) {
		param = "Parameter Input(Exception not occured)";
	}
%>
<title>Insert title here</title>
</head>
<body>
	<h4>
		<%=param %>
	</h4>
</body>
</html>