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
	
	String awd_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String awd_org = new String(request.getParameter("org").getBytes("ISO-8859-1"), "UTF-8");
	String awd_result = new String(request.getParameter("result").getBytes("ISO-8859-1"), "UTF-8");
	String awd_attachment = new String(request.getParameter("attachment").getBytes("ISO-8859-1"), "UTF-8");
	String awd_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	
	String sql = "insert into award(awd_name, awd_org, awd_result, awd_attachment, awd_memo) values (?,?,?,?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, awd_name);
	pstmt.setString(2, awd_org);
	pstmt.setString(3, awd_result);
	pstmt.setString(4, awd_attachment);
	pstmt.setString(5, awd_memo);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>