<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String memId="";
	if(request.getParameter("memId")!=null)
		memId=request.getParameter("memId");
%>
<% 
	MemberVO vo = (MemberVO)session.getAttribute("memlogin");

	if(vo!=null){
%>
<%=vo.getName() %>님 안녕하세요
<a href="../../login/logout.jsp">로그아웃</a>	
<%} else { %>
<%-- <a href="../../login/logout.jsp?goUrl=<%=(String)request.getAttribute("nowUrl")%>">로그인</a> --%>

<form action="../../login/loginReg.jsp">
	<input type="hidden" name="goUrl" value="<%=(String)request.getAttribute("nowUrl") %>" />
	아이디:<input type="text" name="memId" value="<%=memId%>"/>
	비밀번호:<input type="text" name="memPw" />
	<input type="submit" value="로그인" />
</form><%} %>
