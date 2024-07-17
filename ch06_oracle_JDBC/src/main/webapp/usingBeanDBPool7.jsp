<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, ch06.*"%>
<jsp:useBean id ="pool" class = "ch06.EmpBeanDBPool7"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>사번</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>직급코드</th>
		</tr>
	<%
	ArrayList<Bean> alist = pool.getList();
	for(int i=0; i<alist.size(); i++){
		EmpBean bean = alist.get(i);
	}
	%>
	
	</table>
</body>
</html>