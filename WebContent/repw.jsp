<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="maincss.css">
<meta charset="utf-8">
<title>패스워드 재설정</title>
</head>
<body>
	<form>
		<div align="center">
			<h2 class="pw_h">비밀번호 재설정</h2>
			<table>
			<tr>
				<td class="pw_i">비밀번호</td>
				<td> : <input type="text" id="userPW" name="userPW" placeholder="비밀번호를 입력하세요."></td>
			</tr>
			<tr>
				<td class="pw_i">비밀번호 확인</td>
				<td> : <input type="text" id="userRPW" name="userRPW" placeholder="비밀번호를 다시 입력하세요."></td>
			</tr>
			</table>
			<p style="padding:2px;"></p>
			<input class="button_css" type="submit" value="비밀번호  변경">
		</div>

	</form>

</body>
</html>