<%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String [] hoArr =request.getParameterValues("hobby");

	String hobby ="";
	
	for(int i =0;i<hoArr.length;i++)
	{
		hobby+=hoArr[i];
		if(i<hoArr.length-1)
			hobby+=",";
	}
	
	String email = request.getParameter("email1")+
			"@"+request.getParameter("email2");
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	mem.setGender(request.getParameter("gender"));
	mem.setHobby(hobby);
	mem.setEmail(email);
	mem.setContent(request.getParameter("content"));
	
	
	
	String msg = "pw가 일치하지 않습니다.";
	String url = "modifyForm.jsp?id="+mem.getId();
	
	
	if(new MemberDAO().modify(mem))
	{
		msg = "수정 되었습니다";
		url = "detail.jsp?id="+mem.getId();
	}
	
	%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('<%=msg%>');
	location.href = '<%=url%>';
</script>
</body>
</html>