<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
<%
	int sum = 0;
// 1+2+3+4+5+6+7+8+9+10=55  << 이렇게 출력하려면 if절 
	for(int i =1; i<=10; i++){
		if(i <10)
			/* 이렇게 쓸수도 있다.
			out.print<"(table>");
			out.print(" <tr> ");
			out.print("<th>출력</th> ");
			out.print("<th>날짜</th>");
			out.print("<th>수업</th>");
			out.print(" </tr> ");
			
			out.print(" <tr> ");
			out.print("<td>  </td> ");
			out.print("<td>  </td>");
			out.print("<td>  </td>");
			out.print(" </tr> ");
			
			out.print("</table>");
			*/
			out.print(i + " + ");
		else
			out.print(i + " = ");
		sum += i;
	}
%>
 --%>
<%
   int sum=0;
   for(int i = 0; i<=10; i++){
      if(i<10){ // jsp를 끊었다가 쓸 때는 반드시 중괄호를 해준다
%>
    <%=(i + " + ") %>
<%      
      }else{
%>         
	<%=(i + " = ") %>
<%    
      }
      sum += i;
   }
%>
<%=sum %><br><br>


<%
	int[] arr = new int[10];
	for(int i=0; i<arr.length; i++){
		arr[i] = i+1;
		// 1~10까지 한줄씩 출력 out.print(arr[i] + "<br>");
%>
		<%=arr[i] + "<br>" %>
<%
	}
%>
<!-- 끊었다가 쓸때는 이렇게하고 한줄씩 출력하면 out.print를 쓰면 된다. -->


</body>
</html>