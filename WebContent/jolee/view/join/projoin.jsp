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

</style>
</head>
<body>
<form action="joinReg.jsp" method="post" enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="id" size="10" maxlength="8" />
			<input type="button" name="sch" class="sch" value="id중복확인"/>
			</td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>grade</td>
			<td><input type="text" name="grade" /></td>
		</tr>
		<tr>
			<td>생일</td>
			<td><input type="text" name="birth" /></td>
		</tr>
		<tr>
			<td>사진</td>
			<td><input type="file" name="pic" /></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
				<input type="radio" name="gender" checked="checked" value="m"/>남
				<input type="radio" name="gender"  value="f"/>여
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
			<input type="checkbox" name="hobby" value="read"/>독서
			<input type="checkbox" name="hobby" value="game" checked="checked"/>게임
			<input type="checkbox" name="hobby" value="fish" checked="checked"/>낚시
			</td>
		</tr>
		
		<tr>
			<td>email</td>
			<td>
				<input type="text" name="email1">@
				<select name="email2">
					<option value="naver.com">네이버</option>
					<option value="gmail.com">구글</option>
					<option value="daum.net" selected="selected">다음</option>
					<option value="yahoo.co.kr">야후</option>
					<option value="jum.com">줌</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>남기실 말</td>
			<td><textarea rows="5" cols="30" name="content">
선생님은 귀여워요
wdkpdkpwqkd
wjkdp[wqkdp[wqkdp[wqk]]]</textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="memList.jsp">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>