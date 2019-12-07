<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Awards Insert</title>
</head>
<body>

	<%
	Connection conn = DBUtil.getConn();
	
	
	if (session.getAttribute("signedUser") == null) {
        response.sendRedirect("../logout.jsp");
    }
	
	String title = URLDecoder.decode(request.getParameter("imgUrl"), "UTF-8");

	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
	
	String sql = "insert into folio(title, id) values (?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, title);
	pstmt.setString(2, session_name);

	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	%>
	
</body>
</html>