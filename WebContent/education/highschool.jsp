<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>학력</title>
<script>
	
</script>
</head>
<body>
	<form name=fom>
		<fieldset>
			<legend>고등학교</legend>
			<table  id="high" style="display:'';">
				<tr>
					<td>학교명</td>
					<td><input type="text" id="name" name="name"></td>
				</tr>
				<tr>
					<td>학교 소재지</td>
					<td><select id="location" name = "location">
							<option>강원도</option>
							<option>경기도</option>
							<option>경상남도</option>
							<option>경상북도</option>
							<option>광주광역시</option>
							<option>대구광역시</option>
							<option>대전광역시</option>
							<option>부산광역시</option>
							<option>서울특별시</option>
							<option>세종특별자치시</option>
							<option>울산광역시</option>
							<option>인천광역시</option>
							<option>전라남도</option>
							<option>전라북도</option>
							<option>제주특별자치시도</option>
							<option>충청남도</option>
							<option>충청북도</option>
					</select></td>
				</tr>
				<tr>
					<td>계열</td>
					<td><select id="division" name="division">
					<option>강원도</option>
							<option>인문계</option>
							<option>공업</option>
							<option>과학</option>
							<option>농업</option>
							<option>마이스터</option>
							<option>상업</option>
							<option>예술</option>
							<option>외국어</option>
							<option>체육</option>
							<option>특성화</option>
							<option>기타</option>
					</select></td>
				</tr>
				<tr>
					<td>입학일자</td>
					<td><input type="date" id="e_date" name="e_date"></td>
				</tr>
				<tr>
					<td>졸업일자</td>
					<td><input type="date" id="g_date" name="g_date"></td>
				</tr>
				<tr>
					<td>졸업여부</td>
					<td><select id="g_state" name = "g_state">
							<option>졸업</option>
							<option>졸업예정</option>
							<option>중퇴</option>
							<option>휴학</option>
							<option>재학</option>
					</select></td>
				</tr>
				
				<tr>
					<td colspan="2"><input type="button" id="confirm"
						value="확인">
					</td>
				</tr>
			</table>

</body>
</html>