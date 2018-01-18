<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.jumbotron {
   background-image: url("images/main.png");
   background-size: 100%;
   color: black;
}
</style>
   <nav class="navbar navbar-default">
   <div class="container-fluid">
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
            aris-expanded="false">
            <span class="sr-only"></span> <span class="icon-bar"></span> <span
               class="icon-bar"></span> <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="index.jsp">Build US</a>
      </div>
      <div class="collapse navbar-collapse"
         id="bs-example-navbar-collapse-1">
         <c:choose>
            <c:when test="${userid != null}">
               <ul class="nav navbar-nav">
                  <li><a href="introduce.do">�Ұ�<span class="sr-only"></span></a></li>
                  <li><a href="content.do">���͵� ����<span class="sr-only"></span></a></li>
                  <li><a href="board.do">�����Խ���<span class="sr-only"></span></a></li>
                  <li><a href="contact.do">�����ϱ�<span class="sr-only"></span></a></li>
                  <li><a href="mypage.do">����������<span class="sr-only"></span></a></li>
               </ul>
                  <ul class="nav navbar-nav navbar-right">
                  <li><a style="font-style: italic; color: aqua;">${userid} �� ȯ�� �մϴ�</a></li>
                  <li><a href ="mypage.do">������������</a>
                  <li><a href="UserLogout.do">�α׾ƿ�</a></li>
         </ul>
            </c:when>
            <c:when test="${userid == null}">
               <ul class="nav navbar-nav">
                  <li><a href="introduce.do">�Ұ�<span class="sr-only"></span></a></li>
                  <li><a href="content.do">���͵� ����<span class="sr-only"></span></a></li>
                  <li><a href="board.do">�����Խ���<span class="sr-only"></span></a></li>
                  <li><a href="contact.do">�����ϱ�<span class="sr-only"></span></a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
                  <li><a href="loginform.do">�α���</a></li>
                  <li><a href="joinform.do">ȸ������</a></li>
               </ul>
            </c:when>
         </c:choose>
         <div class="container-fluid">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle collapsed"
                  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
                  aris-expanded="false">
                  <span class="sr-only"></span> <span class="icon-bar"></span> <span
                     class="icon-bar"></span> <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="index.do">Build US</a>
            </div>
         </div>
      </div>
   </nav>

   <div class="container">
      <div class="row">
         <table class="table table-striped"
            style="text-align: center; border: 1px solid #dddddd">
            <thead>
               <tr>
                  <th colspan="3" style="background-color: #eeeeee; text-align: center;">�Խ��� �� ���� ���</th>
               </tr>
            </thead>
            <c:if test="${!empty detail}">
            <tbody>
               <tr>
                  <td style="widht: 20%;">�� ����</td>
                  <td colspan="2">${detail.title}</td>
               </tr>
               <tr>
                  <td>�ۼ���</td>
                  <td colspan="2">${detail.userid}</td>
               </tr>
               <tr>
                  <td>�ۼ�����</td>
                  <td colspan="2">${detail.edate}</td>
               </tr>
               <tr>
                  <td>����</td>
                  <td colspan="2" height="200" align="left">${detail.text}</td>
               </tr>
            </tbody>
            </c:if>
         </table>
         <a href="board.do" class="btn btn-primary">���</a>
      </div>
   </div>
   <footer style="background-color: #000000; color: #ffffff">
   <div class="container">
      <br>
      <div class="row">
         <div class="col-sm-2" style="text-align: center;">
            <h5>Copyright &copy; 2018</h5>
            <h5>������</h5>
         </div>
         <div class="col-sm-4">
            <h4>��ǥ�� �Ұ�</h4>
            <p>���� �÷��̵����� ������ ������ �Դϴ�. ������ �����Ͼ� ������ �����ϰ� �ֽ��ϴ�.</p>
         </div>
         <div class="col-sm-2">
            <h4 style="text-align: center">������̼�</h4>
            <div class="list-group">
               <a href="index.do" class="list-group-item">�Ұ�</a> <a
                  href="instructor.do" class="list-group-item">���</a>
            </div>
         </div>
         <div class="col-sm-2">
            <h4 style="text-align: center">SNS</h4>
            <div class="list-group">
               <a href="#" class="list-group-item">���̽���</a> <a href="#"
                  class="list-group-item">��Ʃ��</a> <a href="#"
                  class="list-group-item">���̹�</a>
            </div>
         </div>
         <div class="col-sm-2">
            <h4 style="text-align: center;">
               <span class="glyphicon glyphicon-ok"></span>&nbsp; by ����ȣ
            </h4>
         </div>
      </div>
   </div>
   </footer>
   <div class="row">
      <div class="modal" id="modal1" tabindex="1">
         <div class="modal-dialog modal-sm">
            <div class="modal-content">
               <div class="modal-header">
                  �α����� ���ּ���.
                  <button class="close" data-dismiss="modal">&times;</button>
               </div>
               <div class="modal-body" style="text-align: center;">
                  ���� �÷����� <br> Ư�� �ǽð�<br> <br> <img
                     src="images/youtube.png" id="imagepreview"
                     style="width: 256px; height: 256px;">
               </div>
            </div>
         </div>
      </div>
   </div>
   <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
   <script src="js/bootstrap.js"></script>
</body>
</html>