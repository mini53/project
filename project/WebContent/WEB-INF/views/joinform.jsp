<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<title>Project</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/project.css">
</head>
<body>
	<style type="text/css">
.panel-login {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
	box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.2);
}

.panel-login>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align: center;
}

.panel-login>.panel-heading a {
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login>.panel-heading a.active {
	color: #029f5b;
	font-size: 18px;
}

.panel-login>.panel-heading hr {
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -ms-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
	background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.15), rgba(0, 0, 0, 0));
}

.panel-login input[type="text"], .panel-login input[type="email"],
	.panel-login input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}

.panel-login input:hover, .panel-login input:focus {
	outline: none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}

.btn-login {
	background-color: #59B2E0;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #59B2E6;
}

.btn-login:hover, .btn-login:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
}

.forgot-password {
	text-decoration: underline;
	color: #888;
}

.forgot-password:hover, .forgot-password:focus {
	text-decoration: underline;
	color: #666;
}

.btn-register {
	background-color: #1CB94E;
	outline: none;
	color: #fff;
	font-size: 14px;
	height: auto;
	font-weight: normal;
	padding: 14px 0;
	text-transform: uppercase;
	border-color: #1CB94A;
}

.btn-register:hover, .btn-register:focus {
	color: #fff;
	background-color: #1CA347;
	border-color: #1CA347;
}
</style>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aris-expanded="false">
					<span class="sr-only"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.do">Build US</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<c:choose>
				<c:when test="${userid != null}">
					<ul class="nav navbar-nav">
						<li><a href="introduce.do">소개<span class="sr-only"></span></a></li>
						<li><a href="content.do">스터디 보기<span class="sr-only"></span></a></li>
						<li><a href="board.do">자유게시판<span class="sr-only"></span></a></li>
						<li><a href="contact.do">문의하기<span class="sr-only"></span></a></li>
						<li><a href="mypage.do">마이페이지<span class="sr-only"></span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">로그아웃</a></li>
					</ul>
				</c:when>
				<c:when test="${userid == null}">
					<ul class="nav navbar-nav">
						<li><a href="introduce.do">소개<span class="sr-only"></span></a></li>
						<li><a href="content.do">스터디 보기<span class="sr-only"></span></a></li>
						<li><a href="board.do">자유게시판<span class="sr-only"></span></a></li>
						<li><a href="contact.do">문의하기<span class="sr-only"></span></a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="loginform.do">로그인</a></li>
						<li><a href="joinform.do">회원가입</a></li>
					</ul>
				</c:when>
			</c:choose>
		</div>
	</div>
</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">회원가입</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="register-form" action="/UserRegister.do" method="post"
									role="form" style="display: block;">
									<div class="form-group">
										<!-- 회원 정보 등록을 하는 FORM -->
										<input type="text" name="userid" id="userid" tabindex="1"
											class="form-control" placeholder="아이디" value="">
									</div>
									<div class = "row"><!-- 한 줄에 있으므로 row로 다시 묶음 -->
										<div class="form-group col-md-9">
											<input type="text" name="username" id="username" tabindex="2"
											class="form-control" placeholder="별명을 입력해주세요" value="">
										</div>
										<div class="form-group col-md-3">
											<input type = "button" id = "NameCheck" value = "중복확인" 
											tabindex="3">
											<!-- button 액션 기능 추가 -->
										</div>
									</div>
									<div class="form-group">
										<select class = "SelectGender" name="gender"> <!--  onchange : function이랑 연동 -->
											<option value="M">남성</option>
											<option value="F">여성</option>
										</select>
									</div>
									<div class="form-group">
										<input type="password" name="pwd" id="pwd" tabindex="4"
											class="form-control" placeholder="비밀번호">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-pwd" id="confirm-pwd"
											tabindex="2" class="form-control" placeholder="비밀번호 재입력">
									</div>
									<!-- 비밀번호 불일치 코드 입력해야함 -->
									<div class="form-group">
										<select class = "SelectCategory" name="category"> <!--  onchange : function이랑 연동 -->
											<option value="u001">자기 개발</option>
											<option value="u002">업무 향상</option>
											<option value="u003">이직 목적</option>
										</select>							
									</div>
									<!-- 이 부분도 select로 바꿔야함 직장, 업무 코드화 할것.-->
									<div class="form-group">
										<input type="text" name="business" id="business" tabindex="2"
											class="form-control" placeholder="직장">
									</div>
									<div class="form-group">
										<input type="text" name="job" id="dept" tabindex="2"
											class="form-control" placeholder="업무">
									</div>
									<!--  관심분야 / 직장/ 업무 모두 드랍다운 형식으로 바꾸어야 함 -->
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit"
													id="register-submit" tabindex="4"
													class="form-control btn btn-register" value="가입하기">
												<!-- submit할때 값이 있는지 없는지를 확인 할 수 있는 function이 있어야 하고
										이를 통해 있으면 다음이 진행되고 없으면 경고창이 뜰 수 있게끔 해야함.
									 -->
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer style="background-color: #000000; color: #ffffff">
	<div class="container">
		<br>
		<div class="row">
			<div class="col-sm-2" style="text-align: center;">
				<h5>Copyright &copy; 2018</h5>
				<h5>김장훈</h5>
			</div>
			<div class="col-sm-4">
				<h4>대표자 소개</h4>
				<p>저는 플레이데이터 수강생 김장훈 입니다. 빅데이터 엔지니어 과정을 수강하고 있습니다.</p>
			</div>
			<div class="col-sm-2">
				<h4 style="text-align: center">내비게이션</h4>
				<div class="list-group">
					<a href="index.do" class="list-group-item">소개</a> <a
						href="instructor.do" class="list-group-item">운영진</a>
				</div>
			</div>
			<div class="col-sm-2">
				<h4 style="text-align: center">SNS</h4>
				<div class="list-group">
					<a href="#" class="list-group-item">페이스북</a> <a href="#"
						class="list-group-item">유튜브</a> <a href="#"
						class="list-group-item">네이버</a>
				</div>
			</div>
			<div class="col-sm-2">
				<h4 style="text-align: center;">
					<span class="glyphicon glyphicon-ok"></span>&nbsp; by 김진호
				</h4>
			</div>
		</div>
	</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#login-form-link').click(function(e) {
				$("#login-form").delay(100).fadeIn(100);
				$("#register-form").fadeOut(100);
				$('#register-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});
			$('#register-form-link').click(function(e) {
				$("#register-form").delay(100).fadeIn(100);
				$("#login-form").fadeOut(100);
				$('#login-form-link').removeClass('active');
				$(this).addClass('active');
				e.preventDefault();
			});
			// 중복확인을 하는 ajax
			$('#NameCheck').click(function(){
					var username = $('#username').val();
					alert(username)
            	if (username == "") {
                	alert("입력된 값이 없습니다.")
            		}
            	else {
            		$.ajax({
						type :'post',
						url : '/UserNameCheck.do',
						data : {"username" : username}, 
						success:function(data){
							alert("성공 확인용")
							if(data != null){
								alert("중복되었습니다.")
							}	
							else{
								alert('등록된 닉네임이 없습니다')
							}
						}
					})
					// ajax
				} // outter else
			})
		});

	</script>
</body>
</html>