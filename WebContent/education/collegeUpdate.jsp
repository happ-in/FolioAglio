<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String session_name = (String)session.getAttribute("signedUser");
	
	try{
		Connection conn = DBUtil.getConn();
		
		String school_name = new String(request.getParameter("collage_name").getBytes("ISO-8859-1"), "UTF-8");
		String school_location = new String(request.getParameter("collage_location").getBytes("ISO-8859-1"), "UTF-8");
		String division = new String(request.getParameter("collage_division").getBytes("ISO-8859-1"), "UTF-8");
		String e_state = new String(request.getParameter("collage_e_state").getBytes("ISO-8859-1"), "UTF-8");
		String e_date = new String(request.getParameter("collage_e_date").getBytes("ISO-8859-1"), "UTF-8");
		String g_date = new String(request.getParameter("collage_g_date").getBytes("ISO-8859-1"), "UTF-8");
		String g_state = new String(request.getParameter("collage_g_state").getBytes("ISO-8859-1"), "UTF-8");
		String major = new String(request.getParameter("collage_major").getBytes("ISO-8859-1"), "UTF-8");
		String grade = new String(request.getParameter("collage_grade").getBytes("ISO-8859-1"), "UTF-8");
		String total_grade = new String(request.getParameter("collage_total_grade").getBytes("ISO-8859-1"), "UTF-8");
		String major_grade = new String(request.getParameter("collage_major_grade").getBytes("ISO-8859-1"), "UTF-8");
		String classes = new String(request.getParameter("collage_classes").getBytes("ISO-8859-1"), "UTF-8");
		String submajor = new String(request.getParameter("collage_submajor").getBytes("ISO-8859-1"), "UTF-8");
		String edu_memo = new String(request.getParameter("collage_memo").getBytes("ISO-8859-1"), "UTF-8");
		int school_num = Integer.parseInt(request.getParameter("school_num"));
		
		String sql = "update education set school_name=?, school_location=?, division=?, e_state=?, e_date=?, g_date=?, g_state=?, major=?, grade=?, total_grade=?, major_grade=?, classes=?, submajor=?, edu_memo=? where school_radio='2' and school_num=? and id=?;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, school_name);
		pstmt.setString(2, school_location);
		pstmt.setString(3, division);
		pstmt.setString(4, e_state);
		pstmt.setString(5, e_date);
		pstmt.setString(6, g_date);
		pstmt.setString(7, g_state);
		pstmt.setString(8, major);
		pstmt.setString(9, grade);
		pstmt.setString(10, total_grade);
		pstmt.setString(11, major_grade);
		pstmt.setString(12, classes);
		pstmt.setString(13, submajor);
		pstmt.setString(14, edu_memo);
		pstmt.setInt(15, school_num);
		pstmt.setString(16, session_name);
		pstmt.executeUpdate();
		
		pstmt.close();
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	
	%>

</body>
</html>