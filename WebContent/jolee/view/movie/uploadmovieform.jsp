<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="1n1ask.jsp" method="post" enctype="multipart/form-data">
<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>글쓰기</td>
			<td><input type="text" name="content" /></td>
		</tr>
		<tr>
			<td>참조파일</td>
			<td><input type="text" name="file" /></td>
		</tr>

					<tr>
			<td colspan="2" align="center">
			<input type="submit" value="문의하기" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href=index.jsp">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>