<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>해외경험</title>
<script>
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {

			var country = document.querySelector('#country');
			var reason = document.querySelector('#reason');
			var language = document.querySelector('#language');
			var s_period = document.querySelector("#s_period");
			var e_period = document.querySelector("#e_period");
			var detail = document.querySelector('#detail');
			var picture = document.querySelector('#picture');
			var memo = document.querySelector('#memo');
			
			
			
			// 전체 검사
			// 체류국가가 입력되지 않았을시
			if (country.value == '') {
				alert('체류국가를 입력하세요.');
				country.focus();
				// 체류형태가 입력되지 않았을시
			} else if (reason.value == '') {
				alert('체류형태를 입력하세요.');
				reason.focus();
				// 구사언어가 입력되지 않았을시
			} else if (language.value == '') {
				alert('구사언어를 입력하세요.');
				language.focus();
			// 시작 체류기간이 입력되지 않았을시
			} else if (s_period.value == '') {
				alert('체류기간을 입력하세요.');
				s_period.focus();
				//끝 체류기간이 입력되지 않았을시
			} else if (e_period.value == '') {
				alert('체류기간을 입력하세요 ')
				e_period.focus();
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
			<legend>해외경험</legend>
			<table>
				<tr>
					<td>체류국가</td>
					<td><input type="text" id="country" name="country"></td>
				</tr>
				<tr>
					<td>체류형태</td>
					<td><input type="text" id="reason" name="reason"></td>
				</tr>
				<tr>
					<td>구사언어</td>
					<td><input type="text" id="language" name="language"></td>
				</tr>
				<tr>
					<td>체류기간</td>
					<td><input type="date" id="s_period" name="s_period"> ~ 
					<input type="date" id="e_period" name="e_period"></td>
				</tr>
				<tr>
					<td>상세설명</td>
					<td><textarea id="detail" name="detail" rows="10" cols="50"></textarea></td>
				</tr>
				<tr>
					<td>사진</td>
					<td><input type="file" value="파일 선택" id="picture" name="picture"/></td>
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