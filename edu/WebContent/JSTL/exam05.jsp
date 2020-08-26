<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.edu.beans.BookBean"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	ArrayList<BookBean> bookList = new ArrayList<BookBean>();
	bookList.add(new BookBean("The Secret", "Byrne, Rhonda", "Atria Books"));
	bookList.add(new BookBean("The Last Lecture", "Randy Pausch", "hyperion"));
	
	String[] bookCode = {"Novel", "History", "Human", "Politics", "Paint", "Religion", "Travel", "Science", "Comic", "Health"};
%>

<c:set var="list" value="<%=bookList %>"/>
<c:forEach items="${list }" var="item">
	${item.title }/${item.author }/${item.publisher }<br/>
</c:forEach>

<hr>

<c:set var="code" value="<%=bookCode %>"/>

<c:forEach var="item" items="${code }">
	<c:out value="${item }"/>
</c:forEach>
<br/>

<hr>

<c:forEach var="i" begin="2" end="9">
	<c:forEach var="j" begin="1" end="9">
		${i } * ${j } = ${i*j }<br/>
	</c:forEach>
	<br/>
</c:forEach>

<hr>

<c:forEach var="k" begin="1" end="10" step="2">
	${k }
</c:forEach>

<hr>

<c:forTokens items="novel/history/human/politics/paint/travel/science/comic" delims="/" var="token">
	${token }
</c:forTokens>