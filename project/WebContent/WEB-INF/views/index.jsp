<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3> hello</h3>
<c:if test="${loginfo == 'success'}">
	<h2>${sessionScope.userid}(${sessionScope.name})님 환영합니다.</h2>
</c:if>
<c:if test="${loginfo == 'fail'}">
	<h2>당신은 누구 입니까</h2>
</c:if>

<a href = "/test.do"> test로 이동</a>
</body>
</html>