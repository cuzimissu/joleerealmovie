<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String memId="";
	if(request.getParameter("memId")!=null)
		memId=request.getParameter("memId");
%>
<form action="../../login/loginReg.jsp">
	<input type="hidden" name="goUrl" value="<%=(String)request.getAttribute("nowUrl") %>" />
	id:<input type="text" name="memId" value="<%=memId%>"/>
	pw:<input type="text" name="memPw" />
	<input type="submit" value="·Î±×ÀÎ" />
</form>