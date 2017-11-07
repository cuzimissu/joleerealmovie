
<%@page import="req.GalleryDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
<%
	System.out.println(request.getAttribute("cate"));
request.setAttribute("data",  new GalleryDAO().list((String)request.getAttribute("cate")));
%>
<jsp:forward page="../../view/template.jsp"></jsp:forward>