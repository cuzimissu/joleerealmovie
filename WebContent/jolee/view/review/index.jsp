<%@page import="movie.ReviewVO"%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%=request.getAttribute("serviceUrl")%>view 페이지

<table border="">
	<tr>
		<td>No.</td>
		<td>Title</td>
		<td>Movie</td>
		<td>star</td>
		<td>id</td>
	</tr>

	<%
		for (ReviewVO vo : (ArrayList<ReviewVO>) request.getAttribute("data")) {
	%>

	<tr>
		<td><%=vo.getNo() %></td>
		<td>
		<a
			href="detail.jsp?no=<%=vo.getNo()%>"> <%=vo.getTitle()%>
		</a>
		</td>
		<td><%=vo.getMovietitle() %></td>
		<td><%for(int i=0; i<vo.getStar();i++){%>★<%} %></td>
		<td><%=vo.getId() %></td>
	</tr>
	<%
		}
	%>
	
</table>


<a href="writForm.jsp">글쓰기</a>
<!-- MemberVO vo = (MemberVO)session.getAttribute("mem");

	if(vo!=null){} -->
