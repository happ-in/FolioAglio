<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String userID = request.getParameter("userID");
	String userName = request.getParameter("userName");
	String userEmail = request.getParameter("userEmail");
	
	Connection conn = DBUtil.getConn();
	
	try {
		String sql = "select id, name, email from personal_information";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		if(rs.next()){
			if (rs.getString(1).equals(userID) && rs.getString(2).equals(userName) && rs.getString(3).equals(userEmail)){
				response.sendRedirect("sssssssssss.jsp?id=?"+userID);
			}
			else{
				out.write("alert('존재하지 않는 ID이거나 이름, 이메일이 틀렸습니다.')");
			}
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	
	%>
</body>
</html>