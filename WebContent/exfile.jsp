<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Example file</title>
</head>
<body>
	<form action="uploadAction.jsp" method="post" enctype="multipart/form-data">
		파일 <input type="file" name="file"><br>
		<input type="submit" value="전송">
	</form>
	<a href="fileDownload.jsp">파일 다운로드 페이지</a>
</body>
</html>