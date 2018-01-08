<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>여기는 로그인페이지 입니다</h3>
<form action="/project/login.do">
	<input type ="text" value = "ID" name = "id">
	<input type ="text" value = "Password" name = "pwd">
	<input type = "submit" value = "Login">
</form>
<a href = "/register.do"> go register</a>
</body>
</html>