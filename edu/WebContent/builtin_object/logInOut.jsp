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
		String msg = (String) request.getAttribute("error");
		if(msg == null) msg = "";
	%>
	<%=msg %>
	<form action="example10.jsp" method="post">
		ID : <input type="text" name="id"><br/>
		PW : <input type="password" name="pwd"><br/>
		<input type="submit" value="login">
	</form>
	<a href="example10.jsp">logout</a>
</body>
</html>