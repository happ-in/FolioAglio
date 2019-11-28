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
	
	String country_name = new String(request.getParameter("country").getBytes("ISO-8859-1"), "UTF-8");
	String reason = new String(request.getParameter("reason").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_language = new String(request.getParameter("language").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_s_date = new String(request.getParameter("s_period").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_g_date = new String(request.getParameter("e_period").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_detail = new String(request.getParameter("detail").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_image = new String(request.getParameter("picture").getBytes("ISO-8859-1"), "UTF-8");
	String abroad_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	
	String sql = "insert into abroad(country_name, reason, abroad_language, abroad_s_date, abroad_g_date, abroad_detail, abroad_image, abroad_memo) values (?,?,?,?,?,?,?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, country_name);
	pstmt.setString(2, reason);
	pstmt.setString(3, abroad_language);
	pstmt.setString(4, abroad_s_date);
	pstmt.setString(5, abroad_g_date);
	pstmt.setString(6, abroad_detail);
	pstmt.setString(7, abroad_image);
	pstmt.setString(8, abroad_memo);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>