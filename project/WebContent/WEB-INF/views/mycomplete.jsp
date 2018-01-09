<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		blockquote {
			background: #f9f9f9;
			border-left: 10px solid #cccccc;
			margin: 1.5em 10px;
			padding: 0.5em 10px;
			quotes: "\201C""\201D""\2018""\2019";
		}
		blockquote:before{
			color: #cccccc;
			content: open-quote;
			font-size: 3em;
			line-height: 0.1em;
			margin-left: 0.5em;
			vertical-align:  -0.4em;
		}
		blockquote:after{
			color: #cccccc;
			content: close-quote;
			font-size: 3em;
			line-height: 0.1em;
			margin-left: 0.25em;
			vertical-align:  -0.4em;
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
				<a class="navbar-brand" href="index.jsp">Builders</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="introduce.do">소개<span class="sr-only"></span></a></li>
					<li><a href="mypage.do">마이페이지<span class="sr-only"></span></a></li>
					<li><a href="content.do">스터디 보기<span class="sr-only"></span></a></li>
					<li><a href="board.do">자유게시판<span class="sr-only"></span></a></li>
					<li><a href="contact.do">문의하기<span class="sr-only"></span></a></li>
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-controrl" placeholder="내용을 입력하세요.">
					</div>
					<button type="submit" class="btn btn-default">검색</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="loginform.do">로그인</a></li>
					<li><a href="joinform.do">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<ul class="nav nav-tabs">
  			<li role="presentation"><a href="mypage.do">나의 정보</a></li>
  			<li role="presentation"><a href="mydoing.do">진행중인 스터디</a></li>
  			<li role="presentation" class="active"><a href="mycomplete.do">완료한 스터디</a></li>
		</ul>
		

		<br><br><br><br><br><br><br><br><br>
	</div>
	<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<br>
			<div class="row">
				<div class="col-sm-2" style="text-align:  center;"><h5>Copyright &copy; 2018</h5><h5>김장훈</h5></div>
				<div class="col-sm-4"><h4>대표자 소개</h4><p>저는 플레이데이터 수강생 김장훈 입니다. 빅데이터 엔지니어 과정을 수강하고 있습니다. </p></div>
				<div class="col-sm-2"><h4 style="text-align: center">내비게이션</h4>
					<div class="list-group">
						<a href="index.do" class="list-group-item">소개</a>
						<a href="instructor.do" class="list-group-item">운영진</a>
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
</body>
</html>