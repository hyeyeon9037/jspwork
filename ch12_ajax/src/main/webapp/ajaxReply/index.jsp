<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<img src="../resources/20240726_153703.png">
	<table>
	<tr>
		<thead>
			<td>
				<textarea rows="3" cols="50"></textarea>
			</td>
			<td>
				<button id="btn1">댓글 등록</button>
			</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	
	<script type="text/javascript">
		$(() => {
			selectReplyList();
		})	
		
		function selectReplyList() {
			$.ajax({
				url: "rlist.bo",
				success:function(result){
					let value = "";
					for(let i=0; i<result.length; i++) {
						value += "<tr>"
							  + "   <td>" + result[i].no + "</td>"
							  + "   <td>" + result[i].content + "</td>"
							  + "   <td>" + result[i].ref + "</td>"
							  + "   <td>" + result[i].name + "</td>"
							  + "   <td>" + result[i].redate + "</td>"
							  + "</tr>";
					}
					$("table tbody").html(value);
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			})
		}
		
	
	</script>
	
	
</body>


</html>