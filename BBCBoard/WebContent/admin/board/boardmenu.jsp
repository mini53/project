<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}"/> 
<c:if test="${boardmenu != null}">
<table>
<c:set var="ccode" value="0"/>
<c:forEach var="board" items="${boardmenu}">
	<c:if test="${ccode != board.ccode}">
		<c:set var="ccode" value="${board.ccode}"/>
<tr>
	<td>${board.cname}</td>
</tr>
	</c:if>
<tr>
	<td>&nbsp;&nbsp;&nbsp; <!--header_board의 querystring = list.playdata?bcode=${board.bcode}&pg=1&key=&word=-->
	<a href="${root}/${board.controller}/list.playdata?bcode=${board.bcode}&pg=1&key=&word="> <!--변수를 심어서 가는 애 -->
	${board.bname}
	</a>
	</td>
</tr>
</c:forEach>
</table>
</c:if>
<c:if test="${boardmenu == null}">
	<c:redirect url="/boardadmin/boardmenu.playdata"/>
</c:if>