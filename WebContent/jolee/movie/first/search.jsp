
<%@page import="lee.movieDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="../../inc/menuData.jsp" %>
<%

String[] arr = request.getParameterValues("genre");
for(int i = 0; i < arr.length; i++){
	if(arr.length==1){
		System.out.print(arr.length);
		System.out.print(arr[0]);
		request.setAttribute("data", new movieDAO().search(arr[0].toLowerCase()));
	}else if(arr.length==2){
		System.out.print(arr[0]+" "+arr[1]);
		
		request.setAttribute("data", new movieDAO().search2(arr[0].toLowerCase(),arr[1].toLowerCase()));
	}else if( arr.length==3){
		request.setAttribute("data", new movieDAO().search3(arr[0].toLowerCase(),arr[1].toLowerCase(),arr[2].toLowerCase()));
	}
}
request.setAttribute("data", new movieDAO().search(request.getParameter("genre").toLowerCase()));
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>