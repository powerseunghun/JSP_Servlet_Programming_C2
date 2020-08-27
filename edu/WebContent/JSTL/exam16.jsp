<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*, java.util.*, java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<sql:setDataSource var="myoracle2"
		driver="oracle.jdbc.driver.OracleDriver"
		url="jdbc:oracle:thin:@127.0.0.1:1521:xe"
		user="scott"
		password="tiger"/>

<sql:transaction dataSource="${myoracle2 }">
	<sql:update>
		UPDATE DEPT SET LOC='LOS ANGELES' WHERE DEPTNO=10
	</sql:update>
	<sql:update>
		UPDATE DEPT SET LOC='HOUSTON' WHERE DEPTNO=20
	</sql:update>
	<sql:update>
		INSERT INTO DEPT VALUES(50, 'MARKETING', 'SEATTLE')
	</sql:update>
</sql:transaction>

<sql:query dataSource="${myoracle2 }" var="result">
	SELECT * FROM DEPT
</sql:query>

<table border="1">
	<tr>
		<th>DEPTNO</th>
		<th>DNAME</th>
		<th>Location</th>
	</tr>
	<c:forEach var="row" items="${result.rows }">
		<tr>
			<td><c:out value="${row.deptno }"/></td>
			<td><c:out value="${row.dname }"/></td>
			<td><c:out value="${row.loc }"/></td>
		</tr>
	</c:forEach>
</table>