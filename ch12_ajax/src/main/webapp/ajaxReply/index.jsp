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
					console.log(result);
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			})
		}
		
	
	</script>
	
	
</body>


</html>