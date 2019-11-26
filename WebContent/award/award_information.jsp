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
				alert('회사명을 입력하세요.');
				name.focus();
			}else {
				//저장하는거 구현해야함
				self.close();
			}

		});
	});
</script>
</head>
<body>
	<form name=fom>
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
					<td>재직기간</td>
					<td><input type="date" id="s_period" name="s_period"> ~ 
					<input type="date" id="e_period" name="e_period"></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea id="memo" rows="3" cols="50"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="confirm"
						value="확인">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>