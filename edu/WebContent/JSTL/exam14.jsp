<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="now" value="<%=new java.util.Date() %>" />
KOREA : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/><br/>
<fmt:timeZone value="en_us">
USA : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full"/>
</fmt:timeZone><br/>

<fmt:timeZone value="ja_jp">
JAPAN : <fmt:formatDate value="${now }" type="both" dateStyle="full" timeStyle="full" />
</fmt:timeZone><br/>

<hr>

<h4>KOREA</h4>
<fmt:setLocale value="ko_kr"/>
<c:set var="date" value="<%=new java.util.Date() %>"/>
Amount : <fmt:formatNumber value="100000" type="currency" /><br/>
D&T : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br/>

<h4>USA</h4>
<fmt:setLocale value="en_us"/>
Amount : <fmt:formatNumber value="100000" type="currency" /><br/>
D&T : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br/>

<h4>JAPAN</h4>
<fmt:setLocale value="ja_jp"/>
Amount : <fmt:formatNumber value="100000" type="currency" /><br/>
D&T : <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/><br/>
