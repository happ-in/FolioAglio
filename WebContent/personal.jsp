<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
   <style>
   @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
   
   .navbar {
      background-color : #B2CCFF;
      padding : 0.375rem 1rem;
      position : relative;
      align-items : center;
   }
   .navbar ul li {
      float : left;
      list-style : none ;
      margin-left : 15px;
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
      font-family :Hanna;
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

   </style>
<meta charset="EUC-KR">
<title>인적정보</title>
</head>
<body>
<div class="navbar container">
   <a class="header_name">Folio Aglio</a>
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
   
   <div class="navbar_item">
   	<svg height="30" width="36" style="shape-rendering:geometricPrecision; text-rendering:geometricPrecision; image-rendering:optimizeQuality; fill-rule:evenodd; clip-rule:evenodd" version="1.1" viewBox="0 0 270.92 270.92" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
   <path fill="white" fill-rule= "nonzero" d="M191.33 45.71l-20.61 0c-1.95,0 -3.52,1.58 -3.52,3.53 0,1.96 1.57,3.53 3.52,3.53l20.61 0c6.14,0 11.14,5.29 11.14,11.81l0 154.29c0,6.53 -5,11.82 -11.14,11.82l-111.73 0c-6.16,0 -11.15,-5.29 -11.15,-11.82l0 -154.29c0,-6.52 4.99,-11.81 11.15,-11.81l20.59 0c1.95,0 3.53,-1.57 3.53,-3.53 0,-1.95 -1.58,-3.53 -3.53,-3.53l-20.59 0c-10.04,0 -18.2,8.47 -18.2,18.87l0 154.29c0,10.41 8.16,18.87 18.2,18.87l111.73 0c10.03,0 18.19,-8.46 18.19,-18.87l0 -154.29c0,-10.4 -8.16,-18.87 -18.19,-18.87zm-11.9 51.35l-86.4 0c-1.95,0 -3.53,1.57 -3.53,3.53 0,1.94 1.58,3.53 3.53,3.53l86.4 0c1.95,0 3.53,-1.59 3.53,-3.53 0,-1.96 -1.58,-3.53 -3.53,-3.53zm-86.4 100.71c-1.95,0 -3.53,1.58 -3.53,3.53 0,1.93 1.58,3.52 3.53,3.52l43.2 0c1.95,0 3.53,-1.59 3.53,-3.52 0,-1.95 -1.58,-3.53 -3.53,-3.53l-43.2 0zm89.93 -21c0,-1.95 -1.58,-3.53 -3.53,-3.53l-86.4 0c-1.95,0 -3.53,1.58 -3.53,3.53 0,1.95 1.58,3.53 3.53,3.53l86.4 0c1.95,0 3.53,-1.58 3.53,-3.53zm-3.53 -29.29l-86.4 0c-1.95,0 -3.53,1.58 -3.53,3.53 0,1.93 1.58,3.52 3.53,3.52l86.4 0c1.95,0 3.53,-1.59 3.53,-3.52 0,-1.95 -1.58,-3.53 -3.53,-3.53zm0 -24.94l-86.4 0c-1.95,0 -3.53,1.56 -3.53,3.51 0,1.95 1.58,3.53 3.53,3.53l86.4 0c1.95,0 3.53,-1.58 3.53,-3.53 0,-1.95 -1.58,-3.51 -3.53,-3.51zm-62.43 -70.21l36.92 0 0 17.02 -36.92 0 0 -17.02zm18.6 -12.09c3.33,0 6.19,2.09 7.31,5.04l-14.61 0c1.11,-2.95 3.97,-5.04 7.3,-5.04zm-22.12 36.16l43.97 0c1.95,0 3.52,-1.58 3.52,-3.53l0 -24.07c0,-1.96 -1.57,-3.52 -3.52,-3.52l-7.27 0c-1.3,-6.88 -7.34,-12.1 -14.58,-12.1 -7.23,0 -13.25,5.19 -14.57,12.1l-7.55 0c-1.95,0 -3.53,1.56 -3.53,3.52l0 24.07c0,1.95 1.58,3.53 3.53,3.53z"/></svg>
   <button class="logout">로그아웃</button>
   </div>
</div>
</body>
</html>