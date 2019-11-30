<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<%
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
    String username = new String(request.getParameter("username").getBytes("ISO-8859-1"), "UTF-8");
    String email = request.getParameter("email");
    String call_num = request.getParameter("call_num");
    String birth = request.getParameter("birthyy") + "-" +request.getParameter("birthmm") +"-"+ request.getParameter("birthdd");
    String sex = new String(request.getParameter("sex").getBytes("ISO-8859-1"), "UTF-8");
    Connection conn = DBUtil.getConn();

    String sql = "insert into personal_information (birth,name,sex,email,call_num,id,pwd) values(?,?,?,?,?,?,?);";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setString(1,birth);
    pstmt.setString(2,username);
    pstmt.setString(3,sex);
    pstmt.setString(4,email);
    pstmt.setString(5,call_num);
    pstmt.setString(6,id);
    pstmt.setString(7,pwd);
    pstmt.executeUpdate();

    conn.close();
    pstmt.close();
    String redirectUrl = "login.jsp";
    response.sendRedirect(redirectUrl);
%>