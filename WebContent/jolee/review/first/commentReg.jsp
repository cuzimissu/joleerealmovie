
<%@page import="java.util.Date"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ComentVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
����
<%@ include file="../../inc/menuData.jsp" %>
<%
	ComentVO re2 = new ComentVO();
	//�ӽ� ���̵� ��� ���۵Ǹ� ���� ����
	session.setAttribute("mem", "cc");
	String id = (String)session.getAttribute("mem");
	String genre = "�ڹ̵�,�׼�";


	re2.setCate((String)request.getAttribute("cate"));
	//re.setCate("first");
	re2.setNo((int)(session.getAttribute("no")));
	re2.setId(id);
	re2.setContent(request.getParameter("content"));
	

	ComentDAO dao2 = new ComentDAO();
	dao2.insert(re2);
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>
  