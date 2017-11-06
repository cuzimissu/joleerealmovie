
<%@page import="lee.movieDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%

request.setAttribute("data", new movieDAO().search(request.getParameter("genre").toLowerCase()));
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>