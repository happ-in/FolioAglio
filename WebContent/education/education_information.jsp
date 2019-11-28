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
<title>학력</title>
<script>
	function Rradio_OnOff(id){
		if(id == "high"){
			document.all["high"].style.display = '';
			document.all["collage"].style.display = "none";
			document.all["graduated"].style.display = "none";
		}else if(id == "collage"){
			document.all["high"].style.display = "none";
			document.all["collage"].style.display = ''
			document.all["graduated"].style.display = "none";
		}else{
			document.all["high"].style.display = "none";
			document.all["collage"].style.display = "none"
			document.all["graduated"].style.display = '';
		}
		
	}
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {

			var radio = document.querySelectorAll('.radio'); //구분
			var name = document.querySelector('#name'); //학교명
			var location = document.querySelector('#location'); // 학교 소재지
			var division = document.querySelector('#division'); //계열			
			var e_state = document.querySelector('#e_state'); // 입학구분
			var e_date = document.querySelector("#e_date"); //입학일자
			var g_date = document.querySelector('#g_date'); // 졸업일자
			var g_state = document.querySelector('#g_state'); //졸업여부
			var major = document.querySelector('#major'); //전공
			var grade = document.querySelector('#grade'); //학점
			var classes = document.querySelector('#classes'); //이수학점
			var total_grade = document.querySelector('#total_grade');//전체학점
			var major_grade = document.querySelector('#major_grade');//전공학점
			var transfer = document.querySelector('#transfer'); //복수전공, 부전공
			var memo = document.querySelector('#memo');
			
			
			// 전체 검사
			if (name.value == '') {
				alert('학교명을 입력하세요.');
				name.focus();
			} else if (location.value == '') {
				alert('학교 소재지를 입력하세요.');
				location.focus();
			} else if (division == '') {
				alert("계열을 입력하세요");
				division.focus();
			} else if (e_date.value == '') {
				alert('입학일자를 입력하세요 ')
				e_date.focus();
			} else if (g_date.value == '') {
				alert('졸업일자를 입력하세요 ')
				g_date.focus();
			} else if (g_state.value == '') {
				alert('졸업여부를 입력하세요 ')
				g_state.focus();
			}else {
				self.close();
			}

		});
	});
</script>
</head>
<body>
	<form name=fom>
		<fieldset>
			<legend>학력</legend>
			<table>
				<tr>
					<td>구분</td>
					<td><input type="radio" id="radio" value="high" name="radio" onclick="Rradio_OnOff('high');" checked/> 고등학교
						<input type="radio" id="radio" value="collage" name="radio" onclick="Rradio_OnOff('collage');">대학교
						<input type="radio" id="radio" value="graduated" name="radio" onclick="Rradio_OnOff('graduated');"> 대학원</td>
				</tr>
			</table>
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
					<td><input type="text" id="e_date" name="e_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#e_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>졸업일자</td>
					<td><input type="text" id="g_date" name="g_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#g_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
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
			
			<table  id="collage" style="display:none;">
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
							<option>인문계열</option>
							<option>사회계열</option>
							<option>예체능계열</option>
							<option>자연과학계열</option>
							<option>공학계열</option>
							<option>농업계열</option>
							<option>의학계열</option>
							<option>기타</option>
					</select></td>
				</tr>
				<tr>
					<td>입학구분</td>
					<td><select id="e_state" name = "e_state">
							<option>입학</option>
							<option>편입</option>
					</select></td>
				</tr>
				<tr>
					<td>입학일자</td>
					<td><input type="text" id="e_date" name="e_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#e_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>졸업일자</td>
					<td><input type="text" id="g_date" name="g_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#g_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
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
					<td>전공</td>
					<td><input type="text" id="major" name="major"></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><input type="text" id="grade" name="grade"> / <select id="total_grade" name = "total_grade">
							<option>4.0</option>
							<option>4.3</option>
							<option>4.5</option>
							<option>5.0</option>
							<option>7.0</option>
							<option>100</option>
					</select></td>
				</tr>
				<tr>
					<td>전공학점</td>
					<td><input type="text" id="grade" name="grade"> / <select id="total_grade" name = "total_grade">
							<option>4.0</option>
							<option>4.3</option>
							<option>4.5</option>
							<option>5.0</option>
							<option>7.0</option>
							<option>100</option>
					</select></td>
				</tr>
				<tr>
					<td>이수학점</td>
					<td><input type="text" id="classes" name="classes"></td>
				</tr>
				<tr>
					<td>부전공/ 복수전공 명</td>
					<td><input type="text" id="submajor" name="submajor"></td>
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
			
			<table  id="graduated" style="display:none;">
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
							<option>인문계열</option>
							<option>사회계열</option>
							<option>예체능계열</option>
							<option>자연과학계열</option>
							<option>공학계열</option>
							<option>농업계열</option>
							<option>의학계열</option>
							<option>기타</option>
					</select></td>
				</tr>
				<tr>
					<td>입학일자</td>
					<td><input type="text" id="e_date" name="e_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#e_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>졸업일자</td>
					<td><input type="text" id="g_date" name="g_date" placeholder="날짜넣기">
					<script>
						$(function(){
							$("#g_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
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
					<td>전공</td>
					<td><input type="text" id="major" name="major"></td>
				</tr>
				<tr>
					<td>학점</td>
					<td><input type="text" id="grade" name="grade"> / <select id="total_grade" name = "total_grade">
							<option>4.0</option>
							<option>4.3</option>
							<option>4.5</option>
							<option>5.0</option>
							<option>7.0</option>
							<option>100</option>
					</select></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea id="memo" rows="3" cols="50"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="confirm"
						value="확인" onclick="window.close()">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>