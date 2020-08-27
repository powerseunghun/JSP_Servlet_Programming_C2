<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8"/>

Parameter : ${param.name} <br/>

<form action="exam09.jsp" method="POST">
	Name : <input type="text" name="name">
	<input type="submit" value="submit">
</form>