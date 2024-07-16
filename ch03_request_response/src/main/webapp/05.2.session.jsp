<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParmeter("id");
	String pw = request.getParameter("pwd");
%>

<h1> Session Ex</h1>
<form method="post" action="05.3.session.jsp">
	1. 가장 좋아하는 계절은 ?
	<input type="radio" name="season" value="봄">봄&emsp;
	<input type="radio" name="season" value="봄">봄&emsp;
	<input type="radio" name="season" value="봄">봄&emsp;
	<input type="radio" name="season" value="봄">봄&emsp;
	<input type="radio" name="season" value="봄">봄&emsp;
	
</form>

</body>
</html>