<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
   .add_folio{
    width : 100px;
    height : 150px;
    border : 0.5px dashed;
    background : none;
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
      <li><a class="menuLink" href="personal.jsp">����</a></li>
         <li><a class="menuLink" href="education.jsp">�з�</a></li>
         <li><a class="menuLink" href="#">���</a></li>
         <li><a class="menuLink" href="#">���Ȱ��</a></li>
         <li><a class="menuLink" href="#">������</a></li>
         <li><a class="menuLink" href="#">�ڰ���</a></li>
         </ul>
   </div>
 
   <div class="navbar_item">
   <button class="logout">�α׾ƿ�</button>
   </div>
</div>
</header>

<div class="bodystyle">
	<button class="add_folio">��</button>
</div>

<div>
	<form action="uploadIMG">
		<input type="file" value="����ã��" name="upload"/>
		<input type="submit" value="����"/>
	</form>
</div>

<div>
   <a class="aa" aria-expanded="true" role="button" href="#" tabindex="0">
         <svg height="32px" style="enable-background:new 0 0 32 32;" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
         <path d="M16,0C7.164,0,0,7.164,0,16s7.164,16,16,16s16-7.164,16-16S24.836,0,16,0z M24,18h-6v6h-4v-6H8v-4h6   V8h4v6h6V18z" style="fill:#636363;"/></svg>
      </a>
</div>

</body>
</html>