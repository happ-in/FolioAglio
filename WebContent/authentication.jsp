<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    Connection conn = DBUtil.getConn();

    String sql = "select pwd from personal_information where id = ?;";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1,id);
    ResultSet rs = pstmt.executeQuery();
    
    String redirectUrl = "login.jsp"; // 인증 실패시 재요청 될 url 
    if(rs.next()){
    	String dbPW = rs.getString("pwd");
    	
    	if(dbPW.equals(pw)){
    		session.setAttribute("signedUser", id); // 인증되었음 세션에 남김
            redirectUrl = "/FolioAglio/main/main.jsp"; // 인증 성공 시 재요청 url
    	}
    	else{

    	}
    }
    rs.close();
    conn.close();
    pstmt.close();

    response.sendRedirect(redirectUrl);
%>