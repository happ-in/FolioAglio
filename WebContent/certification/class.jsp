<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script>
	window.addEventListener('load', function() {
		var confirm1 = document.querySelector('#confirm1');
		
		confirm1.addEventListener('click', function() {
			var classfication_name = document.querySelector('#classfication_name');
			var issue_org = document.querySelector('#issue_org');
			var issue_date = document.querySelector('#issue_date');
			
			if (classfication_name.value == '') {
				alert('�ڰ������� �Է��ϼ���.');
				classfication_name.focus();
			} else if (issue_org.value == '') {
				alert('�߱� ����� �Է��ϼ��� ')
				issue_org.focus();
			} else if (issue_date.value == '') {
				alert('������ڸ� �Է��ϼ��� ')
				issue_date.focus();
			} else{
				document.getElementById('form1').submit();
				self.close();
			}
		
		});
	});
</script>
</head>
<body>
certification
</body>
</html>