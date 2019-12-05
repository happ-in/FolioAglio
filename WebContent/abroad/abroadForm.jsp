<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
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
				document.getElementById('form1').submit();
				self.close();
			}

		});
	});
</script>
<style>

	fieldset{
		background-color: white;
		
	}
	legend{
		background-color: white;
		font-wieght : bold;
		font-size: x-large;
	}
	.button_css{
		border: 1px solid ;
		background-color: white;
		color: black;
		font-wieght : bold;
		padding: 6px;
		border-top-left-radius : 5px;
		border-bottom-left-radius : 5px;
		border-top-right-radius : 5px;
		border-bottom-right-radius: 5px;
	}
	.button_css:hover{
		color: white;
		background-color: #B2CCFF;
	}
</style>
</head>
<body>
	<%
	String session_name = (String)session.getAttribute("signedUser");
	int num = Integer.parseInt(request.getParameter("ab_num"));
	
	try{
		Connection conn = DBUtil.getConn();
		
		String sql = "select * from abroad where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session_name);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()){
	%>
	<form action="abroadUpdate.jsp" method="post" id = "form1">
		<fieldset>
			<legend>해외경험</legend>
			<table>
				<tr>
					<td>체류국가</td>
					<td><input type="text" id="country" name="country" value="<%=rs.getString("country_name") %>"></td>
				</tr>
				<tr>
					<td>체류형태</td>
					<td><input type="text" id="reason" name="reason" value="<%=rs.getString("reason") %>"></td>
				</tr>
				<tr>
					<td>구사언어</td>
					<td><input type="text" id="language" name="language" value="<%=rs.getString("abroad_language") %>"></td>
				</tr>
				<tr>
					<td>체류기간</td>
					<td><input type="text" id="s_period" name="s_period" placeholder="날짜넣기" value="<%=rs.getString("abroad_s_date") %>">
					<script>
						$(function(){
							$("#s_period").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script> ~ 
					<input type="text" id="e_period" name="e_period" placeholder="날짜넣기"  value="<%=rs.getString("abroad_g_date") %>">
					<script>
						$(function(){
							$("#e_period").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>상세설명</td>
					<td><textarea id="detail" name="detail" rows="10" cols="50"><%=rs.getString("abroad_detail") %></textarea></td>
				</tr>
				<tr>
					<td>사진</td>
					<td><input type="file" value="파일 선택" id="picture" name="picture"/><%=rs.getString("abroad_image") %></td>
				</tr>
				<tr>
					<td>메모</td>
					<td><textarea id="memo" name="memo" rows="3" cols="50"><%=rs.getString("abroad_memo") %></textarea></td>
				</tr>
				<tr align="right">
					<td colspan="2"><input type="button" id="confirm" class="button_css"
						value="수정">
					</td>
					<td><input type="hidden" name="num" value="<%=rs.getInt("abroad_num") %>"></td>
				</tr>
			</table>
		</fieldset>
	</form>
	<%
		}
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	%>
</body>
</html>