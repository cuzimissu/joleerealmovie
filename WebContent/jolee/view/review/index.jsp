
<%@page import="req.GalleryVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%=request.getAttribute("serviceUrl") %>view ∆‰¿Ã¡ˆ

<table border="">
	
<tr>
<%
int i =1;
for(GalleryVO vo : 
	(ArrayList<GalleryVO>)request.getAttribute("data")) {
	
%>

		
		
		<td><a href="detail.jsp?id=<%=vo.getNum() %>">
		<img src="../../../img/cate/<%=vo.getName() %>" width="50" alt="" />
		</a></td>
		
	

<%
if(i%5==0){
	out.println("</tr><tr>");
}

i++;	

} %>
</tr>	
</table>
