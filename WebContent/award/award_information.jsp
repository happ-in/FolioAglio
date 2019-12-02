<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>수상</title>
<script>
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {

			var name = document.querySelector('#name');
			var org = document.querySelector('#org');
			var result = document.querySelector('#result');
			var attachment = document.querySelector('#attachment');
			var memo = document.querySelector('#memo');			
			
			// 전체 검사
			// 회사명이 입력되지 않았을시
			if (name.value == '') {
				alert('수상 명을 입력하세요.');
				name.focus();
			} else if (org.value == '') {
				alert('주최를 입력하세요 ')
				org.focus();
			} else if (result.value == '') {
				alert('결과를 입력하세요 ')
				result.focus();
			}else {
				//저장하는거 구현해야함
				document.getElementById('form1').submit();
				self.close();
			}

		});
	});
</script>
<style>

	fieldset{
		background-color: white;
		
	}
	legend{
		background-color: white;
		font-wieght : bold;
		font-size: x-large;
	}
	.button_css{
		border: 1px solid ;
		background-color: white;
		color: black;
		font-wieght : bold;
		padding: 5px;
		border-top-left-radius : 5px;
		border-bottom-left-radius : 5px;
		border-top-right-radius : 5px;
		border-bottom-right-radius: 5px;
	}
	.button_css:hover{
		color: white;
		background-color: #B2CCFF;
	}
</style>
</head>
<body>
	<form action="awardAction.jsp" method="post" id = "form1">
		<fieldset>
			<legend>수상내용</legend>
			<table>
				<tr>
					<td>수상 명</td>
					<td><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>주최</td>
					<td><input type="text" id="org" name="org"></td>
				</tr>
				<tr>
					<td>결과</td>
					<td><input type="text" id="result" name="result"></td>
				</tr>
				<tr>
					<td>첨부자료</td>
					<td><input type="file" id="attachment" name="attachment"></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea id="memo" rows="3" cols="50"></textarea></td>
				</tr>
				<tr align = "right">
					<td colspan="2"><input type="button" id="confirm" class="button_css"
						value="확인">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>