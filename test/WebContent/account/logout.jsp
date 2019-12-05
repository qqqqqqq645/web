<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% session.removeAttribute("loginchk");
session.removeAttribute("adminchk");
session.removeAttribute("username");
//response.sendRedirect("index.jsp?CONTENTPAGE=./indexframe/frontpage.jsp");
response.sendRedirect("index.jsp");

//response.sendRedirect(request.getContextPath());

%><!--<script type="text/javascript"> location.href="notice/List.jsp"; </script>-->

<jsp:forward page = "../index.jsp?CONTENTPAGE=./indexframe/frontpage.jsp"/>