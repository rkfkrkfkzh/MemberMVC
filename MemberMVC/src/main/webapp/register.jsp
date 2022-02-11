<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function registerCheck(){
		var f=document.registerForm;
		if(f.id.value==""){
			alert("아이디 입력하세요!");
			return false;
		}else if(f.pass.value==""){
			alert("패스워드 입력하세요!");
			return false;
		}else if(f.name.value==""){
			alert("이름 입력하세요");
			return false;
		}else if(f.address.value==""){
			alert("주소입력하세요");
			return false;
		}
	}
	function checkId(){
		var rId=document.registerForm.id.value;
		//alert(rId);
		window.open("IdCheckServlet?id="+rId, "popup", 
		 "resizable=no,toolbar=no,width=200,height=200");
	}
</script>

</head>
<body>
*회원가입*<br>
<form method="post" name="registerForm" action="RegisterServlet" 
onsubmit="return registerCheck()">
아이디 : <input type="text" name="id">
<input type="button" value="중복확인" onclick="checkId()"><br>
패스워드 : <input type="password" name="pass"><br>
이름  : <input type="text" name="name"><br>
주소 : <input type="text" name="address"><br>
<input type="submit" value="회원가입">
</form>
</body>
</html>







