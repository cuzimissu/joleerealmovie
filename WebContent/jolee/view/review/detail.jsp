<%@page import="req.GalleryVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	
	GalleryVO vo = (GalleryVO )request.getAttribute("data");
System.out.println(vo);
%>    

<table border="">
	<tr>
		<td>��ȣ</td><td><%=vo.getNum() %></td>
	</tr><tr>
		<td>�̹���</td><td>
		<img src="../../../img/cate/<%=vo.getName() %>"  alt="" /></td>
	</tr>


	<tr>
		<td colspan="2" align="right">
			<a href="index.jsp">���</a>
		</td>
	</tr>
</table>
