<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function winClose(b){
	var rf=opener.document.registerForm;
	if(b){
rf.id.value="";
rf.id.fucus();
	}else{
		rf.pass.focus();
	}
	self.close();//자기 창을 닫는다.
}

</script>

</head>
<body>
	<%
	String id = request.getParameter("id");
	boolean flag = (Boolean) request.getAttribute("flag");
	if (flag) {
	%>
	<%=id%>는 중복됩니다.
	<br> 다른 아이디를 입력하세요
	<br>

	<%
	} else {
	%>
	<%=id%>는 사용가능합니다.
	<br>
	<%
	}
	%>
	<input type="button" value="확인" onclick="winClose(<%%>)">
</body>
</html>









