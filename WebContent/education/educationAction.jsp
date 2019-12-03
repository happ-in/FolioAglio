<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	Connection conn = DBUtil.getConn();
	
	String radio = "";
	String school_radio = new String(request.getParameter("radio").getBytes("ISO-8859-1"), "UTF-8");
	String school_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String school_location = new String(request.getParameter("location").getBytes("ISO-8859-1"), "UTF-8");
	String division = new String(request.getParameter("division").getBytes("ISO-8859-1"), "UTF-8");
	String e_state = new String(request.getParameter("e_state").getBytes("ISO-8859-1"), "UTF-8");
	String e_date = new String(request.getParameter("e_date").getBytes("ISO-8859-1"), "UTF-8");
	String g_date = new String(request.getParameter("g_date").getBytes("ISO-8859-1"), "UTF-8");
	String g_state = new String(request.getParameter("g_state").getBytes("ISO-8859-1"), "UTF-8");
	String major = new String(request.getParameter("major").getBytes("ISO-8859-1"), "UTF-8");
	String grade = new String(request.getParameter("grade").getBytes("ISO-8859-1"), "UTF-8");
	String total_grade = new String(request.getParameter("total_grade").getBytes("ISO-8859-1"), "UTF-8");
	String major_grade = new String(request.getParameter("major_grade").getBytes("ISO-8859-1"), "UTF-8");
	String classes = new String(request.getParameter("classes").getBytes("ISO-8859-1"), "UTF-8");
	String submajor = new String(request.getParameter("transfer").getBytes("ISO-8859-1"), "UTF-8");
	String edu_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	
	String sql = "insert into education(school_radio, school_name, school_location, division,e_state,e_date,g_date,g_state,major,grade,total_grade,major_grade,classes,submajor,edu_memo) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	if (school_radio.equals("고등학교")) { 
		radio = "1";
		
	}
	else if (school_radio.equals("대학교")) { 
		radio = "2"; 
	}
	else { 
		radio = "3"; 
	}
	
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
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>