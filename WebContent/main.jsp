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
   div{ display : block; }
   
   </style>
<meta charset="utf-8">
<title>Folio Aglio</title>
<script>
	function popup_scheduler(){
		var url = "scheduler.jsp";
		var name = "Scheduler";
		var option = "width = 500, height = 400, top = 100, left = 200, location = no";
		window.open(url, name, option);
	}
</script>
</head>
<body>

	<header>
		<div class="navbar container">
   			<a class="header_name" role="button" href="main.jsp" style="text-decoration:none;">Folio Aglio</a>
   			<div class="navbar_item">
      		<ul>
	      		<li><a class="menuLink" href="personal/personal.jsp">인적</a></li>
         		<li><a class="menuLink" href="education/education.jsp">학력</a></li>
         		<li><a class="menuLink" href="career/career.jsp">경력</a></li>
         		<li><a class="menuLink" href="abroad/abroad.jsp">해외경험</a></li>
         		<li><a class="menuLink" href="external_activity/external_activity.jsp">대외활동</a></li>
         		<li><a class="menuLink" href="awards.jsp">수상경력</a></li>
         		<li><a class="menuLink" href="certification/certification.jsp">자격증</a></li>
         		</ul>
   			</div>
 
   			<div class="navbar_item">
	   			<button class="logout">로그아웃</button>
	   		</div>
		</div>
	</header>
	

	<div class="bodystyle">
		<button class="add_folio">┼</button>
	</div>
	
	
	<div style="border: 0.35px solid #636363; border-radius: 20px 20px 20px 20px; text-align:center;">
		<div>
			<h3 style="display: inline-block; padding: 0 0.5rem; border-bottom: 0.0625rem solid #E9ECF3;">주요사항</h3>
		</div>
	
	<%
	Connection conn = DBUtil.getConn();
	
	String sql = "select * from scheduler;";
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	
	while(rs.next()){
	
	%>
		<div><a style="display: inline-block; margin-bottom : 10px;"><%=rs.getString("sch_memo") %></a></div>
		
	<%
	}
	rs.close();
	conn.close();
	stmt.close();
	%>
	<div>
		<h5 style="cursor: pointer;" role="button" onClick="popup_scheduler()">일정 등록하기</h5>
	</div>
	</div>
</body>
</html>