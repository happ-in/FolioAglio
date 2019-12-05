<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="../maincss.css">
 <style>
   @import url(http://fonts.googleapis.com/earlyaccess/hanna.css);
   @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
  
   div{ display : block; }
      .add_folio{
	    width : 150px;
	    height : 250px;
	    border : 0.5px dashed;
	    background : none;
   }
   .card {
   width: 150px;
   height:250px;
   display: inline-block;
   margin: 0rem 0.4rem 1.5rem;
   border-radius: 4px;
   box-shadow: 0 -1px 1px 0 rgba(0, 0, 0, 0.05), 0 1px 2px 0
      rgba(0, 0, 0, 0.2);
   transition: all .2s ease;
   background: #fff;
   position: relative;
   overflow: hidden;
}
.card:hover, .card.hover {
   -webkit-transform: translateY(-4px);
   transform: translateY(-4px);
   box-shadow: 0 4px 25px 0 rgba(0, 0, 0, 0.3), 0 0 1px 0
      rgba(0, 0, 0, 0.25);
}
.card:hover .card-content, .card.hover .card-content {
   box-shadow: inset 0 3px 0 0 #ccb65e;
   border-color: #ccb65e;
}
.card:hover .card-img .overlay, .card.hover .card-img .overlay {
   background-color: rgba(25, 29, 38, 0.85);
   transition: opacity .2s ease;
   opacity: 1;
}
.card-img {
   position: relative;
   height: 150px;
   width: 100%;
   background-color: #fff;
   transition: opacity .2s ease;
   background-position: center center;
   background-repeat: no-repeat;
   background-size: cover;
}
.card-img .overlay {
   position: absolute;
   left: 0;
   top: 0;
   width: 100%;
   height: 100%;
   background-color: #fff;
   opacity: 0;
}
.card-img .overlay .overlay-content {
   line-height: 154px;
   width: 100%;
   text-align: center;
   color: #fff;
}
.card-img .overlay .overlay-content a {
   color: #fff;
   padding: 0 2rem;
   display: inline-block;
   border: 1px solid rgba(255, 255, 255, 0.4);
   height: 40px;
   line-height: 40px;
   border-radius: 20px;
   cursor: pointer;
   text-decoration: none;
}
.card-img .overlay .overlay-content a:hover, .card-img .overlay .overlay-content a.hover
   {
   background: #ccb65e;
   border-color: #ccb65e;
}
.card-content {
   width: 100%;
   min-height: 104px;
   background-color: #fff;
   border-top: 1px solid #E9E9EB;
   border-bottom-right-radius: 4px;
   border-bottom-left-radius: 4px;
   padding: 1rem 2rem;
   transition: all .2s ease;
}
.card-content a {
   text-decoration: none;
   color: #202927;
}
.card-content h2, .card-content a h2 {
   font-size: 1rem;
   font-weight: 500;
}
.card-content p, .card-content a p {
   font-size: .8rem;
   font-weight: 400;
   white-space: nowrap;
   overflow: hidden;
   text-overflow: ellipsis;
   color: rgba(32, 41, 28, 0.8);
}
   
   </style>
<meta charset="utf-8">
<title>Folio Aglio</title>
<script type="text/javascript">
	var option = "width = 500, height = 400, top = 100, left = 200, location = no";
	
	function popup_sch(){
		var obj=window.open("scheduler.jsp", '', option);
	}
	
	function get_sch(sch_num){
		window.open("schedulerForm.jsp?sch_num="+sch_num, '', option);
	}
	
</script>
<%  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
    if (session.getAttribute("signedUser") == null) {
        response.sendRedirect("../logout.jsp");
    }
%>
</head>
<body>
	<div align = center>
	    <a href="../logout.jsp"><button class = "logout" style="float: right;">로그아웃</button></a>
		<a role="button" href="../main/main.jsp"><img src="../image/name.png" style="width:340px; height:100px;" ></a>
		
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
	

	<div class="container" style="margin-top: 25px; margin-left: 15px">
		<h3>
			Portfolio_List <small style="">Download</small>
		</h3>
	</div>
	<div class="container" style="margin-left: 15px">
		<div class="card">
			<div class="card-img"
				style="background-image: url(https://images.unsplash.com/photo-1493847242172-d46053a1f671?ixlib=rb-0.3.5&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;s=9f91dd5d50f16ba80af53a62d4caf2ce&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60);">
				<div class="overlay">
					<div class="overlay-content">
						<a href="#!">Download</a>
					</div>
				</div>
			</div>
			<div class="card-content">
				<a href="#!">
					<h2>SK지원용</h2>
					<p>Portfolio_List test</p>
				</a>
			</div>
		</div>
		<div class="card">
			<div class="card-img"
				style="background-image: url(https://images.unsplash.com/photo-1491374812364-00028bbe7d2f?ixlib=rb-0.3.5&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;s=a22e4862c36c552e726815949fbcb41a&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60);">
				<div class="overlay">
					<div class="overlay-content">
						<a href="#!">Download</a>
					</div>
				</div>
			</div>
			<div class="card-content">
				<a href="#!">
					<h2>KT지원용</h2>
					<p>Portfolio_List test</p>
				</a>
			</div>
		</div>
		<div class="card">
			<div class="card-img"
				style="background-image: url(https://images.unsplash.com/photo-1519176336903-04be58a477d2?ixlib=rb-0.3.5&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;s=eda05ddcb3154f39fd8ce88fdd44f531&amp;auto=format&amp;fit=crop&amp;w=500&amp;q=60);">
				<div class="overlay">
					<div class="overlay-content">
						<a href="#!">Download</a>
					</div>
				</div>
			</div>
			<div class="card-content">
				<a href="#!">
					<h2>삼성지원용</h2>
					<p>Portfolio_List test</p>
				</a>
			</div>
		</div>
		<div class="card">
			<button onclick = "location.href='../make_folio/make_portfolio.jsp'" class="add_folio">┼</button>
		</div>
	</div>
	<hr class="container" />
	
	
	<div style="border: 0.35px solid #636363; border-radius: 20px 20px 20px 20px; text-align:center;">
		<div>
			<h3 style="display: inline-block; padding: 0 0.5rem; border-bottom: 0.0625rem solid #E9ECF3;">주요사항</h3>
		</div>
	
	<%
	Connection conn = DBUtil.getConn();
	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
	
	String sql = "select sch_num, sch_name from scheduler where id = ?;";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, session_name);
	ResultSet rs = pstmt.executeQuery();
	
	while(rs.next()){
	
	%>
	
		<div style="margin-bottom: 10px;">
			<a style="cursor: pointer;" onclick="get_sch(<%=rs.getInt("sch_num") %>)"><%=rs.getString("sch_name") %></a>
		</div>
		
	<%
	}
	rs.close();
	conn.close();
	pstmt.close();
	%>

		<div>
			<h5 style="cursor: pointer;" onclick="popup_sch()">일정 등록하기</h5>
		</div>
	</div>
</body>
</html>