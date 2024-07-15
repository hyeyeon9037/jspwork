<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_2</title>
<%
	request.setCharacterEncoding("UTF-8"); // 한글이 있을 때 쓰고 없을 땐 안써도 된다.
	String name = request.getParameter("name");
	String color = request.getParameter("color");
%>
</head>
<body>
		<%=name %><br>
		<%=color %><br>
		
	
	
</body>
</html>