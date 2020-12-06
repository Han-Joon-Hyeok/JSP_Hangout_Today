package kr.ac.mju.hangout.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class hangoutDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	
	private hangoutDAO dao = new hangoutDAO();
	
	public hangoutDAO getInstance() {
		return dao;
	}
	
	public void close() throws SQLException {
		rs.close();
		psmt.close();
		conn.close();
	}
	
	public Connection getConn() throws ClassNotFoundException, SQLException {
		String DB_URL = "jdbc:mysql://localhost:3306/teamproject?useSSL=false";
		String user = "root";
		 String pwd = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}
	
}
