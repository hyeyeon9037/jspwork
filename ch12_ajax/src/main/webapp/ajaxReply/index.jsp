<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>댓글 보기</title>
<style>
	body {text-align:center;}
	img { width: 600px;}
</style>
</head>
<body>
<img src="../resources/20240726_153703.png">
	<table>
		<thead>
			<tr>
				<th>댓글작성</th>
				<td>
					<textarea rows="3" cols="50"></textarea>
				</td>
				<td><button id="btn1">댓글등록</button></td>
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
				data: {bnum: 1},  //원글의 num값을 넘겨준다
				success:function(result){
					let value = "";
					for(let i=0; i<result.length; i++) {
						value += "<tr>"
							  + "	<td>" + result[i].no + "</td>"
							  + "	<td>" + result[i].content + "</td>"
							  + "	<td>" + result[i].redate.substring(0,10) + "</td>"
							  + "</tr>";
					}
					$("table tbody").html(value);
				},
				error:function() {
					console.log("ajax 통신 실패");
				}
			})
		}
	</script>
</body>
</html>