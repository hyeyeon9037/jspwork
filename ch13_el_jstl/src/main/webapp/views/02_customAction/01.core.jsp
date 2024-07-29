<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	
	<h3>1. 변수 (속성 == attribute)</h3>
	<pre>
		* 변수 선언과 동시에 초기화(c:set var="" value="" [scope=""])
		- 변수를 선언하고 초기값을 대입해두는 기능을 제공
		- 해당 변수를 어떤 scope에 담아둘건지 지정가능(생략시 기본값은 pageScope에 담김)
		→ 해당 scope에 setAttribute를 통해 key-value형태로 데이터를 담아 놓는 것이라고 생각하면 된다.
		→ c:set으로 선언된 변수는 EL로 접근하여 사용가능
		
		- 변수 타입을 별도로 지정하지 않는다.
		- **초기값은 반드시 지정해둬야 한다.
	</pre>
	
	
	<c:set var="num1" value="10" /> <!-- pageContext.setAttribute("num1","10") -->
	<c:set var="num2" value="20" scope="	request" /> <!-- pageContext.setAttribute("num2","20") -->
	
	num1 변수값 : ${num1}<br>
	num2 변수값 : ${num2}<br>
	
	<%-- <c:set  var="result" value="num1+num2" /> String문자열이 됨 --%>
	<c:set var="result" value="${num1 + num2}" /> <!-- 변수이름 넣을때에는 반드시 $를 넣는다. -->
	result 변수 값 : ${result }<br>
	
	pageScope.num1 : ${pageScope.num1}<br>
	requestScope.num2 : ${requestScope.num2 }<br>
	sessionScope.result : ${sessionScope.result}<br><br>
	requestScope.result : ${requestScope.result}<br><br>
	
	<!-- value 속성 대신에 시작태그와 종료태그 사이에 초기값 지정 가능 -->
	<c:set var="result" scope="request">
	
	</c:set>
	
	
</body>
</html>