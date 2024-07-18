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
	Cookie cookie = new Cookie("myCookie", "Apple");
	response.addCookie(cookie);
	
	// 위에 있는 걸 한줄로 줄인것
	response.addCookie(new Cookie("NAME", "John"));
	response.addCookie(new Cookie("GENDER", "Male"));
	response.addCookie(new Cookie("age", "25"));
%>

	쿠키생성<p/>
	쿠키의 내용은 <a href="02.2.testeCookie.jsp">클릭하세요</a>
	

</body>
</html>