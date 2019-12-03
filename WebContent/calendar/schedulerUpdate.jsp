<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Scheduler</title>
</head>
<body>

	<%
	Connection conn = DBUtil.getConn();
	
	String sch_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String sch_date = new String(request.getParameter("date").getBytes("ISO-8859-1"), "UTF-8");
	String sch_time = new String(request.getParameter("time").getBytes("ISO-8859-1"), "UTF-8");
	String sch_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	int sch_num = Integer.parseInt(request.getParameter("sch_num"));
	
	String sql = "update scheduler set sch_name=?, sch_date=?, sch_time=?, sch_memo=? where sch_num=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, sch_name);
	pstmt.setString(2, sch_date);
	pstmt.setString(3, sch_time);
	pstmt.setString(4, sch_memo);
	pstmt.setInt(5, sch_num);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>