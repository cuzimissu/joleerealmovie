<%@page import="req1.NoticeDAO"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
center/notice/list
<%@ include file="../../inc/menuData.jsp" %>
 
 <%
 	request.setAttribute("data", new NoticeDAO().detail(Integer.parseInt(request.getParameter("no"))));
 %>
 
<jsp:forward page="../../view/template.jsp"></jsp:forward>