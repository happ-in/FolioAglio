<%@page import="javax.imageio.ImageIO"%>

<%@page import="java.awt.image.BufferedImage"%>

<%@page import="java.io.File"%>

<%@page import="file.MakeImgFile"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("utf-8");

	String imgUrl = request.getParameter("imgUrl");


	File currentDir = new File("");
	File saveFilePath =currentDir.getAbsoluteFile();
	String savename = "/test";
	
	new MakeImgFile().makePngFile(imgUrl, saveFilePath, savename);
%>