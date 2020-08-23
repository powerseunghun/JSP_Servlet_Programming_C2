<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 1. JDBC Loading
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. DB Server Access
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		Connection conn = DriverManager.getConnection(url, "scott", "tiger");
		// 3. Statement or PreparedStatement Object Create
		/* Statement stmt = conn.createStatement(); */
		// 4. execute sql
		/* stmt.executeQuery("create table test(id varchar2(5), pwd varchar2(5))"); */
		/* stmt.executeUpdate("insert into test values('aa', '11')");
		stmt.executeUpdate("insert into test values('bb', '22')");
		stmt.executeUpdate("insert into test values('cc', '33')"); */
		/* ResultSet rs = stmt.executeQuery("select *from test"); */
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		PreparedStatement pstmt = conn.prepareStatement("insert into test values(?, ?)");
		pstmt.setString(1, id);
		pstmt.setString(2, pwd);
		pstmt.executeUpdate();
		
		/* while (rs.next()) {
			out.println("ID : " + rs.getString("id") + " PWD : " + rs.getString("PWD") + "<br/>");
		} */
		
		// 5. Resource Release
		/* rs.close();
		stmt.close(); */
		pstmt.close();
		conn.close();
	%>
	OK
</body>
</html>