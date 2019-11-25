<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<%
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");
	String repw = request.getParameter("RePW");
	
	if(id!="" && pw!="" && pw==repw ){
		Connection conn = DBUtil.getConn();
		String sql = "insert into login values(?,?);";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, id);
		pstmt.setString(2, pw);
		pstmt.executeUpdate();
		
		DBUtil.close(pstmt);
		DBUtil.close(conn);	
	}
%>