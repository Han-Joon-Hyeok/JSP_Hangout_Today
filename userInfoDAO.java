package kr.ac.mju.teamproject.dao;

import java.sql.*;
import kr.ac.mju.teamproject.dto.userInfoDTO;

public class userInfoDAO {

	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;

	private static userInfoDAO dao = new userInfoDAO();

	public static userInfoDAO getInstance() {
		return dao;
	}
	
	public Connection getConn() throws ClassNotFoundException, SQLException {

		String DB_URL = "jdbc:mysql://localhost:3306/teamproject?useSSL=false";
		String user = "root";
		 String pwd = "1234";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}

	public void add(userInfoDTO dto) throws ClassNotFoundException, SQLException {

		conn = getConn();
		String sqlAdd = "insert into user_info values (?,?,?,?,?,?,?)";

		
		psmt = conn.prepareStatement(sqlAdd);

		psmt.setString(1, dto.getUserID());
		psmt.setString(2, dto.getUserPWD());
		psmt.setString(3, dto.getUserNAME());
		psmt.setString(4, dto.getSEX());
		psmt.setInt(5, dto.getAGE());
		psmt.setString(6, dto.getCATEGORY());
		psmt.setString(7, dto.getUserAddr());
		psmt.executeUpdate();
		psmt.close();

		conn.close();

	}

	public boolean confrimID(String userID) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		String sql = "select user_id from user_info where user_id = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, userID);
		rs = psmt.executeQuery();
		if( rs.next()) {
			result = true;
		}
		rs.close();
		psmt.close();
		conn.close();
		
		return result;
	
	}
	
	public boolean login(String userID, String userPWD) throws ClassNotFoundException, SQLException {
		
		boolean result = false;
		String sql = "select * from user_info where user_id = ? and pwd = ?";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, userID);
		psmt.setString(2, userPWD);
		rs= psmt.executeQuery();
		if(rs.next()) {
			result = true;
		}
		rs.close();
		psmt.close();
		conn.close();
	
		return result;
	}
	
	

}
