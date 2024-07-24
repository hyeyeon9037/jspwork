<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.*" %>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String nowPage = request.getParameter("nowPage");
   Board board = (Board)session.getAttribute("bean");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{width:600px; margin-top: 50px;}
	table th{background-color:#0000C9; height:40px; color:white;}
	table td {height:30px;}
	textarea {resize: none;}
</style>
</head>
<body>
	<form action="boardReply" method="post">
		<table align="center">
			<tr>
				<th colspan="2">댓 글 등 록</th>
			</tr>
			<tr>
				<td colspan="2"><br></td>
			</tr>
			<tr>
				<td width="15%">성명</td>
				<td><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value ="<%=board.getSubject()%>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" required>수정 시에는 비밀번호가 필요합니다</td>
			</tr>
			<tr>
				<td colspan="2"><br><br><hr></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="수정 완료">&emsp;
					<input type="reset" value="다시 수정">&emsp;
					<input type="button" value="뒤로" onclick="history.go(-1)">
				</td>
			</tr>
		</table>
		<!-- 앞에서 넘어온 값 -->
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		<!-- 앞에서 넘어온 값 -->
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
		<!-- 댓글을 쓰는 부모의 정보 ★중요★-->
		<input type="hidden" name="ref" value="<%=board.getRef() %>">
		<input type="hidden" name="pos" value="<%=board.getPos() %>">
		<input type="hidden" name="depth" value="<%=board.getDepth() %>">
	</form>
</body>
</html>