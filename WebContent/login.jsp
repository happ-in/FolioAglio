<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<style>
	.container{
		width : 270px;
		margin : 0 auto;
		text-align : center;
	}
	.loginform {
		position : relative;
	}
	form {
		margin-bottom : 8px;
	}
	div {
		display : block;
	}
	.form-control{
		display : inline-block;
		vertical-align : middle;
		margin-bottom : 5px;
		border : 0.5px solid;
		border-radius : 3px;
		font-size : 16px;
		color : #636363;
		width : 99%;
		heigh : 55px;
	}
	.signin{
		text-algin : center;
		width : 100%;
		display : block;
		margin-bottom : 5px;
	}
	</style>
<meta charset="utf-8">
<title>로그인</title>
</head>
<body>
<div class="container">
	<h1>Folio Aglio</h1>
	<div class="loginform">
		<form action="/FolioAglio/personal.jsp" accept-charset="utf-8">
			<input class="form-control" name="userID" type="text" placeholder="ID">
			<input class="form-control" name="userPW" type="text" placeholder="PassWord">
			<input type="submit" value="Sign in" class="signin">
			<Button type="Button" onclick="location.href='signup.jsp'" class="signin">Sign up</Button> 
		</form>
		
	</div>
</div>

</body>
</html>