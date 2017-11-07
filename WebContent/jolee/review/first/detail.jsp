<%@page import="movie.ReviewVO"%>
<%@page import="movie.ReviewDAO"%>
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	int a = Integer.parseInt(request.getParameter("no"));
	request.setAttribute("data",  new ReviewDAO().detail(a));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>