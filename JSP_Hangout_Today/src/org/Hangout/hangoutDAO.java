package org.Hangout;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class hangoutDAO {
	
	private Connection conn = null;
	private PreparedStatement psmt = null;
	private ResultSet rs = null;
	
	private String sql = "";
	private Date date = new Date();
	private SimpleDateFormat today = new SimpleDateFormat("yyyy-MM-dd");
	String getToday = today.format(date);
	
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
		String pwd = "";

		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection(DB_URL, user, pwd);

		return conn;
	}
	
	public void addHangout(hangoutDTO dto) throws ClassNotFoundException, SQLException {
		
		sql = "insert into hangout(uid, title, category, txt, personnel,hdate, htime, moim_addr) values (?,?,?,?,?,?,?,?)";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1,dto.getUid());
		psmt.setString(2,dto.getTitle());
		psmt.setString(3,dto.getCategory());
		psmt.setString(4,dto.getTxt());
		psmt.setInt(5,dto.getPersonnel());
		psmt.setString(6,dto.getHdate());
		psmt.setString(7,dto.getHtime());
		psmt.setString(8, dto.getAddr());
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
	}
	
	public ResultSet showHangout() throws ClassNotFoundException, SQLException {
		
		sql = "select title, txt, hdate, htime, personnel, name, moim_addr from hangout, hangout_user where hangout.uid=hangout_user.uid order by hdate asc";
		
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		return rs;
		
	}
	
	public ResultSet showThumbnail() throws ClassNotFoundException, SQLException {
		
		
		sql = "select title, txt, htime from hangout where hdate =  ? order by htime asc";
		conn = getConn();
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, getToday);
		rs = psmt.executeQuery();
		
		
		return rs;
	}
	
}

