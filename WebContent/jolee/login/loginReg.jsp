<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

MemberVO vo = new MemberVO();
vo.setId(request.getParameter("memId"));
vo.setPw(request.getParameter("memPw"));

String msg = "id�� pw�� ��ġ���� �ʽ��ϴ�.";
String url = "../"+request.getParameter("goUrl");


MemberVO res = new MemberDAO().login(vo);

if(res!=null)
{
	session.setAttribute("mem", res);
	msg = res.getName()+"�� �α��� �Ǿ����ϴ�.";
}else{
	
	if(url.contains("?"))
		url+="&";
	else
		url+="?";
	
	url +="memId="+vo.getId();
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
		alert("<%=msg%>");
		location.href="<%=url%>";
	</script>
</body>
</html>