
<%@page import="movie.ReviewVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<%=request.getAttribute("serviceUrl") %>view 페이지


<script type="text/javascript">
	function search(){
			searchgenre.submit();
	}

</script>
<form action="search.jsp" name="searchgenre">
<table>
<tr>
<td><input type="checkbox" name="genre" value="Action">액션</td>
<td><input type="checkbox" name="genre" value="Horror">공포</td>
<td><input type="checkbox" name="genre" value="Romance">로맨스</td>
<td><input type="button" onclick="search()" value="검색"></td>
</tr> 
</table>
</form>


<table border="">
	<tr>
	<td>제목</td>
	<td>장르</td>
	<td>별점</td>
	

	</tr>

<% for(ReviewVO vo : 
	(ArrayList<ReviewVO>)request.getAttribute("data")) {
	
%>
<tr>
		
		<td><a href="detail.jsp?title=<%=vo.getMovietitle() %>"><%=vo.getMovietitle() %></a></td>
		<td><%=vo.getGenre() %>
		<td><%=vo.getStar() %> </td>
		
		
	</tr>

<%} %>
<%
	String a = "관리자";
if(a.equals("관리자")){%>
	<tr >
		<td colspan="3" align="center" >
			<a href="uploadmovieform.jsp">글쓰기</a>
		</td>
	</tr>
	<%} %>
</table>
