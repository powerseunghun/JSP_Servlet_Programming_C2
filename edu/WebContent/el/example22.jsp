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
		request.setCharacterEncoding("UTF-8");
	%>
	<jsp:useBean id="book" class="com.edu.beans.BookBean"/>
	
	<jsp:setProperty property="*" name="book"/>
	<%
		/* request.setAttribute("book", book); */
		/* session.setAttribute("book", book); */
		application.setAttribute("book", book);
	%>
	
	<jsp:forward page="bookOutput.jsp"/>
</body>
</html>