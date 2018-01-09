<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/project.css"> -->
</head>
<body>
	<h3>회원가입에 오신것을 환영합니다</h3>
	<!-- 	private String userid; // 회원 아이디
	private int status; // 정상 0, 탈회9, 관리자 8
	private String pwd; // 
	private String name; // 닉네임
	private String category; // 관심분야
	private String gender; // 성별 
	private String business; // 업종
	private String dept; // 직무
	private Date edate; // 등록일
	private Date mdate; // 수정일
	private Date cdate; // 삭제일 -->

	<form action="/userRegister.do" method="post">
		<label> 사용할 ID<input type="text" value="ID" name="userid"></label><br> 
		<label> 비밀번호<input type="text" value="PassWord" name="pwd"></label><br>
		<label> 비밀번호 확인<input type="text" value="RepassWord" name="pwd_two"></label><br> 
		<label> 닉네임 설정<input type="text"value="NickName" name="name"></label><br>
	 	<label> 성별을 입력해주세요
	 	<input type="radio" name="gender" value="0" />남
    	<input type="radio" name="gender" value="1" />여
    	</label><br>
    	<input type = "submit" value = "완료"><br>
    	<input type = "reset" value = "다시"><br>
		<!--  관심분여, 성별, 업종, 직무는 값을 가져와야함  -->
		<!--  등록일, 수정일, 삭제일은 biz단에서 해결 -->
	</form>

</body>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="js/bootstrap.js"></script>
</html>