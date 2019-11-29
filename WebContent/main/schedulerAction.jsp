<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scheduler</title>
</head>
<body>

	<%
	Connection conn = DBUtil.getConn();
	
	String sch_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String sch_date = new String(request.getParameter("date").getBytes("ISO-8859-1"), "UTF-8");
	String sch_time = new String(request.getParameter("time").getBytes("ISO-8859-1"), "UTF-8");
	String sch_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	
	String sql = "insert into scheduler(sch_name, sch_date, sch_time, sch_memo) values (?,?,?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, sch_name);
	pstmt.setString(2, sch_date);
	pstmt.setString(3, sch_time);
	pstmt.setString(4, sch_memo);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>