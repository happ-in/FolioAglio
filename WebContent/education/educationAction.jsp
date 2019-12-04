<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
	Connection conn = DBUtil.getConn();
	
	try{
		String radio = "";
		String school_radio = new String(request.getParameter("radio").getBytes("ISO-8859-1"), "UTF-8");
		Object session_object = session.getAttribute("signedUser");
		String session_name = (String)session_object;
		
		if (school_radio.equals("high")) { 
			radio = "1";
			String school_name = new String(request.getParameter("high_name").getBytes("ISO-8859-1"), "UTF-8");
			String school_location = new String(request.getParameter("high_location").getBytes("ISO-8859-1"), "UTF-8");
			String division = new String(request.getParameter("high_division").getBytes("ISO-8859-1"), "UTF-8");
			String e_date = new String(request.getParameter("high_e_date").getBytes("ISO-8859-1"), "UTF-8");
			String g_date = new String(request.getParameter("high_g_date").getBytes("ISO-8859-1"), "UTF-8");
			String g_state = new String(request.getParameter("high_g_state").getBytes("ISO-8859-1"), "UTF-8");
			String edu_memo = new String(request.getParameter("high_memo").getBytes("ISO-8859-1"), "UTF-8");
			
			String sql = "insert into education(school_radio, school_name, school_location, division, e_date, g_date, g_state, edu_memo, id) values (?,?,?,?,?,?,?,?,?);";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, radio);
			pstmt.setString(2, school_name);
			pstmt.setString(3, school_location);
			pstmt.setString(4, division);
			pstmt.setString(5, e_date);
			pstmt.setString(6, g_date);
			pstmt.setString(7, g_state);
			pstmt.setString(8, edu_memo);
			pstmt.setString(9, session_name);
			pstmt.executeUpdate();
			
			pstmt.close();
		}
		else if (school_radio.equals("collage")) { 
			radio = "2";
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
			
			String sql = "insert into education(school_radio, school_name, school_location, division, e_state, e_date, g_date, g_state, major, grade, total_grade, major_grade, classes, submajor, edu_memo, id) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, radio);
			pstmt.setString(2, school_name);
			pstmt.setString(3, school_location);
			pstmt.setString(4, division);
			pstmt.setString(5, e_state);
			pstmt.setString(6, e_date);
			pstmt.setString(7, g_date);
			pstmt.setString(8, g_state);
			pstmt.setString(9, major);
			pstmt.setString(10, grade);
			pstmt.setString(11, total_grade);
			pstmt.setString(12, major_grade);
			pstmt.setString(13, classes);
			pstmt.setString(14, submajor);
			pstmt.setString(15, edu_memo);
			pstmt.setString(16, session_name);
			pstmt.executeUpdate();
			
			pstmt.close();
		}
		else { 
			radio = "3";
			String school_name = new String(request.getParameter("graduated_name").getBytes("ISO-8859-1"), "UTF-8");
			String school_location = new String(request.getParameter("graduated_location").getBytes("ISO-8859-1"), "UTF-8");
			String division = new String(request.getParameter("graduated_division").getBytes("ISO-8859-1"), "UTF-8");
			String e_date = new String(request.getParameter("graduated_e_date").getBytes("ISO-8859-1"), "UTF-8");
			String g_date = new String(request.getParameter("graduated_g_date").getBytes("ISO-8859-1"), "UTF-8");
			String g_state = new String(request.getParameter("graduated_g_state").getBytes("ISO-8859-1"), "UTF-8");
			String major = new String(request.getParameter("graduated_major").getBytes("ISO-8859-1"), "UTF-8");
			String grade = new String(request.getParameter("graduated_grade").getBytes("ISO-8859-1"), "UTF-8");
			String total_grade = new String(request.getParameter("graduated_total_grade").getBytes("ISO-8859-1"), "UTF-8");
			String edu_memo = new String(request.getParameter("graduated_memo").getBytes("ISO-8859-1"), "UTF-8");

			String sql = "insert into education(school_radio, school_name, school_location, division, e_date, g_date, g_state, major, grade, total_grade, edu_memo, id) values (?,?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, radio);
			pstmt.setString(2, school_name);
			pstmt.setString(3, school_location);
			pstmt.setString(4, division);
			pstmt.setString(5, e_date);
			pstmt.setString(6, g_date);
			pstmt.setString(7, g_state);
			pstmt.setString(8, major);
			pstmt.setString(9, grade);
			pstmt.setString(10, total_grade);
			pstmt.setString(11, edu_memo);
			pstmt.setString(12, session_name);
			pstmt.executeUpdate();

			pstmt.close();	
		}
		conn.close();
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	
	%>
	
</body>
</html>