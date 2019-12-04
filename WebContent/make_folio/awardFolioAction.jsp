<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" initial-scale ="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>수상내역 불러오기</title>
</head>
<body>

	<%
	int award_num = 0;
	String award_name = "";
	String award_org = "";
	String award_result = "";
	String award_attachment = "";
	String award_memo = "";
	if(request.getParameter("award_num")!=null){
		award_num = Integer.parseInt(request.getParameter("award_num"));
		
	Connection conn = DBUtil.getConn();
	String sql = "select awd_name, awd_org, awd_result, awd_attachment, awd_memo from award where award_num=7";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, award_num);
	ResultSet rs = pstmt.executeQuery();
	
	if(rs.next()){
		award_name = rs.getString(1);
		award_org = rs.getString(2);
		award_result = rs.getString(3);
		award_attachment = rs.getString(4);
		award_memo = rs.getString(5);
	}
	rs.close();
	conn.close();
	pstmt.close();
	}
	System.out.println(award_name);
	System.out.println(award_org);
	System.out.println(award_result);
	System.out.println(award_attachment);
	System.out.println(award_memo);
	%>
   
</body>
</html>