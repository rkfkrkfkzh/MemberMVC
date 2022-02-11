<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
회원정보수정<br>

<% MemberVO vo=(MemberVO)session.getAttribute("mvo");
if(vo!=null){

%>
<form method="post" name="registerForm" action="UpdateServlet" 
onsubmit="return registerCheck()">
아이디 : <input type="text" name="id" value=<%=vo.getId()%>readonly>
패스워드 : <input type="password" name="pass" value=<%=vo.getPassword()%>><br>
이름  : <input type="text" name="name" value=<%=vo.getName()%>><br>
주소 : <input type="text" name="address" value=<%=vo.getAddress()%>><br>
<input type="submit" value="수정">
</form>
<%}else{
	response.sendRedirect("login.jsp");
}

%>


</body>
</html>















