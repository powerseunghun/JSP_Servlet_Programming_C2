<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.edu.beans.BookBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%BookBean book = new BookBean(); %>
	
	<c:set target="<%=book %>" property="title" value="The Secret" />
	<%=book.getTitle() %><br/>
	
	<c:set var="b" value="<%=book %>"/>
	<c:set target="${b }" property="author" value="Byrne, Rhonda"/>
	${b.author }
</body>
</html>