<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memberBean" class = "db.access.MemberBean"/>
<jsp:useBean id = "memMgr" class = "db.access.MemberMgr" />
<jsp:setProperty name ="memberBean" property="*" />
<% boolean result = memMgr.memberInsert(memberBean); %>
<%if(true){
	//request.setAttribute("CONTENTPAGE", "./account/signupForm.jsp");
	response.sendRedirect("../index.jsp?CONTENTPAGE=./account/signupSuccess.jsp");%>

<%} else {%>
	<script>history.back();
	</script>
	
<%} %>