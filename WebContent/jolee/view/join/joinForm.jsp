<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
.sch{
	width:100px;
	height:30px;
	border-radius:15px; 
}
.sch{
	width:70px;
	height:30px;
	border-radius:15px; 
}

</style>
</head>
<body>
<form action="joinReg.jsp" method="post" enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="id�ߺ�Ȯ��"/>
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>name</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td>gender</td>
			<td>
				<input type="radio" name="gender" checked="checked" value="m"/>��
				<input type="radio" name="gender"  value="f"/>��
			</td>
		</tr>
		<tr>
			<td>nick</td>
			<td><input type="text" name="nick" /></td>
		</tr>
		<tr>
			<td>phone</td>
			<td><input type="text" name="phone" /></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td>
				<input type="text" name="email1">@
				<select name="email2">
					<option value="naver.com">���̹�</option>
					<option value="gmail.com">����</option>
					<option value="daum.net" selected="selected">����</option>
					<option value="yahoo.co.kr">����</option>
					<option value="jum.com">��</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>������</td>
			<td><input type="file" name="profile" /></td>
		</tr>
		<tr>
			<td>genre</td>
			<td><input type="text" name="genre" /></td>
		</tr>
		<tr>
			<td>grade</td>
			<td><input type="text" name="grade" /></td>
		</tr>
		<!-- <tr>
			<td>���</td>
			<td>
			<input type="checkbox" name="hobby" value="read"/>����
			<input type="checkbox" name="hobby" value="game" checked="checked"/>����
			<input type="checkbox" name="hobby" value="fish" checked="checked"/>����
			</td>
		</tr> -->
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="memList.jsp">�������</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>