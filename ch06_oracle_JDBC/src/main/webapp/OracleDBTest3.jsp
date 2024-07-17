<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try {
	Class.forName("oracle.jdbc.OracleDriver");
	} catch (Exception e) {
       e.printStackTrace();
     }
	
%>
</body>
</html>