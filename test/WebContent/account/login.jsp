<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.swing.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%! public class TFrame extends JFrame {
			TFrame() {
				setSize(100,300);
				setVisible(true);
				setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			}
		}%>
<body>
	<%
		new TFrame();
		response.sendRedirect("../index.jsp");
		
	%>
</body>
</html>