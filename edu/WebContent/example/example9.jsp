<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>sum Implements With Declaration</h3>
	<%!
		public int sum(int a, int b) {
			return a+b;
		}
	%>
	sum : <%=this.sum(20, 30) %>
</body>
</html>