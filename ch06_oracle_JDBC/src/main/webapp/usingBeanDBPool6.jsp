<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, ch06.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> Bean과 DBConnectionPool을 이용한 ORACLE연동</h1>
		<table border="1">
		<tr>
			<th>사번</th>
			<th>사원명</th>
			<th>부서명</th>
		</tr>
		<%
		
			ArrayList<Bean> alist = new ArrayList<Bean>();
			for(int i=0; i<alist.size(); i++) {
				Bean bean = alist.get(i);
			
		%>
		<tr>
		<td><%=bean.getEmp_id() %></td>
		<td><%=bean.getEmp_name() %></td>
		<td><%=bean.getDept_code() %></td>
		</tr>
		
		<%
		}
		%>
		</table>
	
</body>
</html>