<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width", initial-scale="1">
	<title>Project</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/project.css">
</head>
<body>
	<style type="text/css">
.panel-team {
	border-color: #ccc;
	-webkit-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	-moz-box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
	box-shadow: 0px 2px 3px 0px rgba(0,0,0,0.2);
}
.panel-team>.panel-heading {
	color: #00415d;
	background-color: #fff;
	border-color: #fff;
	text-align:center;
}
.panel-team>.panel-heading a{
	text-decoration: none;
	color: #666;
	font-weight: bold;
	font-size: 15px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-team>.panel-heading a.active{
	color: #029f5b;
	font-size: 18px;
}
.panel-team>.panel-heading hr{
	margin-top: 10px;
	margin-bottom: 0px;
	clear: both;
	border: 0;
	height: 1px;
	background-image: -webkit-linear-gradient(left,rgba(0, 0, 0, 0),rgba(0, 0, 0, 0.15),rgba(0, 0, 0, 0));
	background-image: -moz-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -ms-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
	background-image: -o-linear-gradient(left,rgba(0,0,0,0),rgba(0,0,0,0.15),rgba(0,0,0,0));
}
.panel-team input[type="text"],.panel-team input[type="email"],.panel-team input[type="password"] {
	height: 45px;
	border: 1px solid #ddd;
	font-size: 16px;
	-webkit-transition: all 0.1s linear;
	-moz-transition: all 0.1s linear;
	transition: all 0.1s linear;
}
.panel-team input:hover,
.panel-team input:focus {
	outline:none;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	border-color: #ccc;
}
.btn-register {
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
.btn-register:hover,
.btn-register:focus {
	color: #fff;
	background-color: #53A3CD;
	border-color: #53A3CD;
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
.btn-register:hover,
.btn-register:focus {
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
				<a class="navbar-brand" href="index.jsp">Buildus</a>
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
				<div class="panel panel-team">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">스터디 만들기</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="register-form" action="https://phpoll.com/register/process" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="text" name="name" id="name" tabindex="1" class="form-control" placeholder="팀이름" value="">
									</div>
									<div class="form-group">
										<input type="text" name="times" id="times" tabindex="2" class="form-control" placeholder="회차">
									</div>
									<div class="form-group">
										<input type="text" name="numbers" id="numbers" tabindex="3" class="form-control" placeholder="총인원수">
									</div>
									<div class="form-group">
      									<label for="category">카테고리</label>
      									<select id="category" class="form-control" tabindex="4">
        									<option selected>1</option>
        									<option>2</option>
        									<option>3</option>
     									 </select>
    								</div>
    								<div class="form-group">
    									<label for="theme">주제</label>
    									<textarea class="form-control" id="theme" rows="1" tabindex="5"></textarea>
  									</div>
									<div class="form-group">
    									<label for="goal">목표</label>
    									<textarea class="form-control" id="goal" rows="2" tabindex="6"></textarea>
  									</div>
									<div class="form-group">
    									<label for="content">상세내용</label>
    									<textarea class="form-control" id="content" rows="5" tabindex="7"></textarea>
  									</div>
									
    								<div class="row">
    									<div class="col-md-6">
    										<div class="form-group">
  												<label for="sdate" class="col-2 col-form-label">스터디 시작 예정일</label>
  												<div class="col-10">
   													<input class="form-control" type="date" value="2018-01-01" id="sdate">
  												</div>
											</div>
										</div>
										<div class="col-md-6">
    										<div class="form-group">
      											<label for="weekend">요일</label>
      											<select id="weekend" class="form-control" tabindex="8">
        											<option selected>주말</option>
        											<option>평일</option>
        											<option>주말/평일</option>
     									 		</select>
    										</div>
										</div>
									</div>
									<div class="form-group">
  										<label for="ddate" class="col-2 col-form-label">모집 마감일</label>
  										<div class="col-10">
   											<input class="form-control" type="date" value="2018-12-31" id="ddate">
  										</div>
									</div>
									
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" class="form-control btn btn-register" value="등록하기">
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
				<div class="col-sm-2" style="text-align:  center;"><h5>Copyright &copy; 2018</h5><h5>김장훈</h5></div>
				<div class="col-sm-4"><h4>대표자 소개</h4><p>저는 플레이데이터 수강생 김장훈 입니다. 빅데이터 엔지니어 과정을 수강하고 있습니다. </p></div>
				<div class="col-sm-2"><h4 style="text-align: center">내비게이션</h4>
					<div class="list-group">
						<a href="index.html" class="list-group-item">소개</a>
						<a href="instructor.html" class="list-group-item">운영진</a>
					</div>
				</div>
				<div class="col-sm-2"><h4 style="text-align: center">SNS</h4>
					<div class="list-group">
						<a href="#" class="list-group-item">페이스북</a>
						<a href="#" class="list-group-item">유튜브</a>
						<a href="#" class="list-group-item">네이버</a>
					</div>
				</div>
				<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"></span>&nbsp; by 김진호</h4>
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
});
	</script>
</body>
</html>