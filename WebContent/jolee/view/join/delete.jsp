<%@page import="file_p.MemberDAO"%>
<%@page import="file_p.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	
	
	MemberVO mem = new MemberVO();
	
	mem.setId(request.getParameter("id"));
	mem.setPw(request.getParameter("pw"));
	
	
	mem.setPath(request.getRealPath("ff"));
	mem.setPath("C:\\king\\work\\jspProj\\WebContent\\ff");
	
	String msg = "pw�� ��ġ���� �ʽ��ϴ�.";
	String url = "detail.jsp?id="+mem.getId();
	
	if(new MemberDAO().delete(mem))
	{
		msg = "Ż�� �Ǿ����ϴ�";
		url = "memList.jsp";
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