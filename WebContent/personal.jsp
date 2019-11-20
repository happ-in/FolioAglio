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
   .fil0 {
       fill: black;
       fill-rule: nonzero;
   }
   .box {
      display : block;
      border : 0.5px solid;
      width : 150px;
   }
   
   </style>
<meta charset="EUC-KR">
<title>인적정보</title>
</head>
<body>
<header>
<div class="navbar container">
   <a class="header_name" role="button" href="#">Folio Aglio</a>
   <div class="navbar_item">
		<ul>
		<li><a class="menuLink" href="#">인적</a></li>
      	<li><a class="menuLink" href="#">학력</a></li>
      	<li><a class="menuLink" href="#">경력</a></li>
      	<li><a class="menuLink" href="#">대외활동</a></li>
      	<li><a class="menuLink" href="#">수상경력</a></li>
      	<li><a class="menuLink" href="#">자격증</a></li>
   		</ul>
   </div>
   <button class="logout">로그아웃</button>
   </div>
</div>

</header>
</body>
</html>