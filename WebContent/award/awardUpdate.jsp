<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Awards Update</title>
</head>
<body>

	<%
	
	
	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
	
	if (session.getAttribute("signedUser") == null) {
        response.sendRedirect("../logout.jsp");
    }
	
	try{
		Connection conn = DBUtil.getConn();
		String awd_name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
		String awd_org = new String(request.getParameter("org").getBytes("ISO-8859-1"), "UTF-8");
		String awd_result = new String(request.getParameter("result").getBytes("ISO-8859-1"), "UTF-8");
		String awd_attachment = new String(request.getParameter("attachment").getBytes("ISO-8859-1"), "UTF-8");
		String awd_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
		int awd_num = Integer.parseInt(request.getParameter("awd_num"));
		
		String sql = "update award set awd_name=?, awd_org=?, awd_result=?, awd_attachment=?, awd_memo=? where id=? and award_num=?;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, awd_name);
		pstmt.setString(2, awd_org);
		pstmt.setString(3, awd_result);
		pstmt.setString(4, awd_attachment);
		pstmt.setString(5, awd_memo);
		pstmt.setString(6, session_name);
		pstmt.setInt(7, awd_num);
		pstmt.executeUpdate();
		
		DBUtil.close(pstmt);
		DBUtil.close(conn);
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	%>
	
</body>
</html>