
<%@page import="movie.ReviewVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<%=request.getAttribute("serviceUrl") %>view ������


<script type="text/javascript">
	function search(){
			searchgenre.submit();
	}

</script>
<form action="search.jsp" name="searchgenre">
<table>
<tr>
<td><input type="checkbox" name="genre" value="Action">�׼�</td>
<td><input type="checkbox" name="genre" value="Horror">����</td>
<td><input type="checkbox" name="genre" value="Romance">�θǽ�</td>
<td><input type="button" onclick="search()" value="�˻�"></td>
</tr> 
</table>
</form>


<table border="">
	<tr>
	<td>����</td>
	<td>�帣</td>
	<td>����</td>
	

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
	String a = "������";
if(a.equals("������")){%>
	<tr >
		<td colspan="3" align="center" >
			<a href="uploadmovieform.jsp">�۾���</a>
		</td>
	</tr>
	<%} %>
</table>
