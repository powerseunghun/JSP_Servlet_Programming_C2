<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if (request.getMethod().equals("POST")) { %>
		<%
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			
			if(id.isEmpty() || pwd.isEmpty()) {
				request.setAttribute("error", "ID OR PWD IS EMPTY");
				RequestDispatcher rd = request.getRequestDispatcher("logInOut.jsp");
				rd.forward(request, response);
				return;
			}
			
			if(session.isNew() || session.getAttribute("id") == null) {
				session.setAttribute("id", id);
				out.print("Login Complete");
			}
			else {
				out.print("Already Login status");
			}
		%>
			<%=id %> / <%=pwd %>
	<% } else if(request.getMethod().equals("GET")) {
			if (session != null && session.getAttribute("id") != null) {
				session.invalidate();
				out.print("logout Complete");
			}
			else {
				out.print("Not Login status");
			}%>
	<% } %>
	
</body>
</html>