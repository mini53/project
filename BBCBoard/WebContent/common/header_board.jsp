<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp" %>  <!-- header의 변수들을 다 가져옴 -->
<!-- 임의변수를 만듦 -->
<!--boardmenu의  querystring를 내가 만든 변수에넣는다 -->
<c:set var="bcode" value="${querystring.bcode}"/>  
<c:set var="pg" value="${querystring.pg}"/>
<c:set var="key" value="${querystring.key}"/>
<c:set var="word" value="${querystring.word}"/>
<link rel="stylesheet" href="${root}/css/skin_purple.css" type="text/css">
<script type="text/javascript" src="${root}/js/board.js"></script>
<!-- 내가만든 변수를 숨겨서 서브밋을 했을때 가져간다 -->
<form id="commonForm" name="commonForm" method="get" action="">
	<input type="hidden" id="bcode" name="bcode" value="${bcode}">
	<input type="hidden" id="pg" name="pg" value="${pg}">
	<input type="hidden" id="key" name="key" value="${key}">
	<input type="hidden" id="word" name="word" value="${word}">
	<input type="hidden" id="seq" name="seq" value="">
</form>