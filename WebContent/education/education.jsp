<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
   <style>
   @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
   @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
   
   body {
      font-family: Nanum Gothic;
   }
   .navbar {
      background-color : #B2CCFF;
      padding : 0.375rem 1rem;
      position : relative;
      align-items : center;
      font-family : Hanna;
   }
   .navbar ul li {
      float : left;
      margin-left : 15px;
      list-style : none ;
   }
   .navbar_item{
      align-items : center;
      margin-right : 16px;
      padding : 15px;
      display : flex!important;
   }
   .logout{
   	  display: block;
   	  margin: 20px auto;
   	  padding : 10px 10px;
   	  background : none;
   	  border : 0px;
   	  border-radius : 5px;
   	  font-family : Hanna;
   	  font-size : 15px;
   	  color : white;
   }
   .logout:hover{
   	  background : #636363;
   	  border : 0px;
   }
   .menuLink{
      text-decoration : none;
      display : block;
      color : white;
   }
   .menu {
      text-decoration : none;
      display : block;
      color : black;
   }
   .menu:hover {
      color : #636363;
      font-wieght : bold;
   }
   .menuLink:hover {
      color : #636363;
      font-wieght : bold;
   }
   .container {
      display : flex;
   }
   .header_name {
      font-family : Malgun Gothic;
      font-size : 20px;
      font-weight : bold;
      color : white;
   }
   .fil0 {
       fill: black;
       fill-rule: nonzero;
   }
   .box {
      display : block;
      border : 0.5px solid;
      width : 150px;
   }
   .aa{
   	  position : fixed;
   	  right : 20px;
   	  bottom : 20px;
   }
   .item{
   	  display : inline-block;
   	  vertical-align : top;
   	  padding : 10px;
   	  margin-bottom : 2rem;
   	  width : 95%;
   }
   .dashboard{
   	  border-radius : 0.75rem;
   	  border : 0.06rem solid #636363;
   	  margin : 10px;
   }
   .info ul li{
	  font-size : 15px;
	  margin-bottom : 5px;
	  list-style : none;
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
<meta charset="EUC-KR">
<title>학적</title>
<script>
	function popup_education(){
		var url = "education_information.jsp";
		var name = "Education";
		var option = "width = 600, height = 500, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
	function popup_highschool(){
		var url = "highschool.jsp";
		var name = "h_fom";
		var option = "width = 600, height = 500, top = 100, left = 200, location = no";
		window.open("", name, option);
		
		var h_data = document.h_fom;
		h_data.target = name;
		h_data.action = url;
		h_data.method = "post";
		h_data.submit();
	}
	
</script>
</head>
<body>
	<header>
		<div class="navbar container">
   			<a class="header_name" role="button" href="../main.jsp" style="text-decoration:none;">Folio Aglio</a>
   			<div class="navbar_item">
      		<ul>
	      		<li><a class="menuLink" href="../personal/personal.jsp">인적</a></li>
         		<li><a class="menuLink" href="../education/education.jsp">학력</a></li>
         		<li><a class="menuLink" href="../career/career.jsp">경력</a></li>
         		<li><a class="menuLink" href="../external_activity/external_activity.jsp">대외활동</a></li>
         		<li><a class="menuLink" href="../award/awards.jsp">수상경력</a></li>
         		<li><a class="menuLink" href="../certification/certification.jsp">자격증</a></li>
         		</ul>
         	</div>
 
   			<div class="navbar_item">
	   			<button class="logout">로그아웃</button>
	   		</div>
		</div>
	</header>

	<div style="padding: 10px"></div>
	
	<%
	Connection conn = DBUtil.getConn();
	String s_type = "";
	
	String sql = "select * from education order by school_radio";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()) {
		s_type = rs.getString("school_radio");
		
		if (s_type.equals("1")){
	%>
	
	<div class="field">
		<form onClick="popup_highschool()" id="h_fom" name="h_fom">
			<input type="button" id="highschool" name="highschool" value="<%=rs.getString("school_name") %>">
		</form>
	</div>
	
	<%		
		}
		else if (s_type.equals("2")){
	%>
	
	<div class="field"><form><input type="submit" value="<%=rs.getString("school_name") %>"></form></div>
	
	<%
		}
		else if (s_type.equals("3")){
	%>
	
	<div class="field"><form><input type="button" value="<%=rs.getString("school_name") %>"></form></div>
	
	<%
		}
		
	}
	
	rs.close();
	conn.close();
	stmt.close();
	%>

	<div>
		<a class="aa" aria-expanded="true" role="button" onClick="popup_education()" tabindex="0">
	   		<svg height="32px" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
	   		<path d="M16,0C7.164,0,0,7.164,0,16s7.164,16,16,16s16-7.164,16-16S24.836,0,16,0z M24,18h-6v6h-4v-6H8v-4h6   V8h4v6h6V18z" style="fill:#636363;"/></svg>
	   	</a>
	</div>
</body>
</html>