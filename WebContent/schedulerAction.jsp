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
	
	String sch_name = request.getParameter("name");
	String sch_date = request.getParameter("date");
	String sch_time = request.getParameter("time");
	String sch_memo = request.getParameter("memo");
	
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