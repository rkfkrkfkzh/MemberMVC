<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function logout(){
	var f=confirm("로그아웃 하시겠습니까?");
	if(f){
		location.href="LogoutServlet";
	}
	
}
</script>
</head>
<body>
	<%
	MemberVO vo = (MemberVO) session.getAttribute("mvo");
	if (vo != null) {
	%>
	<%=vo.getName()%>님 카페입장 환
	<input type="button" value="로그아웃" onclick="logout()">

	<%
	} else {
	%>
	<script>
		alert("로그인 해야 카페입장가능");
		location.href = "login.jsp";
	</script>
	<%
	}
	%>
</body>
</html>









