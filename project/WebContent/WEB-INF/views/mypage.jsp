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
		.fixed-panel {
  			height: 160px;
  			overflow-y: scroll;
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
				<a class="navbar-brand" href="index.do">Buildus</a>
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
						<li><a style="font-style: italic; color: aqua;">${userid} 님 환영 합니다</a></li>
						<li><a href ="mypage.do">마이페이지로</a>
						<li><a href="UserLogout.do">로그아웃</a></li>
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
			<div class="col-xs-12">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-tags"></span>
						&nbsp;&nbsp;김장훈 강사
					</h3>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<a href="#">
								<img class="media-object" src="images/people01.png" alt="개발자 이미지">
							</a>
						</div>
						<div class="media-body">
							<h4 class="media-heading">김장훈</h4><br>
							BuildUP의 대표 CEO 입니다.
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h5 class="panel-title">진행중인 스터디</h5>
					</div>
					<div class="panel-body fixed-panel">
						<table class="table">
               				<thead>
                  				<tr>
                     				<th>스터디명</th>
                     				<th>주제</th>
                     				<th>내용</th>
                     				<th>시작날짜</th>
                 				</tr>
               				</thead>
               				<tbody>
                  				<tr>
                     				<td><a href="schedule.html">자바스터디</a></td>
                     				<td>JAVA</td>
                    				<td>JAVA기초 강좌</td>
                    				<td>2018-01-01</td>
                  				</tr>
               				</tbody>
            			</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h5 class="panel-title">완료한 스터디</h5>
					</div>
					<div class="panel-body fixed-panel">
						<table class="table">
               				<thead>
                  				<tr>
                     				<th>스터디명</th>
                     				<th>주제</th>
                     				<th>내용</th>
                     				<th>시작날짜</th>
                 				</tr>
               				</thead>
               				<tbody>
                  				<tr>
                     				<td><a href="schedule.html">스프링스터디</a></td>
                     				<td>spring</td>
                    				<td>스프링 mvc</td>
                    				<td>2017-12-12</td>
                  				</tr>
               				</tbody>
            			</table>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h5 class="panel-title">모집중인 스터디</h5>
					</div>
					<div class="panel-body fixed-panel">
						<table class="table">
               				<thead>
                  				<tr>
                     				<th>스터디명</th>
                     				<th>주제</th>
                     				<th>신청인원</th>
                     				<th>마감인원</th>
                     				<th>시작날짜</th>
                 				</tr>
               				</thead>
               				<tbody>
                  				<tr>
                     				<td><a href="#">자바고급스터디</a></td>
                     				<td>JAVA</td>
                     				<td>2</td>
                    				<td>4</td>
                    				<td>2018-03-01</td>
                  				</tr>
               				</tbody>
            			</table>
					</div>
				</div>
			</div>

			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h5 class="panel-title">신청중인 스터디</h5>
					</div>
					<div class="panel-body fixed-panel">
						<table class="table">
               				<thead>
                  				<tr>
                     				<th>스터디명</th>
                     				<th>주제</th>
                     				<th>마감인원</th>
                     				<th>마감상태</th>
                     				<th>시작날짜</th>
                 				</tr>
               				</thead>
               				<tbody>
                  				<tr>
                     				<td><a href="#">파이썬합정</a></td>
                     				<td>python</td>
                    				<td>5</td>
                    				<th>모집중</th>
                    				<td>2018-03-01</td>
                  				</tr>
               				</tbody>
            			</table>
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
</body>
</html>