<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	padding : 10px;
   }
   .idpic{
   	width :105px; 
   	height : 135px; 
   	border : 1px solid;
   	margin-right : 10px; 
   }
   .field{
   	border : 1px solid;
   	margin-top : 10px;
   }
   .field legend{
   	font-family : Hanna;
   	font-size : 26px;
   }
   </style>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<header>
		<div class="navbar container">
   			<a class="header_name" role="button" href="main.jsp" style="text-decoration:none;">Folio Aglio</a>
   			<div class="navbar_item">
      		<ul>
	      		<li><a class="menuLink" href="personal.jsp">인적</a></li>
         		<li><a class="menuLink" href="education.jsp">학력</a></li>
         		<li><a class="menuLink" href="career.jsp">경력</a></li>
         		<li><a class="menuLink" href="external_activity.jsp">대외활동</a></li>
         		<li><a class="menuLink" href="awards.jsp">수상경력</a></li>
         		<li><a class="menuLink" href="certification.jsp">자격증</a></li>
         		</ul>
   			</div>
 
   			<div class="navbar_item">
	   			<button class="logout">로그아웃</button>
	   		</div>
		</div>
	</header>
	
	<%
	String id_pic="";
	try {
		String url = "jdbc:mysql://localhost:3306/FILE?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		String id = "root";
		String pw = "";
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection(url, id, pw);
		
		String sql = "select fileRealName from file where id='kkk';";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			id_pic = rs.getString(1);
		}
	
	%>
	<fieldset class="field">
		<legend>인적사항</legend>
		<table class="bodystyle">
	<%
		if("".equals(id_pic)){
	%>
			<tr>
				<td rowspan="5" colspan="2" align="center">
				<button class="idpic" style="background: none;";>No Image</button></td>
			</tr>
	<%
		} else {
	%>
			<tr>
				<td rowspan="5" colspan="2" align="center"><img class="idpic" src="upload/<%=id_pic %>"></td>
			</tr>
	<%
		} 
	rs.close();
	conn.close();
	stmt.close();
	}catch(SQLException e) {
		// e.printStackTrace();
		out.println(e.toString());
	}
	%>
			<tr>
				<td>이름</td>
				<td> : </td>
				<td>심슨</td>
				<td><button>수정</button></td>
			</tr>
			<tr>
				<td>생년월일 </td>
				<td> : </td>
				<td>2002년 2월 2일</td>
			</tr>
			<tr>
				<td>전화번호 </td>
				<td> : </td>
				<td>010-0000-0000</td>
			</tr>
			<tr>
				<td>이메일 </td>
				<td> : </td>
				<td>simpson@simpson.com</td>
			</tr>
		</table>
	</fieldset>

<div>
   <a class="aa" aria-expanded="true" role="button" href="#" tabindex="0">
         <svg height="32px" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
         <path d="M16,0C7.164,0,0,7.164,0,16s7.164,16,16,16s16-7.164,16-16S24.836,0,16,0z M24,18h-6v6h-4v-6H8v-4h6   V8h4v6h6V18z" style="fill:#636363;"/></svg>
      </a>
</div>

</body>
</html>