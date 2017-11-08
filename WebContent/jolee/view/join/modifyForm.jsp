<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="req.MemberVO"%>
<%@page import="req.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function frmGo()
	{
		if(confirm('수정하시겠습니까?'))
		{
			frm.submit();
		}
	}

</script>
<style type="text/css">
.sch{
	width:100px;
	height:30px;
	border-radius:15px; 
}

</style>
</head>
<body>
<form action="modifyReg.jsp" method="post" name="frm">
	<table border=1>
		<tr>
			<td>id</td>
			<td><input type="text" name="id" 
			value="<%=vo.getId() %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>pw</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			
			<%
				LinkedHashMap <String , String >gender= new LinkedHashMap();
				gender.put("m", "남");
				gender.put("f", "여");
			for(String key : gender.keySet()) {
				String chk ="";
				
				if(vo.getGender().equals(key))
					chk="checked=\"checked\"";
			%>
				<input type="radio" name="gender" <%=chk %> value="<%=key%>"/>
				<%=gender.get(key)%>
			<%} %>
			</td>
		</tr>
		<tr>
			<td>취미</td>
			<td>
			
			<%
				LinkedHashMap <String , String >hobby= new LinkedHashMap();
				hobby.put("read", "독서");
				hobby.put("game", "game");
				hobby.put("fish", "낚시");
			for(String key : hobby.keySet()){
				String chk ="";
			for(String ho : vo.getHobby().split(",")) {
				
				
				if(ho.equals(key))
					chk="checked=\"checked\"";
			}
			%>
				<input type="checkbox" name="hobby" <%=chk %> value="<%=key%>"/>
				<%=hobby.get(key)%>
			<%} %>
			</td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="ff" /></td>
		</tr>
		<tr>
			<td>email</td>
			<td>
			<%
				String [] email = vo.getEmail().split("@");
			%>
			
				<input type="text" name="email1" value="<%=email[0]%>">@
				<select name="email2">
				<%
				LinkedHashMap <String , String >domain= new LinkedHashMap();
				domain.put("naver.com", "네이버");
				domain.put("gmail.com", "구글");
				domain.put("daum.net", "다음");
				domain.put("yahoo.co.kr", "야후");
				domain.put("jum.com", "줌");
			for(String key : domain.keySet()) {
				String chk ="";
				
				if(email[1].equals(key))
					chk="selected=\"selected\"";
			%>
				<option  <%=chk %> value="<%=key%>"/>
				<%=domain.get(key)%></option>
			<%} %>

				</select>
			</td>
		</tr>
		<tr>
			<td>남기실 말</td>
			<td><textarea rows="5" cols="30" 
			name="content"><%=vo.getContent() %></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
			<input type="button" value="수정" onclick="frmGo()" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="detail.jsp?id=<%=vo.getId()%>">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>