package org.Hangout;

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
	
	private static hangoutDAO dao = new hangoutDAO();
	
	public static hangoutDAO getInstance() {
		return dao;
	}
	
	public void close() throws SQLException {
		rs.close();
		psmt.close();
		conn.close();
	}
	
	public Connection getConn() throws ClassNotFoundException, SQLException {
		String DB_URL = "jdbc:mysql://localhost:3306/mydb?useSSL=false";
		String user = "root";
		String pwd = "gofhdsla1@";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}
	
	public void addHangout(hangoutDTO dto) throws ClassNotFoundException, SQLException {
		
		sql = "insert into hangout(uid, title, category, txt, personnel,hdate, htime) values (?,?,?,?,?,?,?)";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,dto.getUid());
		psmt.setString(2,dto.getTitle());
		psmt.setString(3,dto.getCategory());
		psmt.setString(4,dto.getTxt());
		psmt.setInt(5,dto.getPersonnel());
		psmt.setString(6,dto.getHdate());
		psmt.setString(7,dto.getHtime());
		psmt.executeUpdate();
		
		psmt.close();
		psmt.close();
		
	}
	
	public ResultSet showHangout() throws ClassNotFoundException, SQLException {
		
		sql = "select * from hangout";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		return rs;
		
	}
	
}

