<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<style>
   @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
   @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
   
   body {
      font-family: Nanum Gothic;
   }
   a { text-decoration:none}
   .navbar {
      background-color : #B2CCFF;
      padding : 0.00075rem 1rem;
      position : relative;
      align-items : center;
      font-family : Hanna;
   }
   .navbar ul {
      height:10px; 
      width:90%; 
      display: table;
      table-layout: fixed; 
   }
   .navbar ul li {
      display: table-cell;
   	  width: 10%;
   	  text-align: center;
   }
   .navbar_item{
      align-items : center;
      margin-right : 14px;
      padding : 10px;
      
   }
   .logout{
        display: block;
        background : none;
        border : 0px;
        border-radius : 5px;
        font-family : Hanna;
        font-size : 100%;
        color : #636363;
   }
   .logout:hover{
        background : #EAEAEA;
        border : 0px;
   }
   .menuLink{
      text-decoration : none;
      font-size : 120%;
      color : white;
   }
   .menuLink:hover {
      color : #636363;
      font-wieght : bold;
   }
   .container {
      display : flex;
   }
   .header_name {
      margin-right : 130px;
   	  position : relative;
   	  bottom: 40px;
      font-family : Malgun Gothic;
      font-size : 100%;
      font-weight : bold;
      color : white;
   }
   .aa{
   	  position : fixed;
   	  right : 20px;
   	  bottom : 20px;
   }
   .bodystyle{
   	padding : 10px
   }
   .add_folio{
    width : 100px;
    height : 150px;
    border : 0.5px dashed;
    background : none;
   }
   .field{
   	padding : 10px;
   }
   .field input{
   	display : inline-block;
   	font-family : Hanna;
   	padding : 10px;
   	text-align : center;
   	background : none;
   	border : 1px solid;
   	width : 30%;
   }
   
   </style>
<meta charset="utf-8">
<title>대외활동</title>
<script>
	var option = "width = 600, height = 500, top = 100, left = 200, location = no";
	function popup_external_activities(){
		var url = "activity_information.jsp";
		var name = "External_Activities";
		window.open(url, name, option);
	}
	function get_activity(num){
		window.open("externalForm.jsp?activity_num="+num, '', option);
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
         		<li><a class="menuLink" href="../abroad/abroad.jsp">해외경험</a></li>
         		<li><a class="menuLink" href="../external_activity/external_activity.jsp">대외활동</a></li>
         		<li><a class="menuLink" href="../award/awards.jsp">수상경력</a></li>
         		<li><a class="menuLink" href="../certification/certification.jsp">자격증</a></li>
         		<li><a class="menuLink" href="../calendar/Calendar.jsp">캘린더</a></li>
         		</ul>
   			</div>
		</div>
	</header>


	<div style="padding: 10px"></div>
	
		
	<%
	Connection conn = DBUtil.getConn();
	String s_type = "";
	
	String sql = "select group_name, activity_num from external_activities";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()) {
	
	%>
	
	<div class="field"><form><input type="button" value="<%=rs.getString(1) %>" onclick="get_activity(<%=rs.getInt(2) %>)"></form></div>
	
	<%
		
	}
	
	rs.close();
	conn.close();
	stmt.close();
	%>
	
	
	<div>
		<a class="aa" aria-expanded="true" role="button" onClick="popup_external_activities()" tabindex="0">
   			<svg height="32px" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
   			<path d="M16,0C7.164,0,0,7.164,0,16s7.164,16,16,16s16-7.164,16-16S24.836,0,16,0z M24,18h-6v6h-4v-6H8v-4h6   V8h4v6h6V18z" style="fill:#636363;"/></svg>
   		</a>
	</div>

</body>
</html>