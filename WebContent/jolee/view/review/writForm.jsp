

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
    <form action="writReg.jsp" enctype="multipart/form-data" method="post">
    	<table border="1">
    		<tr>
    			<td>����</td>
    			<td><input type="text" name="title"/></td>
    		</tr>
    		<tr>
    			<td>��ȭ����</td>
    			<td>
    				<select name="movie">
    					<option value="thor">�丣</option>
    					<option value="ppororo">�Ƿη�</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>���� ����</td>
    			<td>
    				<select name="star">
    					<option value="1">��</option>
    					<option value="2">�ڡ�</option>
    					<option value="2">�ڡڡ�</option>
    					<option value="2">�ڡڡڡ�</option>
    					<option value="2">�ڡڡڡڡ�</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>����</td>
    			<td><input type="file" name="pic"/></td>
    		</tr>
    		<tr>
    			<td>����</td>
    			<td><textarea name="content"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="�۾���"/><a href="index.jsp">���</a></td>
    		</tr>
    	</table>
    </form>