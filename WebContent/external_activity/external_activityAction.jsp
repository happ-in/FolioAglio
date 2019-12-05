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
   
   String activity_radio = new String(request.getParameter("radio").getBytes("ISO-8859-1"), "UTF-8");
   String group_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
   String activity_s_date = new String(request.getParameter("s_period").getBytes("ISO-8859-1"), "UTF-8");
   String activity_e_date = new String(request.getParameter("e_period").getBytes("ISO-8859-1"), "UTF-8");
   String activity_detail = new String(request.getParameter("detail").getBytes("ISO-8859-1"), "UTF-8");
   String activity_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
   Object session_object = session.getAttribute("signedUser");
   String session_name = (String)session_object;
   
   String sql = "insert into external_activities(activity_radio, group_name, activity_s_date, activity_e_date, activity_detail,activity_memo, id) values (?,?,?,?,?,?,?);";
   PreparedStatement pstmt = conn.prepareStatement(sql);
   
   pstmt.setString(1, activity_radio);
   pstmt.setString(2, group_name);
   pstmt.setString(3, activity_s_date);
   pstmt.setString(4, activity_e_date);
   pstmt.setString(5, activity_detail);
   pstmt.setString(6, activity_memo);
   pstmt.setString(7, session_name);
   pstmt.executeUpdate();
   
   DBUtil.close(pstmt);
   DBUtil.close(conn);
   %>
   
</body>
</html>