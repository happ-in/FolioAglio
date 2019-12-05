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
   String carrier_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
   Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;

   String sql = "insert into carrier(company_name, position, work, salary, s_period, e_period, detail, carrier_memo, id) values (?,?,?,?,?,?,?,?,?);";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   
   pstmt.setString(1, company_name);
   pstmt.setString(2, position);
   pstmt.setString(3, work);
   pstmt.setString(4, salary);
   pstmt.setString(5, s_period);
   pstmt.setString(6, e_period);
   pstmt.setString(7, detail);
   pstmt.setString(8, carrier_memo);
   pstmt.setString(9, session_name);
   pstmt.executeUpdate();
   
   DBUtil.close(pstmt);
   DBUtil.close(conn);
   %>
</body>
</html>