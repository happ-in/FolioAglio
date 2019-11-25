<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>일정 추가</title>
<script>
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {
			var name = document.querySelector('#name');
			var date = document.querySelector('#date');
			var time = document.querySelector('#time');
			var memo = document.querySelector("#memo");
		
			// 전체 검사
			// 체류국가가 입력되지 않았을시
			if (name.value == '') {
				alert('일정명을 입력하세요.');
				name.focus();
				// 체류형태가 입력되지 않았을시
			} else if (date.value == '') {
				alert('날짜를 입력하세요.');
				date.focus();
				// 구사언어가 입력되지 않았을시
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
			<legend>일정 추가</legend>
			<table>
				<tr>
					<td>일정명</td>
					<td><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><input type="date" id="date" name="date"></td>
				</tr>
				<tr>
					<td>시간</td>
					<td><input type="time" id="time" name="time"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea id="memo" rows="10" cols="50"></textarea></td>
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