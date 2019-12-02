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
	
	String company_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String position = new String(request.getParameter("position").getBytes("ISO-8859-1"), "UTF-8");
	String work = new String(request.getParameter("work").getBytes("ISO-8859-1"), "UTF-8");
	String salary = new String(request.getParameter("salary").getBytes("ISO-8859-1"), "UTF-8");
	String s_period = new String(request.getParameter("s_period").getBytes("ISO-8859-1"), "UTF-8");
	String e_period = new String(request.getParameter("e_period").getBytes("ISO-8859-1"), "UTF-8");
	String detail = new String(request.getParameter("detail").getBytes("ISO-8859-1"), "UTF-8");
	String picture = new String(request.getParameter("picture").getBytes("ISO-8859-1"), "UTF-8");
	String carrier_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	int carrier_num = Integer.parseInt(request.getParameter("carr_num"));
	
	String sql = "update carrier set company_name=?, position=?, work=?, salary=?, s_period=?, e_period=?, detail=?, picture=?, carrier_memo=? where carrier_num=? ;";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, company_name);
	pstmt.setString(2, position);
	pstmt.setString(3, work);
	pstmt.setString(4, salary);
	pstmt.setString(5, s_period);
	pstmt.setString(6, e_period);
	pstmt.setString(7, detail);
	pstmt.setString(8, picture);
	pstmt.setString(9, carrier_memo);
	pstmt.setInt(10, carrier_num);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>