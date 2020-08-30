<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.edu.biz.MemberService" %>

<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="member" class="com.edu.beans.Member"/>
<jsp:setProperty property="*" name="member" />

<%
	MemberService service = new MemberService();
	service.memberInsert(member);
	
	response.sendRedirect("memberOutput.jsp");
	/* RequestDispatcher rd = request.getRequestDispatcher("memberOutput.jsp");
	rd.forward(request, response); */
%>