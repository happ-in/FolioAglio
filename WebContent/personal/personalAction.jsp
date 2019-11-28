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
	
	String country = new String(request.getParameter("country").getBytes("ISO-8859-1"), "UTF-8");
	String birth = new String(request.getParameter("birth").getBytes("ISO-8859-1"), "UTF-8");
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "UTF-8");
	String en_name = new String(request.getParameter("en_name").getBytes("ISO-8859-1"), "UTF-8");
	String sex = new String(request.getParameter("gender").getBytes("ISO-8859-1"), "UTF-8");
	String email = new String(request.getParameter("email").getBytes("ISO-8859-1"), "UTF-8");
	String call_num = new String(request.getParameter("number").getBytes("ISO-8859-1"), "UTF-8");
	String address = new String(request.getParameter("address").getBytes("ISO-8859-1"), "UTF-8");
	String git_address = new String(request.getParameter("git_address").getBytes("ISO-8859-1"), "UTF-8");
	String id_image = new String(request.getParameter("picture").getBytes("ISO-8859-1"), "UTF-8");
	String personal_memo = new String(request.getParameter("memo").getBytes("ISO-8859-1"), "UTF-8");
	String id = new String(request.getParameter("id").getBytes("ISO-8859-1"), "UTF-8");
	String pwd = new String(request.getParameter("pwd").getBytes("ISO-8859-1"), "UTF-8");
	
	String sql = "insert into personal_information(country, birth, name, en_name,sex,email,call_num,address,git_address,id_image,personal_memo,id,pwd) values (?,?,?,?,?,?,?,?,?,?,?,?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, country);
	pstmt.setString(2, birth);
	pstmt.setString(3, name);
	pstmt.setString(4, en_name);
	pstmt.setString(5, sex);
	pstmt.setString(6, email);
	pstmt.setString(7, call_num);
	pstmt.setString(8, address);
	pstmt.setString(9, git_address);
	pstmt.setString(10, id_image);
	pstmt.setString(11, personal_memo);
	pstmt.setString(12, id);
	pstmt.setString(13, pwd);
	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>