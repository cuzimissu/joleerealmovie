<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String memId="";
	if(request.getParameter("memId")!=null)
		memId=request.getParameter("memId");
%>
<form action="../login/loginReg.jsp">
	<input type="hidden" name="goUrl" value="<%=(String)request.getAttribute("nowUrl") %>" />
	아이디:<input type="text" name="memId" value="<%=memId%>"/>
	비밀번호:<input type="text" name="memPw" />
	<input type="submit" value="로그인" />
</form>
