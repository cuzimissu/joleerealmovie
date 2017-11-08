<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Date"%>
<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
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
	
	String id = request.getParameter("id");
	String msg = "id가 중복되지 않습니다.";
	String url = "idCheck.jsp?id="+id;
	
	 if(new MemberDAO().equals(id)) 
	{
		msg = "아이디가 중복됩니다.";
		
	}  
	
	String email = mm.getParameter("email1")+
			"@"+mm.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(mm.getParameter("id"));
	mem.setPw(mm.getParameter("pw"));
	mem.setName(mm.getParameter("name"));
	mem.setGender(mm.getParameter("gender"));
	mem.setNick(mm.getParameter("nick"));
	mem.setPhone(mm.getParameter("phone"));
	mem.setGrade(mm.getParameter(mm.getParameter("grade")));
	
	mem.setSysfile(mm.getFilesystemName("profile"));
	mem.setOrifile(mm.getOriginalFileName("profile"));
	
	
	
	mem.setEmail(email);
	
	MemberDAO dao = new MemberDAO();
	dao.insert(mem);
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('회원가입 되었습니다');
	location.href = 'detail.jsp?id=<%=mem.getId()%>';
</script>
</body>
</html>