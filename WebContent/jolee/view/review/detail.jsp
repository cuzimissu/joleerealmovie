<%@page import="movie.ReviewVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	ReviewVO vo = (ReviewVO)request.getAttribute("data");
%>    

<table border="">
	<tr>
		<td>title</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>id</td><td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>content</td><td><%=vo.getContent() %></td>
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="index.jsp">list</a>
		</td>
	</tr>
</table>