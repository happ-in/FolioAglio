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
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
<%
	Object session_object=session.getAttribute("signedUser");
	//String session_name=(String)session_object;
	String session_name="wook0805";
	Connection conn = DBUtil.getConn();
%>
<script>
	var option = 'width=500, height=500';
	function PI_Btn() {
		window.open('','folio', option);
		document.getElementById('PIForm').submit();
	}
	function eduBtn() {
		window.open('','folio', option);
		document.getElementById('eduForm').submit();
	}
	function carrBtn() {
		window.open('','folio', option);
		document.getElementById('carrForm').submit();
	}
	function abrdBtn() {
		window.open('','folio', option);
		document.getElementById('abrdForm').submit();
	}
	function EA_Btn() {
		window.open('','folio', option);
		document.getElementById('EAForm').submit();
	}
    function awdBtn() {
    	window.open('','folio', option);
		document.getElementById('awdForm').submit();
	}
    function skBtn() {
    	window.open('','folio', option);
		document.getElementById('skForm').submit();
	}
    function result() {
    	var w = window.open("about:blank","_blank","width=600, height=700, top=0,left=0,scrollbars=no");
		var formData = $("#PIForm,#eduForm,#carrForm,#abrdForm,#EAForm,#awdForm,#skForm").serialize();
		$.ajax({
			url : "FolioAction.jsp", // 요기에
			type : 'POST',
			data : formData,
			async: false,
			success : function(data) {
				w.document.write(data);
			}
		});

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
               <li><a class="menuLink" href="../certification/certification.jsp">어학/자격증</a></li>
               <li><a class="menuLink" href="../calendar/Calendar.jsp">캘린더</a></li>
               </ul>
            </div>
      </div>
   </header>

   <div style="padding: 10px"></div>
   <% 
   String sql = "select * from personal_information where id = ?";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   ResultSet rs = pstmt.executeQuery();%>
   <form method="post" name="PIForm" id="PIForm" action="FolioAction.jsp" target="folio">
	   <div>인적사항</div>
		<%if(rs.next()) {%>
	   		<input type="checkbox" name="PI" value="1">국적
	   		<input type="checkbox" name="PI" value="2">성별
	   		<input type="checkbox" name="PI" value="3">주소
	   		<input type="checkbox" name="PI" value="4">git 주소
	   		<input type="checkbox" name="PI" value="5">사진
	   		<input type="checkbox" name="PI" value="6">메모
		<%}
		rs.close();
		pstmt.close();
		%>
		<input type="button" value="미리보기" onclick="PI_Btn()">
   </form>
   <% 
   sql = "select * from education where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="eduForm" action="FolioAction.jsp" target="folio">
	   <div>학력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" name="edu" value="<%=rs.getString("school_num")%>"><%=rs.getString("school_name")%>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="eduBtn()">
   </form>
   <% 
   sql = "select * from carrier where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="carrForm" action="FolioAction.jsp" target="folio">
	   <div>경력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" name="carr" value="<%=rs.getString("carrier_num")%>"><%=rs.getString("company_name")%>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="carrBtn()">
   </form>
   <% 
   sql = "select * from abroad where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="abrdForm" action="FolioAction.jsp" target="folio">
	   <div>해외경험</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" name="abrd" value="<%=rs.getString("abroad_num")%>"><%=rs.getString("country_name")%>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="abrdBtn()">
   </form>
   <% 
   sql = "select * from external_activities where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="EAForm" action="FolioAction.jsp" target="folio">
	   <div>대외활동</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" name="EA" value="<%=rs.getString("activity_num")%>"><%=rs.getString("group_name")%>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="EA_Btn()">
   </form>
   <% 
   sql = "select * from award where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="awdForm" action="FolioAction.jsp" target="folio">
	   <div>수상경력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" name="award" value="<%=rs.getString("award_num")%>"><%=rs.getString("awd_name")%>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="awdBtn()">
   </form>
   <% 
   sql = "select * from skill where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="skForm" action="FolioAction.jsp" target="folio">
	   <div>어학/자격증</div>
	   <%
	   String div1 = "어학";
	   String div2 = "자격증";
	   while(rs.next()) {		   
	   		if(div1.equals(rs.getString("skill_radio"))){%>
		   		<input type="checkbox" name="skill" value="<%=rs.getString("issue_num")%>"><%=rs.getString("kind")%>
		   	<%} else if(div2.equals(rs.getString("skill_radio"))){%>
		   		<input type="checkbox" name="skill" value="<%=rs.getString("issue_num")%>"><%=rs.getString("classfication_name")%>
	   		<%}
	   }
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" value="미리보기" onclick="skBtn()">
   </form>
   <button type="submit" onclick="result()">포트폴리오 생성</button>
   <%conn.close();%>
</body>
</html>