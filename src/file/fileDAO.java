package file;

import java.sql.*;

public class fileDAO {

	private Connection conn;

	// 생성자를 통해 db연결 해줌

	public fileDAO() {

		try {

			String dbURL = "jdbc:mysql://localhost:3306/file?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&characterEncoding=UTF-8";
			String dbID = "root";
			String dbPW = "dlsduqdl";

			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection(dbURL, dbID, dbPW);

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