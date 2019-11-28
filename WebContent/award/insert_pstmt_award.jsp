<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="file.DBUtil" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수상</title>
</head>
<body>
<%
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://10.10.5.15:3306/op_242b1bc8_a6d7_417e_8fcd_77b2d623d514?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
	String id = "b74ecdd0458131f4";
	String pwd = "c32ca248cd0ba4a7";	

    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String org = request.getParameter("org");
    String result = request.getParameter("result");
    String attachment = request.getParameter("attachment");
    String memo = request.getParameter("memo");
   
    Class.forName(driverName);
    Connection conn = DriverManager.getConnection(url,id,pwd);

   
    //PreparedStatement객체를 통한 쿼리 작업
    String preSql ="insert award values(?,?,?,?,?)";
    PreparedStatement  pstmt = conn.prepareStatement(preSql);
    pstmt.setString(1, name);
    pstmt.setString(2, org);
    pstmt.setString(3, result);
    pstmt.setString(4, attachment);
    pstmt.setString(5, memo);
    pstmt.executeUpdate();
     pstmt.close();
    conn.close();
%>
</body>
</html>