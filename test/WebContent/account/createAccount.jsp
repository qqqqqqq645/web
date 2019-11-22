<%@page import="db.access.DbAccess"%>
<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	//액션페이지
%>
<jsp:useBean id="mem" class="member.MemberInfo" />
<%--자바빈생성 --%>
<jsp:setProperty property="*" name="mem"/>


<html>
<head><title>가입</title></head>
<body>
<%	String query [] = new String[4]; 
	query[0] = 	mem.getId();
	query[1] = mem.getPasswd();
	query[2] = mem.getName();
	query[3] = mem.getEmail();
	
	DbAccess temp = new DbAccess();
	
	
	for(String re : query){
		out.print(re+"<br>");
	}
	
%>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="mem" property="id" /></td>
	<td>암호</td>
	<td><jsp:getProperty name="mem" property="passwd" /></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty name="mem" property="name" /></td>
	<td>이메일</td>
	<td><jsp:getProperty name="mem" property="email" /></td>
</tr>

</table>

</body>
</html>
