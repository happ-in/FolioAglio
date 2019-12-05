package file;

import java.sql.*;

public class fileDAO {

	private Connection conn;

	// 생성자를 통해 db연결 해줌

	public fileDAO() {

		try {

			String url = "jdbc:mysql://10.10.5.15:3306/op_242b1bc8_a6d7_417e_8fcd_77b2d623d514?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
			String id = "65f26b2bc34cfcc5";
			String pw = "c32ca248cd0ba4a7";
			
//			String url = "jdbc:mysql://localhost:3306/file?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8";
//			String id = "root";
//			String pw = "system";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, id, pw);

		} catch(Exception e) {

			e.printStackTrace();

		}

	}

	

	public int upload(String fileName, String fileRealName, String session_name) {

		String SQL = "update personal_information set id_image=? where id=?";

		try {

			PreparedStatement pstmt = conn.prepareStatement(SQL);

			pstmt.setString(1,  fileRealName);

			//pstmt.setString(2,  fileRealName);
			
			pstmt.setString(2,  session_name);

			return pstmt.executeUpdate();

		} catch(Exception e) {

			e.printStackTrace();

		}

		return -1;

	}

}