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
	String blood = request.getParameter("blood");
%>


<%
	if(blood.equals("A형")){%>
		<jsp:forward page="EX_A.jsp"></jsp:forward>
<%}
	else if(blood.equals("B형")){%>
		<jsp:forward page="EX_B.jsp"></jsp:forward>
<%
	}
	else if(blood.equals("AB형")){%>
		<jsp:forward page="EX_AB.jsp"></jsp:forward>
<%
	}
	else{%>
		<jsp:forward page="EX_O.jsp"></jsp:forward>
<%
	}
%>
	
	
</body>
</html>