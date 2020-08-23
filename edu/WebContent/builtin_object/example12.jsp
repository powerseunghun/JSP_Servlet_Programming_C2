<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	ServerName : <%=application.getServerInfo() %>
	ServletVer : <%=application.getMajorVersion()%>.<%=application.getMinorVersion() %><br/>
	<h3>/edu list</h3>
	<%
		java.util.Set<String> list = application.getResourcePaths("/");
		if (list != null) {
			Object[] obj = list.toArray();
			for (int i = 0; i < obj.length; i++) {
				out.print(obj[i] + "<br/>");
			}
		}
	%>
</body>
</html>