<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("mvo");
	if (vo != null) {
	%>
	<%=vo.getName()%>
	님 로그인 ok
	<hr>
	<a href="cafe.jsp"> 카페 입장하기></a>
	<a href="index.jsp"> 처음으로></a>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>












