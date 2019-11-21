<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/main.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>GGUCK'S</title>
</head>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "./indexframe/frontpage.jsp";
	}
%>
<body>


	<header>
		<jsp:include page="./indexframe/nav.jsp" flush="false"/>
	</header>
			<jsp:include page="./indexframe/left.jsp" flush="false"/>
	<div>
	<section id="areaMain">
			<jsp:include page="<%=contentPage %>" flush="false"/>
	</section>
	</div>
	<footer>
		<jsp:include page="./indexframe/bottom.jsp" flush="false"/>
	</footer>


</body>
</html>