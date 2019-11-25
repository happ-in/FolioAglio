<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>어학/자격증</title>
<script>
	function Rradio_OnOff(id){
		if(id == "Radio_On"){
			document.all["Radio_On"].style.display = '';
			document.all["Radio_Off"].style.display = "none";
		}else{
			document.all["Radio_On"].style.display = "none";
			document.all["Radio_Off"].style.display = '';
		}
		
	}
	window.addEventListener('load', function() {
		var confirm = document.querySelector('#confirm');
		
		confirm.addEventListener('click', function() {
			var radio = document.querySelectorAll('.radio');
			var language_name = document.querySelector('#language_name');
			var kind = document.querySelector('#kind');
			var application_num = document.querySelector('#application_num');
			var test_date = document.querySelector('#test_date');
			var score = document.querySelector('#score');
			var score_name = document.querySelector('#score_name');
			
			self.close();
		});
		
		var confirm1 = document.querySelector('#confirm1');
				
				confirm1.addEventListener('click', function() {
					var classfication_name = document.querySelector('#classfication_name');
					var classfication_num = document.querySelector('#classfication_num');
					var issue_org = document.querySelector('#issue_org');
					var issue_date = document.querySelector('#issue_date');
					
					self.close();
			
		});
		
	});
</script>
</head>
<body>
	<form name=fom>
		<fieldset>
			<legend>어학/자격증</legend>
			<table>
				<tr>
					<td>구분</td>
					<td><input type="radio" id="radio" value="language" name="radio" onclick="Rradio_OnOff('Radio_On');" checked/> 어학
						<input type="radio" id="radio" value="classfication" name="radio" onclick="Rradio_OnOff('Radio_Off');">자격증</td>
				</tr>
			</table>
			<table  id="Radio_On" style="display:'';">
				<tr>
					<td>외국어명</td>
					<td><input type="text" id="language_name" name="language_name"></td>
				</tr>
				<tr>
					<td>어학종류</td>
					<td><input type="text" id="kind" name="kind"></td>
				</tr>
				<tr>
					<td>수험번호</td>
					<td><input type="text" id="application_number" name="application_number"></td>
				</tr>
				<tr>
					<td>응시일자</td>
					<td><input type="date" id="testdate" name="testdate"></td>
				</tr>
				<tr>
					<td>취득점수</td>
					<td><input type="text" id="score" name="score"></td>
				</tr>
				<tr>
					<td>취득급수</td>
					<td><input type="text"  id="score_name" name="score_name"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="confirm"
						value="확인">
					</td>
				</tr>
			</table>
			<table  id="Radio_Off" style="display:none;">
				<tr>
					<td>자격증명</td>
					<td><input type="text" id="classfication_name" name="classfication_name"></td>
				</tr>
				<tr>
					<td>자격증번호</td>
					<td><input type="text" id="classfication_num" name="classfication_num"></td>
				</tr>
				<tr>
					<td>발급기관</td>
					<td><input type="text" id="issue_org" name="issue_org"></td>
				</tr>
				<tr>
					<td>취득일자</td>
					<td><input type="date" id="issue_date" name="issue_date"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="button" id="confirm1"
						value="확인">
					</td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>