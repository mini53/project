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
	<h3>ȸ�����Կ� ���Ű��� ȯ���մϴ�</h3>
	<!-- 	private String userid; // ȸ�� ���̵�
	private int status; // ���� 0, Żȸ9, ������ 8
	private String pwd; // 
	private String name; // �г���
	private String category; // ���ɺо�
	private String gender; // ���� 
	private String business; // ����
	private String dept; // ����
	private Date edate; // �����
	private Date mdate; // ������
	private Date cdate; // ������ -->

	<form action="/userRegister.do" method="post">
		<label> ����� ID<input type="text" value="ID" name="userid"></label><br> 
		<label> ��й�ȣ<input type="text" value="PassWord" name="pwd"></label><br>
		<label> ��й�ȣ Ȯ��<input type="text" value="RepassWord" name="pwd_two"></label><br> 
		<label> �г��� ����<input type="text"value="NickName" name="name"></label><br>
	 	<label> ������ �Է����ּ���
	 	<input type="radio" name="gender" value="0" />��
    	<input type="radio" name="gender" value="1" />��
    	</label><br>
    	<input type = "submit" value = "�Ϸ�"><br>
    	<input type = "reset" value = "�ٽ�"><br>
		<!--  ���ɺп�, ����, ����, ������ ���� �����;���  -->
		<!--  �����, ������, �������� biz�ܿ��� �ذ� -->
	</form>

</body>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="js/bootstrap.js"></script>
</html>