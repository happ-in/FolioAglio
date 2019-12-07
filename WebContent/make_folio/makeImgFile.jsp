<%@page import="javax.imageio.ImageIO"%>

<%@page import="java.awt.image.BufferedImage"%>

<%@page import="java.io.File"%>

<%@page import="file.MakeImgFile"%>

<%@ page import="file.DBUtil" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("utf-8");

	String imgUrl = request.getParameter("imgUrl");

	String directory = application.getRealPath("IMG");
 	
	File f = new File(directory);
    if(!f.isFile()){
  	  if(!f.isDirectory()){
  		  f.mkdir();
  	  }
    }
    
	String savename = "/test";
	Connection conn = DBUtil.getConn();
	
	
	if (session.getAttribute("signedUser") == null) {
        response.sendRedirect("../logout.jsp");
    }
	
	Object session_object=session.getAttribute("signedUser");
	String session_name=(String)session_object;
	
	String sql = "insert into folio(title, id) values (?,?);";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, "IMG"+savename);
	pstmt.setString(2, session_name);

	pstmt.executeUpdate();
	
	DBUtil.close(pstmt);
	DBUtil.close(conn);
	
	new MakeImgFile().makePngFile(imgUrl, f, savename);
%>