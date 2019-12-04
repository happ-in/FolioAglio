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
<title>경력</title>
<script>
   var option = "width = 600, height = 500, top = 100, left = 200, location = no";
   function popup_career(){
      var url = "career_information.jsp";
      var name = "Carrier";   
      window.open(url, name, option);
   }
   function get_carr(num){
      window.open("careerForm.jsp?carr_num="+num, '', option);
   }
   function checkAward(){
	   
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

   Object session_object=session.getAttribute("signedUser");
   String session_name=(String)session_object;
   Connection conn = DBUtil.getConn();
   String s_type = "";
   
   String sql = "select * from award where id = ?";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   ResultSet rs = pstmt.executeQuery();
   int i=0, j=0;
   String[][] context = new String[5][4];
   
   while(rs.next()) { %>
   
	   <input type="checkbox" id="award" value="<%=++j%>"><%=rs.getString("awd_name")%>
	   
	
	   <% int awd_chk = Integer.parseInt(request.getParameter("award"));
	   if (awd_chk > 0){   
		   context[i][0] = rs.getString("awd_org");
		   context[i][1] = rs.getString("awd_result");
		   context[i][2] = rs.getString("awd_attachment");
		   context[i][3] = rs.getString("awd_memo");
	   } else {
		   context[i] = new String[4];
	   } i++;
	   %>
	   
	   <div><%=context[i][0]%></div>
	   <div><%=context[i][1]%></div>
	   <div><%=context[i][2]%></div>
	   <div><%=context[i][3]%></div>
   <%}
   
   rs.close();
   conn.close();
   pstmt.close();
   %>   
   
   
</body>
</html>