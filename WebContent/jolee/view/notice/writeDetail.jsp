<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border=1>
		<tr>
			<td>ī�װ�</td>
			<td><%=request.getParameter("cate") %></td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=request.getParameter("title") %></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<img alt="" src="../ff/<%=request.getParameter("file") %>">
			</td>
		</tr>
		<tr>
			<td>����</td>
			<td><%=request.getParameter("content") %></td>
		</tr>
	</table>
</body>
</html>