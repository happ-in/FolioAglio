<%@ page import="java.sql.*" %>
<%@ page import="file.DBUtil" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Connection conn = DBUtil.getConn();
	int school_num = Integer.parseInt(request.getParameter("school_num"));
	String session_name = (String)session.getAttribute("signedUser");
	
	try {
		String sql = "select school_name, school_location, division, e_date, g_date, g_state, major, grade, total_grade, edu_memo from education where school_num=? and id=?;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setInt(1, school_num);
		pstmt.setString(2, session_name);
		ResultSet rs = pstmt.executeQuery();
		
		
		
		if(rs.next()){
	%>
	<fieldset>
		<legend>���п�</legend>
		<table  id="graduated" style="display:block;">
				<tr>
					<td>�б���</td>
					<td><input type="text" id="graduated_name" name="graduated_name" value="<%=rs.getString(1)%>"></td>
				</tr>
				<tr>
					<td>�б� ������</td>
					<td><select id="graduated_location" name = "graduated_location">
							<option <%if( rs.getString(2).equals("������"))  { out.print("selected"); }%>>������</option>
							<option <%if( rs.getString(2).equals("��⵵"))  { out.print("selected"); }%>>��⵵</option>
							<option <%if( rs.getString(2).equals("��󳲵�"))  { out.print("selected"); }%>>��󳲵�</option>
							<option <%if( rs.getString(2).equals("���ϵ�"))  { out.print("selected"); }%>>���ϵ�</option>
							<option <%if( rs.getString(2).equals("���ֱ�����"))  { out.print("selected"); }%>ion>���ֱ�����</option>
							<option <%if( rs.getString(2).equals("�뱸������"))  { out.print("selected"); }%>>�뱸������</option>
							<option <%if( rs.getString(2).equals("����������"))  { out.print("selected"); }%>>����������</option>
							<option <%if( rs.getString(2).equals("�λ걤����"))  { out.print("selected"); }%>>�λ걤����</option>
							<option <%if( rs.getString(2).equals("����Ư����"))  { out.print("selected"); }%>>����Ư����</option>
							<option <%if( rs.getString(2).equals("����Ư����ġ��"))  { out.print("selected"); }%>>����Ư����ġ��</option>
							<option <%if( rs.getString(2).equals("��걤����"))  { out.print("selected"); }%>>��걤����</option>
							<option <%if( rs.getString(2).equals("��õ������"))  { out.print("selected"); }%>>��õ������</option>
							<option <%if( rs.getString(2).equals("���󳲵�"))  { out.print("selected"); }%>>���󳲵�</option>
							<option <%if( rs.getString(2).equals("����ϵ�"))  { out.print("selected"); }%>>����ϵ�</option>
							<option <%if( rs.getString(2).equals("����Ư����ġ�õ�"))  { out.print("selected"); }%>>����Ư����ġ�õ�</option>
							<option <%if( rs.getString(2).equals("��û����"))  { out.print("selected"); }%>>��û����</option>
							<option <%if( rs.getString(2).equals("��û�ϵ�"))  { out.print("selected"); }%>>��û�ϵ�</option>
					</select></td>
				</tr>
				<tr>
					<td>�迭</td>
					<td><select id="graduated_division" name="graduated_division">
							<option <%if( rs.getString(3).equals("�ι��迭"))  { out.print("selected"); }%>>�ι��迭</option>
							<option <%if( rs.getString(3).equals("��ȸ�迭"))  { out.print("selected"); }%>>��ȸ�迭</option>
							<option <%if( rs.getString(3).equals("��ü�ɰ迭"))  { out.print("selected"); }%>>��ü�ɰ迭</option>
							<option <%if( rs.getString(3).equals("�ڿ����а迭"))  { out.print("selected"); }%>>�ڿ����а迭</option>
							<option <%if( rs.getString(3).equals("���а迭"))  { out.print("selected"); }%>>���а迭</option>
							<option <%if( rs.getString(3).equals("����迭"))  { out.print("selected"); }%>>����迭</option>
							<option <%if( rs.getString(3).equals("���а迭"))  { out.print("selected"); }%>>���а迭</option>
							<option <%if( rs.getString(3).equals("��Ÿ"))  { out.print("selected"); }%>>��Ÿ</option>
					</select></td>
				</tr>
				<tr>
					<td>��������</td>
					<td><input type="text" id="graduated_e_date" name="graduated_e_date" placeholder="��¥�ֱ�" value="<%=rs.getString(4)%>" >
					<script>
						$(function(){
							$("#graduated_e_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>��������</td>
					<td><input type="text" id="graduated_g_date" name="graduated_g_date" placeholder="��¥�ֱ�" value="<%=rs.getString(5)%>" >
					<script>
						$(function(){
							$("#graduated_g_date").datepicker({dateFormat: "yy-mm-dd"});
						});
					</script></td>
				</tr>
				<tr>
					<td>��������</td>
					<td><select id="graduated_g_state" name = "graduated_g_state">
							<option <%if( rs.getString(6).equals("����"))  { out.print("selected"); }%>>����</option>
							<option <%if( rs.getString(6).equals("��������"))  { out.print("selected"); }%>>��������</option>
							<option <%if( rs.getString(6).equals("����"))  { out.print("selected"); }%>>����</option>
							<option <%if( rs.getString(6).equals("����"))  { out.print("selected"); }%>>����</option>
							<option <%if( rs.getString(6).equals("����"))  { out.print("selected"); }%>>����</option>
					</select></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" id="graduated_major" name="graduated_major" value="<%=rs.getString(7) %>"></td>
				</tr>
				<tr>
					<td>����</td>
					<td><input type="text" id="graduated_grade" name="graduated_grade" value="<%=rs.getString(8) %>"> / <select id="graduated_total_grade" name = "graduated_total_grade">
							<option <%if( rs.getString(9).equals("4.0"))  { out.print("selected"); }%>>4.0</option>
							<option <%if( rs.getString(9).equals("4.3"))  { out.print("selected"); }%>>4.3</option>
							<option <%if( rs.getString(9).equals("4.5"))  { out.print("selected"); }%>>4.5</option>
							<option <%if( rs.getString(9).equals("5.0"))  { out.print("selected"); }%>>5.0</option>
							<option <%if( rs.getString(9).equals("7.0"))  { out.print("selected"); }%>>7.0</option>
							<option <%if( rs.getString(9).equals("100"))  { out.print("selected"); }%>>100</option>
					</select></td>
				</tr>
				<tr>
					<td>�޸�</td>
					<td><textarea id="graduated_memo" name="graduated_memo" rows="3" cols="50"><%=rs.getString(10) %></textarea></td>
				</tr>
				<tr align = "right">
					<td colspan="2"><input type="button" id="confirm2" class="button_css"
						value="Ȯ��">
					</td>
				</tr>
			</table>
	</fieldset>
	<%
		}
		rs.close();
		pstmt.close();
		conn.close();
	} catch(SQLException e){
		System.out.println(e.toString());
	}
	%>
</body>
</html>