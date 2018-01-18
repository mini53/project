<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/header_board.jsp" %>
<!-- title -->
<script type="text/javascript">
control = "/album"; /* 자바스크립에서 board.js function을 가지고 잇으므로 */

function writeArticle() {
	if($("#subject").val() == "") { /* 제목에 내용이 없으면 */
		alert("제목입력!!!"); 
		return;
	} else if($("#content").val() == "") { /* 내용이 비어있다면 */
		alert("내용입력!!!");
		return;
	} else { /* 다 채워졌다면  */
		document.writeForm.action = root + control + "/write.playdata"; /* post라고 안써있어도  post */
		document.writeForm.submit(); /* writeForm만 submit해라 ....post방식으로 ...action태그를 여기에 줌*/
	}/* 105번째줄만 */
}
</script>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td><img src="${root}/img/board/m_icon_board.gif" width="9"
			height="9" border="0" align="absmiddle" style="margin-top: -2px">
		<b>앨범게시판</b> &nbsp;<font style="font-size: 8pt">|</font>&nbsp; 자유로운 글을
		올리는 공간입니다<br>
		</td>
		<td align="right"></td>
	</tr>
	<tr>
		<td colspan="2" height="19"></td>
	</tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="630">
	<tr>
		<td><img src="${root}/img/board/icon_arrow_04.gif" width="4"
			height="11" border="0" align="absmiddle" vspace="4"></td>
		<td width="100%" style="padding-left: 4px"><b>글쓰기</b></td><!--글쓰기는 글자(버튼이아니다) -->
	</tr>
	<tr>
		<td width="630" colspan="2" height="2" class="bg_board_title_02"></td>
	</tr>
</table>
<br>
<!-- 이거때문에 86라인을 알게 된다 --><!-- action을 비어놓으면 function writeArticle() 여기서 줄것이다 -->
<form id="writeForm" name="writeForm" method="post" action=""  
	enctype="multipart/form-data" style="margin: 0px"><!-- enc타입을 post형식(통으로 넘긴다)으로 주고-->
<div id="attach_file_hdn"></div><!-- form의 형태로 줘야한다 -->
<!-- 컨트롤러에서 받은 값이 대입이된다 -->
<!-- 각각 값이 대입되어 실행되는 코드를 작성하는영역인데 인클루드했기때문에 header_board.jsp에 -->
<input type="hidden" name="bcode" value="${bcode}"> <!-- 10 -->
<input type="hidden" name="pg" value="1"><!-- 1 -->
<input type="hidden" name="key" value="">
<input type="hidden" name="word" value="">

<table border="0" cellpadding="5" cellspacing="0" width="630"
	style="table-layout: fixed">

	<tr valign="top">
		<td width="95" nowrap style="padding-left: 8px; padding-top: 10px"><img
			src="${root}/img/board/e_dot.gif" width="4" height="4" border="0"
			align="absmiddle"> <b>제목</b></td>
		<td colspan="5"><input name="subject" id="subject" type="text"
			size="76" maxlength="150" class="inp_02" style="width: 300px"
			value="">
			<img src="${root}/img/board/i_info.gif" width="12"
			height="11" border="0" align="absmiddle" vspace="8"
			style="margin: 3 3 0 6"><font class="stext">최대 한글 75자,
		영문 150자</font><br>
	</tr>
	<tr>
		<td width="620" nowrap style="padding-left: 8px; padding-top: 10px"
			colspan="5"><img src="${root}/img/board/e_dot.gif" width="4"
			height="4" border="0" align="absmiddle"> <b>글내용</b> 
			<textarea name="content" class="inp_02" cols="67" rows="25" scrollbars="no">
			</textarea>
		</td>
	</tr>
	<tr>
		<td width="620" nowrap style="padding-left: 8px; padding-top: 10px"
			colspan="5"><img src="${root}/img/board/e_dot.gif" width="4"
			height="4" border="0" align="absmiddle"> <b>사진첨부</b> 
			
			<input type="file" id="upfile" name="upfile"><!-- 파일상자 -->
		</td>
	</tr>
</table>
<table width="630" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td height="5" style="padding: 0px"></td>
	</tr>
	<tr>
		<td class="bg_board_title_02" height="1"></td>
	</tr>
</table>

<table border="0" cellpadding="2" cellspacing="0" width="630">
	<tr>
		<td height="10" style="padding: 0px"></td>
	</tr>
	<tr>
		<td align="center"><!-- 조건부 요청 -->
		<a href="javascript:writeArticle();"><!-- 1.이미지에 같이 링크(글자에만 걸어놓은 것이 아니라)를 걸고 -->
		<img src="${root}/img/board/btn_register.gif" width="42" height="21"
			border="0" name="register" value="" alt="등록"> <!-- alt: 이미지가 없으면 크기안에 품선도움말에 등록이라는 글자를 쓰고 나와라-->
			</a> <!-- a태그에 이미지를 거는것이다 -->
				<a href="javascript:history.back();"><!-- history.back() 이전페이지로 돌아가라-->
				<img src="${root}/img/board/b_cancel.gif" width="42" height="21"
				border="0" name="cencel" value="" alt="취소">
				</a>
			</td>
	</tr>
</table>
</form>
<br>
<br>
<%@ include file="/common/footer.jsp" %>
