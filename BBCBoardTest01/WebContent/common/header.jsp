<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="root" value="${pageContext.request.contextPath}"/>  <!-- 이페이지가 어디(어느 폴더아래 있는지 상관없이)에 들어가던간에 BBCBoard라는 이름이 루트에 들어간다 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
root = "${root}"; /* jsp코드 = 자바코드 */
</script>
</head>
<body> 
<center>
<table width="1000" height="700">
<tr>
	<td align="center" colspan="2" height="100">
	<font size="12"><b><a href="${root}">playdata Cafe</a></b></font> <!-- root = BBCBoard -->
	</td>
</tr>
 <tr>
	<td colspan="2" height="30" align="right">
	<c:if test="${userInfo == null}">
	<%@ include file="/login/logoff.jsp" %>
	</c:if>
	<c:if test="${userInfo != null}">
	<%@ include file="/login/loginok.jsp" %>
	</c:if>
	</td>
</tr> 
<tr>
	<td width="190" valign="top">
	<%@ include file="/admin/board/boardmenu.jsp" %>
	</td>
	<td align="left" valign="top">