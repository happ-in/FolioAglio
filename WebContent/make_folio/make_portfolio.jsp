<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="../maincss.css">
<link rel="stylesheet" href="makePF.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="utf-8">
<title>경력</title>
<%
	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
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
<p align="right">
<input type="checkbox" value="전체선택" class="check-all"><label class="letter">전체선택</label>
<button  type="submit" onclick="result()" class="button_css">포트폴리오 생성</button></p>
  
   <% 
   String sql = "select * from personal_information where id = ?";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   ResultSet rs = pstmt.executeQuery();%>
   <form method="post" name="PIForm" id="PIForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">인적사항</div>
		<%if(rs.next()) {%>
	   		<input type="checkbox" class="chk" name="PI" value="1"><label class="letter">국적</label>
	   		<input type="checkbox" class="chk" name="PI" value="2"><label class="letter">성별</label>
	   		<input type="checkbox" class="chk" name="PI" value="3"><label class="letter">주소</label>
	   		<input type="checkbox" class="chk" name="PI" value="4"><label class="letter">git 주소</label>
	   		<input type="checkbox" class="chk" name="PI" value="5"><label class="letter">사진</label>
	   		<input type="checkbox" class="chk" name="PI" value="6"><label class="letter">메모</label>
		<%}
		rs.close();
		pstmt.close();
		%>
		<input type="button" class="btn" value="미리보기" onclick="PI_Btn()">
   </form>
   <% 
   sql = "select * from education where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="eduForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">학력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" class="chk" name="edu" value="<%=rs.getString("school_num")%>"><label class="letter"><%=rs.getString("school_name")%></label>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="eduBtn()">
   </form>
   <% 
   sql = "select * from carrier where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="carrForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">경력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" class="chk" name="carr" value="<%=rs.getString("carrier_num")%>"><label class="letter"><%=rs.getString("company_name")%></label>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="carrBtn()">
   </form>
   <% 
   sql = "select * from abroad where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="abrdForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">해외경험</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" class="chk" name="abrd" value="<%=rs.getString("abroad_num")%>"><label class="letter"><%=rs.getString("country_name")%></label>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="abrdBtn()">
   </form>
   <% 
   sql = "select * from external_activities where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="EAForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">대외활동</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" class="chk" name="EA" value="<%=rs.getString("activity_num")%>"><label class="letter"><%=rs.getString("group_name")%></label>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="EA_Btn()">
   </form>
   <% 
   sql = "select * from award where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="awdForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">수상경력</div>
	   <%while(rs.next()) {%>
		   <input type="checkbox" class="chk" name="award" value="<%=rs.getString("award_num")%>"><label class="letter"><%=rs.getString("awd_name")%></label>
	   <%}
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="awdBtn()">
   </form>
   <% 
   sql = "select * from skill where id = ?";
   pstmt = conn.prepareStatement(sql);
   pstmt.setString(1,session_name);
   rs = pstmt.executeQuery();%>
   <form method="post" id="skForm" action="FolioAction.jsp" target="folio">
	   <div class="menu">어학/자격증</div>
	   <%
	   String div1 = "어학";
	   String div2 = "자격증";
	   while(rs.next()) {		   
	   		if(div1.equals(rs.getString("skill_radio"))){%>
		   		<input type="checkbox" class="chk" name="skill" value="<%=rs.getString("issue_num")%>"><label class="letter"><%=rs.getString("kind")%></label>
		   	<%} else if(div2.equals(rs.getString("skill_radio"))){%>
		   		<input type="checkbox" class="chk" name="skill" value="<%=rs.getString("issue_num")%>"><label class="letter"><%=rs.getString("classfication_name")%></label>
	   		<%}
	   }
	   rs.close();
	   pstmt.close();
	   %>
	   <input type="button" class="btn" value="미리보기" onclick="skBtn()">
   </form>
   <p style="padding:20px;"></p>

   
    <%conn.close();%>
    <script>
      $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.chk' ).prop( 'checked', this.checked );
        } );
      } );
    </script>
</body>
</html>