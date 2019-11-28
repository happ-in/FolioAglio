<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>인적사항</title>
<script>
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {

			var country = document.querySelector('#country');
			var picture = document.querySelector('#picture');
			var birth = document.querySelector('#birth');
			var name = document.querySelector('#name');
			var e_name = document.querySelector('#e_name');
			var gender = document.querySelectorAll(".gender");
			var email = document.querySelector('#email');
			var number = document.querySelector('#number');
			var address = document.querySelector('#address');
			var git_address = document.querySelector('#git_address');
			var memo = document.querySelector('#memo');
			
			//성별 검사

			var genderVal = false;
			for (var i = 0; i < gender.length; i++) {
				//성별을 검사하면서 한개라도 체크가되어있다면
				if (gender[i].checked) {
					//true를 셋팅
					genderVal = true;
				}
			}
			
			// 전체 검사
			// 국적이 입력되지 않았을시
			if (country.value == '') {
				alert('국적을 입력하세요.');
				country.focus();
				// 생년월일이 입력되지 않았을시
			} else if (birth.value == '') {
				alert('생년월일을 입력하세요.');
				birth.focus();
				// 이름이 입력되지 않았을시
			} else if (name.value == '') {
				alert('이름을 입력하세요.');
				name.focus();
				// 생년월일이 입력되지 않았을시
			} else if (e_name.value == '') {
				alert('영문명을 입력하세요.');
				e_name.focus();
				// 성별이 체크가 안되었을시
			} else if (genderVal == false) {
				alert("성별을 입력하세요");
				gender[0].focus();
			// 이메일이 입력되지 않았을시
			} else if (email.value == '') {
				alert('이메일을 입력하세요.');
				email.focus();
				//전화번호가 입력되지 않았을시
			} else if (number.value == ''|| isNaN(number.value)) {
				alert('전화번호를 입력하세요 ')
				number.focus();
				//주소가 입력되지 않았을시
			} else if (address.value == '') {
				alert('전화번호를 입력하세요 ')
				address.focus();
			}else {
				//저장하는거 구현해야함
				document.getElementById('form1').submit();
				self.close();
			}

		});
	});
</script>
</head>
<body>
	<form action="personalAction.jsp" method="post" id = "form1">
		<fieldset>
			<legend>인적사항</legend>
			<table>
				<tr>
					<td>국적</td>
					<td><input type="text" id="country" name="country"></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="text" id="birth" name="birth" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#birth").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>영문명</td>
					<td><input type="text" id="e_name" name="e_name"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><input type="radio" value="male" name="gender"
						class="gender">남 <input type="radio" value="female"
						name="gender" class="gender">여</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" id="email" name="email"> @ <select
						id="url">
							<option>gmail.com</option>
							<option>naver.com</option>
							<option>daum.net</option>
							<option>nate.com</option>
					</select></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" id="number" name="number"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" id="address" name="address"></td>
				</tr>
				<tr>
					<td>git 주소</td>
					<td><input type="text" id="git_address" name="git_address"></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea id="memo" rows="3" cols="50"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="confirm"
						value="확인"">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>