<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page errorPage="error.jsp" %> <!-- 에러가 났을때 error.jsp로 가라는 소리  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>userErrorPage</title>
<%! %>
</head>
<body>
<% int one=1, zero=0; %>
	<h1>ErrorPage</h1>
	<p>one과 zero의 사칙연산</p>
	one+zero=<%=one+zero %><p/> <!-- 한줄 쓸꺼면 <p/>이렇게 써도 된다 -->
	one+zero=<%=one-zero %><p/>
	one+zero=<%=one*zero %><p/>
	one+zero=<%=one/zero %><p/>
</body>
</html>