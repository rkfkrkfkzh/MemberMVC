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
MemberVO vo = (MemberVO)session.getAttribute("mvo"); %>
<%=vo.getName() %>님 회원정보수정 완료
<%=vo.toString() %>
<a href="index.jsp">처음으로</a>


</body>
</html>










