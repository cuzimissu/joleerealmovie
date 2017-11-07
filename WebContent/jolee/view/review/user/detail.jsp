
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setAttribute("data",  new GalleryDAO().detail(request.getParameter("id")));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>