
<%@page import="req1.NoticeVO"%>
<%@page import="req1.NoticeDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%


	String upfile = request.getRealPath("pic");
	upfile = "C:\\king\\jolee\\joleemovie\\WebContent\\pic";
	MultipartRequest mm = new MultipartRequest(
			request,
			upfile,
			10*1024*1024,
			"euc-kr",
			new DefaultFileRenamePolicy()
			);

	
	String email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	NoticeVO noti = new NoticeVO();
	
	noti.setCate(mm.getParameter("cate"));
	noti.setTitle(mm.getParameter("title"));
	noti.setSysfile(mm.getFilesystemName("orifile"));
	noti.setOrifile(mm.getOriginalFileName("sysfile"));
	noti.setContent(mm.getParameter("content"));
	
	
	NoticeDAO dao = new NoticeDAO();
	dao.insert(noti);
	
	%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
</body>
</html>