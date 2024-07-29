<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="com.tjoeun.vo.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포워딩 된 01_el.jsp 페이지
	
	<h3>1. 기존 방식대로 스크립트릿과 표현식을 이용하여 각 scope에 담겨 있는 값을 화면에 출력</h3>
	<%
		// request.getAttribute는 Object 타입으로 반환
		String classRoom = (String)request.getAttribute("classRoom");
		Person suudent = (Person)request.getAttribute("student");
		
		String academy = (String)session.getAttribute("academy");
		Person teacher = (Person)session.getAttribute("teacher");
			
	%>
	
</body>