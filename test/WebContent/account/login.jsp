<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<jsp:useBean id = "loginMgr" class = "db.access.MemberMgr" />

<%
	request.setCharacterEncoding("UTF-8");
	String usrId= request.getParameter("usrname");
	String passwd = request.getParameter("psw");
	//out.print(usrId);
	//out.print(passwd);
	if(loginMgr.loginCheck(usrId,passwd)){
		session.setAttribute("loginchk", " ");
		session.setAttribute("username",loginMgr.getName(usrId, passwd));
		if(loginMgr.adminCheck(usrId, passwd)){
			session.setAttribute("adminchk", " ");
		}
		response.sendRedirect("../index.jsp?CONTENTPAGE=./indexframe/frontpage.jsp");
		//response.sendRedirect("../index.jsp");
	}
	else
		response.sendRedirect("../index.jsp?CONTENTPAGE=./account/signUpForm.html");
		//response.sendRedirect("../index.jsp");
		
%>


