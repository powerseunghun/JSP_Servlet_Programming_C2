<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 가입</h3>
	${error }
	<form action="memberInsert.do" method="post">
		ID : <input type="text" name="id"><br/>
		PW : <input type="password" name="passwd"><br/>
		이름 : <input type="text" name="name"><br/>
		E-Mail : <input type="email" name="mail"><br/>
		<input type="submit" value="가입">
	</form>
</body>
</html>