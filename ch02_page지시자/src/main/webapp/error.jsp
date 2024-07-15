<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %> <!-- 04.userErrorPage에서 온 오류가 여기가 맞다는 소리 "무조건 넣어줘야함"  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	다음과 같은 예외가 발생되었습니다<p/>
	에러 타입 : <%=exception.getClass().getName() %>
	에러 메세지 : <%=exception.getMessage() %>
</body>
</html>