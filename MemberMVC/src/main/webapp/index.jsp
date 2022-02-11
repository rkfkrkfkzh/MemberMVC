<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 로그인한 사용자는 로그인과 회원가입 링크는 
보이지 않게 한다.
	 로그인하지 않으면 회원정보 수정은 보이지 않는다. 
	 
-->
<% MemberVO vo=(MemberVO)session.getAttribute("mvo");  %>

<a href ="find.jsp">회원검색 </a>
<%if (vo==null) {%>

<a href ="login.jsp">로그인 </a>
<a href ="register.jsp">회원가입 </a>

<%}else{ %>
<%=vo.getName()%>님 로그인<br>
<% } %>

</body>
</html>











