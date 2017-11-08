<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<script type="text/javascript">
	alert('등록되었습니다.');
	<%-- location.href = 'detail.jsp?no=<%=Integer.parseInt((String)session.getAttribute("no"))%>.jsp'; --%>
	location.href = 'detail.jsp?no=<%=(int)(session.getAttribute("no"))%>';
	</script>
