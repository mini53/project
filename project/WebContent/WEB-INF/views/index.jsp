<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		.jumbotron {
			background-image: url("images/main.png"); 
			background-size: 100%;
			color: black;
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
					<li><a href="introduce.do">�Ұ�<span class="sr-only"></span></a></li>
					<li><a href="mypage.do">����������<span class="sr-only"></span></a></li>
					<li><a href="content.do">���͵� ����<span class="sr-only"></span></a></li>
					<li><a href="board.do">�����Խ���<span class="sr-only"></span></a></li>
					<li><a href="contact.do">�����ϱ�<span class="sr-only"></span></a></li>
					
				</ul>
				
				<ul class="nav navbar-nav navbar-right">
					<li><a href="loginform.do">�α���</a></li>
					
					<li><a href="joinform.do">ȸ������</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="jumbotron">
			<h1 class="text-left">Build UP</h1>
			<p class="text-left">���͵� �÷���</p>
			<p class="text-left"><a class="btn btn-primary btn=lg" href="study.do" role="button">�� ���鷯 ����</a></p>
		</div> 
		
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
				&nbsp;&nbsp;�������� ���͵�</h3>

			</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-sm-3 col-md-1">
						<div class="thumbnail">
							<a href="#"><img src="<c:url value="images/python.png"/>" style="width:100%"  align="center"></a>
						</div>
					</div>
					<div class="col-sm-3 col-md-1">
						<div class="thumbnail">
							<a href="#"><img src="<c:url value="images/java.png"/>" style="width:100%" align="center"></a>
						</div>
					</div>
					<div class="col-sm-3 col-md-1">
						<div class="thumbnail">
							<a href="#"><img src="<c:url value="images/spring.png"/>" style="width:100%" align="center"></a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title"><span class="glyphicon glyphicon-pencil"></span>
				&nbsp;&nbsp;�������� ���͵�<a class="btn btn-primary btn-md pull-right" href="content.do" role="button" >�ڼ��� ����</a></h3>
			</div>
			<div class="panel-body">
				<div class="row">
  					<div class="col-sm-6 col-md-4">
    					<div class="thumbnail">
    						<br>
      						<img src="<c:url value="images/java.png"/>" align="left">
      						<div class="caption">
        						<h3>&nbsp;�ڹ� �߱� ���͵�</h3>
        						<p>
        							<span class="label label-danger">#JAVA</span>
									<span class="label label-primary">#������</span>
									<span class="label label-success">#����,3~5��</span>
									<span class="label label-warning">#4��</span>
									<span class="label label-info">#4������</span>
									<span class="label label-default">#������ �ϽǺи�</span>
								</p>
     					 	</div>
   						</div>
  					</div>
					<div class="col-sm-6 col-md-4">
    					<div class="thumbnail">
    						<br>
      						<img src="<c:url value="images/spring.png"/>" align="left">
      						<div class="caption">
        						<h3>&nbsp;������ �ϼ�</h3>
        						<p>
        							<span class="label label-danger">#Spring</span>
									<span class="label label-primary">#����</span>
									<span class="label label-success">#��,7~9��</span>
									<span class="label label-warning">#3��</span>
									<span class="label label-info">#3��</span>
									<span class="label label-default">#:)</span>
								</p>
     				 		</div>
   						</div>
  					</div>
  					<div class="col-sm-6 col-md-4">
    					<div class="thumbnail">
    						<br>
      						<img src="<c:url value="images/python.png"/>" align="left">
      						<div class="caption">
        						<h3>&nbsp;���̽� �ʱ�</h3>
        						<p>
        							<span class="label label-danger">#Python</span>
									<span class="label label-primary">#������</span>
									<span class="label label-success">#��,1~5��</span>
									<span class="label label-warning">#4��</span>
									<span class="label label-info">#4��</span>
									<span class="label label-default">#ù����</span>
								</p>
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
				<div class="col-sm-2" style="text-align:  center;"><h5>Copyright &copy; 2018</h5><h5>������</h5></div>
				<div class="col-sm-4"><h4>��ǥ�� �Ұ�</h4><p>���� �÷��̵����� ������ ������ �Դϴ�. ������ �����Ͼ� ������ �����ϰ� �ֽ��ϴ�. </p></div>
				<div class="col-sm-2"><h4 style="text-align: center">������̼�</h4>
					<div class="list-group">
						<a href="index.do" class="list-group-item">�Ұ�</a>
						<a href="instructor.do" class="list-group-item">���</a>
					</div>
				</div>
				<div class="col-sm-2"><h4 style="text-align: center">SNS</h4>
					<div class="list-group">
						<a href="#" class="list-group-item">���̽���</a>
						<a href="#" class="list-group-item">��Ʃ��</a>
						<a href="#" class="list-group-item">���̹�</a>
					</div>
				</div>
				<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"></span>&nbsp; by ����ȣ</h4>
				</div>
			</div>
		</div>
	</footer>
	<div class="row">
		<div class="modal" id="modal" tabindex="1">
			<div class="mdoal-dialog modal-sm">
				<div class="modal-content">
					<div class="modal-header">
						�ڵ� �ν����� Ư¡
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						���� �÷����� <br>
						Ư�� �ǽð�<br><br>
						<img src="images/youtube.png" id="imagepreview" style="width: 256px; height: 256px;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>