
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	movieVO vo = (movieVO )request.getAttribute("data");
System.out.println(vo);
%>    

<table border="">
	<tr>
		<td>title</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>줄거리</td><td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td>사진</td><td><img src="../../file/<%=vo.getSysfile() %>" width="500"></td>
	</tr>
	<tr>
		<td>개봉일</td><td><%=vo.getReldate() %></td>
	</tr>
	<tr>
		<td>종료일</td><td><%=vo.getClosedate() %></td>
	</tr>
	<tr>
		<td>등록일</td><td><%=vo.getRegdate()%></td>
	</tr>
	


	<tr>
		<td colspan="2" align="right">
			<a href="index.jsp">목록</a>
		</td>
	</tr>
</table>
