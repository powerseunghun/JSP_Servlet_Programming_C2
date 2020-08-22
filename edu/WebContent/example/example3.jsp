<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Except Situation Handling</title>
</head>
<body>
	<h4>Error Occured</h4>
	ErrorType : <%=exception.getClass().getName() %><br/>
	ErrorMessage : <%=exception.getMessage() %><br/>	
</body>
</html>