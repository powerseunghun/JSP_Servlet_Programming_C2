<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="num" value="${95 }"/>
Score <c:out value="${num }"/> is

<c:if test="${num > 60}">
	PASS
</c:if>

<br/>

Score <c:out value="${num}"/> is

<c:choose>
	<c:when test="${num>=90 }">A Grade</c:when>
	<c:when test="${num>=80 }">B Grade</c:when>
	<c:when test="${num>=70 }">C Grade</c:when>
	<c:when test="${num>=60 }">D Grade</c:when>
	<c:otherwise>F Grade</c:otherwise>
</c:choose>