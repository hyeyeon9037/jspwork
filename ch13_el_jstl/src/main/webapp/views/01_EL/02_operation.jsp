<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> 1. 산술 연산</h3>
	
	기존방식 : <%= (int)request.getAttribute("big") + (int)request.getAttribute("small") %> <br><br>
	
	10 + 3 = ${big + small}<br>
	10 - 3 = ${big - small}<br>
	10 * 3 = ${big * small}<br>
	10 / 3 = ${big / small} 또는 ${big div small }<br>
	10 % 3 = ${big % small} 또는 ${big mod small }<br>
	
	<h3> 2. 대소 비교 연산</h3>
	
	10 > 3 = ${big > small} 또는 ${big gt small}<br>
	10 < 3 = ${big < small} 또는 ${big lt small}<br>
	10 >= 3 = ${big >= small} 또는 ${big ge small}<br>
	10 <= 3 = ${big <= small} 또는 ${big le small}<br>
	
	<h3>3. 동등 비교 연산</h3>
	<!-- el에서는 ==비교는 자바에서 equals()와 같은 동작을 함 -->
	sOne과 sTwo는 일치합니까? ${sOne == sTwo } 또는 ${sOne eq sTwo }<br>
	sOne과 sTwo는 일치하지 않습니까? ${sOne != sTwo } 또는 ${sOne ne sTwo }<br>
	
	big에 담긴 값은 10과 일치합니까?
	

	
</body>
</html>