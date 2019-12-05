
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../maincss.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
  <style>
   @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
   @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
    
   div{ display : block; }
   
   </style>
<meta charset="utf-8">
<title>해외경험</title>
<script>
	var option = "width = 600, height = 500, top = 100, left = 200, location = no";
	function popup_abroad(){
		var url = "abroad_information.jsp";
		var name = "Abroad";
		window.open(url, name, option);
	}
	function abroad(num){
		window.open('abroadForm.jsp?ab_num='+num, '', option);
	}
</script>
</head>
<body>

		<div align = center>
	    <a href="../logout.jsp"><button class = "logout" style="float: right;">로그아웃</button></a>
		<a role="button" href="../main/main.jsp"><img src="../image/name.png"  width = "340" height="100" ></a>
		
	</div>
	<header>
		<div class="navbar container">
   			<div class="navbar_item">
      		<ul>
	      		<li><a class="menuLink" href="../personal/personal.jsp">인적</a></li>
         		<li><a class="menuLink" href="../education/education.jsp">학력</a></li>
         		<li><a class="menuLink" href="../career/career.jsp">경력</a></li>
         		<li><a class="menuLink" href="../abroad/abroad.jsp" style="color : #636363;" >해외경험</a></li>
         		<li><a class="menuLink" href="../external_activity/external_activity.jsp">대외활동</a></li>
         		<li><a class="menuLink" href="../award/awards.jsp">수상경력</a></li>
         		<li><a class="menuLink" href="../certification/certification.jsp">자격증</a></li>
         		<li><a class="menuLink" href="../calendar/Calendar.jsp">캘린더</a></li>
         		</ul>
   			</div>
		</div>
	</header>
<<<<<<< HEAD

=======
	
	
>>>>>>> bin_park
	
	<%
	Connection conn = DBUtil.getConn();
	String session_name = (String)session.getAttribute("signedUser");
	
	try{
		String sql = "select * from abroad where id=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, session_name);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
		
	%>
	
	<div class="field">
		<input type="button" value="<%=rs.getString("country_name") %>" class="field_button" onclick="abroad(<%=rs.getString("abroad_num") %>)">
	</div>
	
	<%
		
		}
		
		rs.close();
		conn.close();
		pstmt.close();
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	%>
	
	<div>
		<a class="aa" aria-expanded="true" role="button" onClick="popup_abroad()" tabindex="0">
   			<svg height="32px" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
   			<path d="M16,0C7.164,0,0,7.164,0,16s7.164,16,16,16s16-7.164,16-16S24.836,0,16,0z M24,18h-6v6h-4v-6H8v-4h6   V8h4v6h6V18z" style="fill:#636363;"/></svg>
   		</a>
	</div>
	
	
</body>
</html>