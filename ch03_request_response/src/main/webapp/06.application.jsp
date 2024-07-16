<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1> Application </h1>
	서블릿 컨테이너의 이름과 버전 : <%=application.getServerInfo() %>
	01.1.request.html 파일의 MIME type : <%=application.getMimeType("01.1.request.html") %> <p/>
	
	웹 어플리케이션의 url 경로명 : <%=application.getContextPath() %> <p/>
	로컬에 저장되어 잇는 경로명 : <%=application.getRealPath("/") %> <!-- "/"은 지금 내가 있는 위치(루트?)라는 뜻  -->
	<%application.log("application 로그 확인"); %>
	
</body>
</html>