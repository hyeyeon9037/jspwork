<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/css/index.css" rel="stylesheet">
<%
String id = (String)session.getAttribute("idKey");
%>
</head>
<body>
	<header>
		<div class = "Logo">
			<img src = "https://www.tjoeun.co.kr/images/logo.gif?v=20190918" alt="로고">
		</div>
		<nav>
			<ul class="nav">
				<li><a href ="vote/voteList.jsp">투표프로그램</a></li>
				<li><a href ="board/list.jsp">게시판</a></li>
				<% if( id == null) {%>
				<li><a href ="member/login.jsp">로그인</a></li>
				<% } else { %>
				<li><a href ="member/logout.jsp">로그아웃</a></li>
				<% } %>
			</ul>
		</nav>
		<div id="Login">
		<% if(id != null) { %>
			<p>[<%=id %>님 로그인 상태]</p>	
		<% } %>
		</div>
		
		
	</header>
	<article>
	
	<section>
		<img src="resources/img/IMG_8652.jpg" alt="쿠로미사진3">
	</section>
	
	</article>
	
	
	
</body>
</html>