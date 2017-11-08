
<%@page import="java.util.Date"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ComentVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
리뷰
<%@ include file="../../inc/menuData.jsp" %>
<%
	ComentVO re2 = new ComentVO();
	//임시 아이디 멤버 제작되면 넣을 예정
	session.setAttribute("mem", "cc");
	String id = (String)session.getAttribute("mem");
	String genre = "코미디,액션";


	re2.setCate((String)request.getAttribute("cate"));
	//re.setCate("first");
	re2.setNo((int)(session.getAttribute("no")));
	re2.setId(id);
	re2.setContent(request.getParameter("content"));
	

	ComentDAO dao2 = new ComentDAO();
	dao2.insert(re2);
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>
  