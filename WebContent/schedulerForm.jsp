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
<title>일정 추가</title>
<script>
</script>
</head>
<body>
	<%
	// String sch_name = new String(request.getParameter("sch_memo").getBytes("ISO-8859-1"), "UTF-8");
	
	System.out.println("ok");
	%>
	 <form action="schedulerAction.jsp" method="post" id = "form1">
      <fieldset>
         <legend>일정 추가</legend>
         <table>
            <tr>
               <td>일정명</td>
               <td><input type="text" id="name" name="name"></td>
            </tr>
            <tr>
               <td>날짜</td>
               <td><input type="text" id="date" name="date" placeholder="날짜넣기">
               <script>
                  $(function(){
                     $("#date").datepicker({ dateFormat:'yy-mm-dd'});
                  });
               </script></td>
            </tr>
            <tr>
               <td>시간</td>
               <td><input type="text" id="time" name="time" value="00:00" onKeyup="inputTimeColon(this);"></td>
            </tr>
            <tr>
               <td>내용</td>
               <td><textarea name="memo" rows="10" cols="50"></textarea></td>
            </tr>
            <tr>
               <td colspan="2"><input type="button" id="confirm"
                  value="확인">
               </td>
            </tr>
         </table>
      </fieldset>
   </form>
   
</body>
   
</body>
</html>