<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="req.MemberVO"%>
<%@page import="java.util.Date"%>
<%@page import="movie.ReviewDAO"%>
<%@page import="movie.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
����
<%@ include file="../../inc/menuData.jsp" %>
<%
String upfile = request.getRealPath("file");


	upfile = "C:/file";

	MultipartRequest mm = new MultipartRequest(request,
			upfile, 10 * 1024 * 1024,
			"euc-kr",
			new DefaultFileRenamePolicy()); 

	//request.setCharacterEncoding("euc-kr");
	ReviewVO re = new ReviewVO();
	//�ӽ� ���̵� ��� ���۵Ǹ� ���� ����
	session.setAttribute("mem", "cc");
	String id = (String)session.getAttribute("mem");


	String genre = "�ڹ̵�,�׼�";


	//re.setCate((String)request.getAttribute("cate"));
	re.setCate("first");
	re.setId(id);
	
	re.setTitle(mm.getParameter("title"));
	re.setContent(mm.getParameter("content"));
	 re.setOrifile(mm.getOriginalFileName("pic"));
	re.setSysfile(mm.getFilesystemName("pic")); 
	/*re.setOrifile(request.getParameter("pic"));
	re.setSysfile(request.getParameter("pic"));*/
	re.setMovietitle(mm.getParameter("movie"));
	re.setGenre(genre);
	re.setStar(Double.parseDouble(mm.getParameter("star")));

	ReviewDAO dao = new ReviewDAO();
	dao.insert(re);
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>
  