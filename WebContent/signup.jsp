<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
	<script>
		window.addEventListener('load', function() {
			var ok = document.querySelector('#ok');
			
			
			ok.addEventListener('click', function(){
				var userID = document.getElementById('userID');
				var userPW = document.getElementById('userPW');
				var RePW = document.getElementById('RePW');
				
				if (userID.value == ""){
					alert('���̵� �Է����ּ���.');
					userID.focus();
				} else if (userPW.value == ""){
					alert('��й�ȣ�� �Է����ּ���.');
					userPW.focus();
				} else if (userPW.value != RePW.value){
					alert('��й�ȣ�� ����ġ�մϴ�.');
					RePW.focus();
				} else {
					
				}
			});
		});
	</script>
</head>
<body>
	<div>
		<form action = 'loginAction.jsp'>
			<fieldset>
				<table>
					<tr>	
						<td>���̵�</td>
						<td><input type="text" id="userID" name="userID" placeholder="ID"></td>
					</tr>
					<tr>
						<td>��й�ȣ</td>
						<td><input type="password" id="userPW" name="userPW" placeholder="PassWord"></td>
					</tr>
					<tr>
						<td>��й�ȣ</td>
						<td><input type="password" id="RePW" name="RePW" placeholder="PassWord"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" id="ok" value="����"></td>
					</tr>			
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>