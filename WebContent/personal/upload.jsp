<%@ page import="file.fileDAO" %>
<%@ page import="java.io.File" %>
<%@page import="java.util.Enumeration"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
   <%
      //String directory = "C:\\Users\\najio\\git\\FolioAglio\\Img";
   	  ServletContext context = getServletContext(); //어플리케이션에 대한 정보를 ServletContext 객체가 갖게 됨. 
   	  String directory = context.getRealPath("Upload"); //절대경로를 가져옴
      int maxSize = 1024 * 1024 * 100;
      String encoding = "UTF-8";
      File f = new File(directory);
      if(!f.isFile()){
    	  if(!f.isDirectory()){
    		  f.mkdir();
    	  }
      }
      MultipartRequest multipartRequest
      = new MultipartRequest(request, directory, maxSize, encoding,
            new DefaultFileRenamePolicy());
      
      Enumeration files = multipartRequest.getFileNames();
      String file1 = (String)files.nextElement();
      
      String fileName = multipartRequest.getOriginalFileName("filename");
      String fileRealName = multipartRequest.getFilesystemName("filename");
      
      fileName=directory+"\\"+fileName;
      fileRealName=directory+"\\"+fileRealName;
      
      Object session_object=session.getAttribute("signedUser");
      String session_name=(String)session_object;
      
      new fileDAO().upload(fileName, fileRealName,session_name);
      out.write("파일명 : "+fileName+"<br>");
      out.write("실제 파일명 : "+fileRealName+"<br>");
   %>
   
</body>
</html>